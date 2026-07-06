'use client';

import { useEffect, useMemo, useRef, useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { CalendarDays, Search, Users, ClipboardList, Clock, X, History, UserRoundCheck, CloudRain, Pencil, ChevronLeft, ChevronRight, Plus, Trash2, Image as ImageIcon, BarChart3, Wand2 } from 'lucide-react';
import { EVENTS, STATUSES, TYPE_COLORS, PHOTOGRAPHERS, ASSISTANTS, ADMINS, SCHOOLS } from '../lib/scheduleData';
import AuthStatus from './AuthStatus';
import { createClient, hasSupabaseEnv } from '../lib/supabase/client';
import { SCHEDULER_VERSION } from '../lib/schedulerVersion';

const tabs = ['Overview', 'Calendar View', 'Mobile View', 'Carrie View', 'School List', 'Team Members', 'Admin'];
const WEEKLY_ROLLOUT_CAPACITY = 21;

const USER_PERMISSION_ROLES = ['Admin', 'Photographer', 'Assistant'];
const USER_PERMISSION_ROLE_VALUES = {
  'Admin': 'admin',
  'Photographer': 'photographer',
  'Assistant': 'assistant'
};
const USER_PERMISSION_ROLE_LABELS = {
  admin: 'Admin',
  photographer: 'Photographer',
  assistant: 'Assistant',
  scheduler: 'Photographer',
  viewer_photographer: 'Photographer',
  viewer: 'Assistant'
};



function normalizePermissionRole(role) {
  const clean = String(role || '').trim().toLowerCase();
  if (clean === 'admin') return 'admin';
  if (clean === 'assistant' || clean === 'viewer' || clean === 'view_only') return 'assistant';
  return 'photographer';
}

function fallbackPermissionRole(email) {
  const displayName = displayNameFromEmail(email || '');
  return ADMINS.includes(displayName) ? 'admin' : 'photographer';
}

const PHOTOGRAPHER_ALIASES = {
  steph: 'Stephanie',
  stephanie: 'Stephanie'
};

function canonicalPhotographerName(name = '') {
  const trimmed = String(name || '').trim();
  if (!trimmed) return '';
  return PHOTOGRAPHER_ALIASES[trimmed.toLowerCase()] || trimmed;
}

function uniqueCanonicalPhotographers(names = []) {
  return Array.from(new Set((names || []).map(canonicalPhotographerName).filter(Boolean)));
}

function explicitCurrentPhotographerAssignments(names = [], allowedNames = PHOTOGRAPHERS) {
  const allowed = new Set((allowedNames || []).map(name => String(name || '').trim()).filter(Boolean));
  const rawNames = Array.isArray(names) ? names : [];
  return Array.from(new Set(rawNames
    .map(name => String(name || '').trim())
    .filter(name => name && allowed.has(name))));
}


function Pill({ children, className = '' }) {
  return <span className={`inline-flex items-center rounded-full border px-2.5 py-1 text-xs font-medium ${className}`}>{children}</span>;
}

function displayNameFromEmail(email = '') {
  const raw = String(email || '').trim();
  const local = raw.split('@')[0] || 'User';
  const known = {
    matt: 'Matt',
    matthew: 'Matt',
    carrie: 'Carrie',
    steph: 'Stephanie',
    stephanie: 'Stephanie',
    molly: 'Molly',
    beth: 'Beth',
    andrew: 'Andrew',
    erin: 'Erin'
  };
  const normalized = local.toLowerCase().replace(/[^a-z0-9]+/g, '');
  if (known[normalized]) return known[normalized];
  return local
    .replace(/[._-]+/g, ' ')
    .split(' ')
    .filter(Boolean)
    .map(part => part.charAt(0).toUpperCase() + part.slice(1).toLowerCase())
    .join(' ') || 'User';
}


function getEventAddedMeta(event = {}) {
  const history = String(event.history || '');
  const match = history.match(/\[added_by_meta name="([^"]*)" email="([^"]*)" at="([^"]*)"\]/);
  if (match) {
    const [, rawName, rawEmail, rawAt] = match;
    const email = rawEmail || '';
    const name = rawName || displayNameFromEmail(email || '');
    return {
      name: name || 'Before We Began Tracking',
      email,
      addedAt: rawAt || event.createdAt || '',
      source: 'manual'
    };
  }

  // If a brand-new Scheduler-created event was saved before added_by_meta existed
  // but has a same-moment edit marker, use that marker for the creator display.
  // This fixes recent manual additions without making old later edits look like authors.
  const edited = getEventLastEditedMeta(event);
  const sourceText = String(event.source || '').toLowerCase();
  const createdEditedMinutes = minutesBetweenDates(event.createdAt, edited?.editedAt);
  if (edited?.name && !sourceText.includes('import') && event.createdAt && createdEditedMinutes <= 10) {
    return { name: edited.name, email: edited.email || '', addedAt: event.createdAt || edited.editedAt || '', source: 'manual-inferred' };
  }

  // Do not otherwise infer the creator from the editor history. Older events may only have
  // last-edited metadata, and using that as Created By makes the latest editor
  // look like the original author. New Scheduler-created events receive an
  // explicit added_by_meta line when they are first saved.

  if (event.source === 'google_calendar_import') {
    return { name: 'Google Calendar Import', email: '', addedAt: event.createdAt || '', source: 'import' };
  }
  if (event.source && String(event.source).includes('import')) {
    return { name: 'Google Calendar Import', email: '', addedAt: event.createdAt || '', source: 'import' };
  }
  return { name: 'Before We Began Tracking', email: '', addedAt: event.createdAt || '', source: 'legacy' };
}

function makeEventAddedHistoryLine(authEmail = '') {
  const email = String(authEmail || '').trim();
  const name = displayNameFromEmail(email || 'User');
  const at = new Date().toISOString();
  return `[added_by_meta name="${name.replace(/"/g, "'")}" email="${email.replace(/"/g, '')}" at="${at}"]`;
}

function makeEventEditedHistoryLine(authEmail = '') {
  const email = String(authEmail || '').trim();
  const name = displayNameFromEmail(email || 'User');
  const at = new Date().toISOString();
  return `[last_edited_meta name="${name.replace(/"/g, "'")}" email="${email.replace(/"/g, '')}" at="${at}"]`;
}

function getEventLastEditedMeta(event = {}) {
  const history = String(event.history || '');
  const matches = [...history.matchAll(/\[last_edited_meta name="([^"]*)" email="([^"]*)" at="([^"]*)"\]/g)];
  if (matches.length) {
    const match = matches[matches.length - 1];
    const [, rawName, rawEmail, rawAt] = match;
    const email = rawEmail || '';
    const name = rawName || displayNameFromEmail(email || '');
    return { name: name || displayNameFromEmail(email || '') || 'Unknown Editor', email, editedAt: rawAt || event.updatedAt || '', source: 'manual' };
  }
  // Do not infer Last Edited from updatedAt alone. Creation can set updatedAt, and older/imported
  // rows do not reliably know who edited them. Only show Last Edited after the app records
  // an explicit last_edited_meta line.
  return null;
}

function formatEventMetaDateTime(value) {
  if (!value) return '';
  const date = new Date(value);
  if (Number.isNaN(date.getTime())) return String(value);
  const datePart = `${date.getMonth() + 1}/${date.getDate()}/${String(date.getFullYear()).slice(-2)}`;
  const timePart = date.toLocaleTimeString([], { hour: 'numeric', minute: '2-digit' });
  return `${datePart} ${timePart}`;
}

function minutesBetweenDates(a, b) {
  const aTime = new Date(a || 0).getTime();
  const bTime = new Date(b || 0).getTime();
  if (!Number.isFinite(aTime) || !Number.isFinite(bTime)) return Infinity;
  return Math.abs(aTime - bTime) / 60000;
}

function stripInternalEventMeta(history = '') {
  return String(history || '')
    .replace(/\n?\[added_by_meta[^\]]*\]/g, '')
    .replace(/\n?\[last_edited_meta[^\]]*\]/g, '')
    .trim();
}

function formatShortAttributionDate(value) {
  if (!value) return '';
  const raw = String(value);
  const hasTime = raw.includes('T');
  const date = new Date(hasTime ? raw : `${raw.slice(0, 10)}T12:00:00`);
  if (Number.isNaN(date.getTime())) return raw;
  return `${date.getMonth() + 1}/${date.getDate()}/${String(date.getFullYear()).slice(-2)}`;
}

function formatAttributionTime(value) {
  if (!value) return '';
  const date = new Date(value);
  if (Number.isNaN(date.getTime())) return '';
  return date.toLocaleTimeString([], { hour: 'numeric', minute: '2-digit' });
}

function formatAttributionLabel(attribution) {
  const clean = normalizeAttribution(attribution);
  if (!clean?.name && !clean?.email) return '';
  const savedAt = clean.savedAt || clean.createdAt || clean.date;
  const time = formatAttributionTime(savedAt);
  const date = formatShortAttributionDate(savedAt || clean.date);
  return `${clean.name || displayNameFromEmail(clean.email)}${time ? ` • ${time}` : ''}${date ? ` ${date}` : ''}`;
}

function makeNoteAttribution(email) {
  const now = new Date();
  const date = now.toISOString().slice(0, 10);
  return {
    name: displayNameFromEmail(email),
    email: email || '',
    date,
    savedAt: now.toISOString()
  };
}

function normalizeAttribution(value) {
  if (!value) return null;
  if (typeof value === 'string') {
    try { return JSON.parse(value); } catch { return null; }
  }
  if (Array.isArray(value)) return { history: value };
  if (typeof value === 'object') return value;
  return null;
}

function getNoteHistory(attribution) {
  const clean = normalizeAttribution(attribution);
  const rawHistory = Array.isArray(clean?.history) ? clean.history : Array.isArray(clean?.notes) ? clean.notes : [];
  return rawHistory
    .map((entry, index) => ({
      id: entry.id || `${entry.savedAt || entry.createdAt || entry.date || 'note'}-${index}`,
      name: entry.name || displayNameFromEmail(entry.email || ''),
      email: entry.email || '',
      savedAt: entry.savedAt || entry.createdAt || entry.date || '',
      date: entry.date || (entry.savedAt ? String(entry.savedAt).slice(0, 10) : ''),
      text: String(entry.text || entry.note || entry.content || '').trim(),
      editedName: entry.editedName || entry.edited_by_name || entry.editedByName || '',
      editedEmail: entry.editedEmail || entry.edited_by_email || entry.editedByEmail || '',
      editedAt: entry.editedAt || entry.edited_at || entry.updatedAt || ''
    }))
    .filter(entry => entry.text)
    .sort((a, b) => new Date(b.savedAt || b.date || 0).getTime() - new Date(a.savedAt || a.date || 0).getTime());
}

function appendNoteHistory(attribution, email, text) {
  const cleanText = String(text || '').trim();
  if (!cleanText) return normalizeAttribution(attribution);
  const now = new Date();
  const previous = normalizeAttribution(attribution) || {};
  const history = getNoteHistory(previous);
  const entry = {
    id: `note-${now.getTime()}`,
    name: displayNameFromEmail(email),
    email: email || '',
    text: cleanText,
    date: now.toISOString().slice(0, 10),
    savedAt: now.toISOString()
  };
  return { ...previous, history: [entry, ...history] };
}


function appendPlainSchoolNote(existingNotes, email, text) {
  const cleanText = String(text || '').trim();
  const existing = String(existingNotes || '').trim();
  if (!cleanText) return existing;
  const now = new Date();
  const who = displayNameFromEmail(email);
  const stamp = `${who} • ${formatAttributionTime(now.toISOString())} ${formatShortAttributionDate(now.toISOString())}`.trim();
  const block = `[${stamp}]\n${cleanText}`;
  return [existing, block].filter(Boolean).join('\n\n');
}


function getPlainSchoolNoteLabel(notes) {
  const text = String(notes || '').trim();
  if (!text) return 'School Notes';
  // Notes created inside Scheduler are stored as stamped plain text for backward-compatible persistence.
  // Imported legacy School Log notes usually do not have this Scheduler attribution stamp.
  const hasSchedulerStamp = /^\[[^\]]+•[^\]]+\]\s*\n/.test(text);
  return hasSchedulerStamp ? 'Saved School Note' : 'Imported from School Log';
}


function getVisiblePlainSchoolNotes(notes) {
  const text = String(notes || '').trim();
  if (!text) return '';
  const blocks = text.split(/\n{2,}/).map(block => block.trim()).filter(Boolean);
  const visibleBlocks = blocks.filter(block => !/^\[[^\]]+•[^\]]+\]\s*\n/.test(block));
  return visibleBlocks.join('\n\n');
}

function countPlainSchoolNoteBlocks(notes) {
  const text = getVisiblePlainSchoolNotes(notes);
  if (!text) return 0;
  return text.split(/\n{2,}/).map(block => block.trim()).filter(Boolean).length || 0;
}

function editNoteHistory(attribution, noteId, email, text) {
  const cleanText = String(text || '').trim();
  if (!cleanText || !noteId) return normalizeAttribution(attribution);
  const now = new Date();
  const previous = normalizeAttribution(attribution) || {};
  const history = getNoteHistory(previous).map(entry => {
    if (entry.id !== noteId) return entry;
    return {
      ...entry,
      text: cleanText,
      editedName: displayNameFromEmail(email),
      editedEmail: email || '',
      editedAt: now.toISOString()
    };
  });
  return { ...previous, history };
}

function AttributionPill({ attribution }) {
  const clean = normalizeAttribution(attribution);
  if (!clean?.name && !clean?.email) return null;
  const label = formatAttributionLabel(clean);
  return (
    <span title={clean.email ? `Saved by ${clean.email}` : 'Automatically generated note attribution'} className="inline-flex select-none items-center rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/80 px-2.5 py-1 text-[11px] font-semibold text-zinc-800 shadow-sm">
      {label}
    </span>
  );
}

function NoteHistoryList({ entries = [], emptyLabel = 'No notes yet.', canEdit = false, onEditNote = null }) {
  const [editingId, setEditingId] = useState(null);
  const [draftText, setDraftText] = useState('');
  if (!entries.length) return null;
  return (
    <div className="space-y-4">
      {entries.map(entry => {
        const isEditing = editingId === entry.id;
        const editedLabel = entry.editedAt ? `Edited by ${entry.editedName || displayNameFromEmail(entry.editedEmail || '')} • ${formatAttributionTime(entry.editedAt)} ${formatShortAttributionDate(entry.editedAt)}` : '';
        return (
          <div key={entry.id} className={isEditing ? 'rounded-2xl border border-[#AEBB9E] bg-white/80 p-3' : ''}>
            <div className="flex items-center justify-between gap-3">
              <AttributionPill attribution={entry} />
              {canEdit && onEditNote ? (
                <button type="button" onClick={() => { setEditingId(entry.id); setDraftText(entry.text); }} className="rounded-full border border-zinc-200 bg-white px-2.5 py-1 text-[11px] font-semibold text-zinc-600 transition hover:bg-zinc-50">Edit</button>
              ) : null}
            </div>
            {editedLabel ? <div className="mt-1 text-[11px] font-semibold text-zinc-500">{editedLabel}</div> : null}
            {isEditing ? (
              <div className="mt-3 space-y-2">
                <textarea value={draftText} onChange={(event) => setDraftText(event.target.value)} rows={4} className="w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm leading-6 text-zinc-800 outline-none focus:border-[#AEBB9E]" />
                <div className="flex justify-end gap-2">
                  <button type="button" onClick={() => { setEditingId(null); setDraftText(''); }} className="rounded-xl border border-zinc-200 bg-white px-3 py-1.5 text-xs font-semibold text-zinc-600">Cancel</button>
                  <button type="button" onClick={() => { onEditNote(entry.id, draftText); setEditingId(null); setDraftText(''); }} className="rounded-xl bg-zinc-900 px-3 py-1.5 text-xs font-semibold text-white">Save Note Edit</button>
                </div>
              </div>
            ) : (
              <div className="mt-2 whitespace-pre-wrap text-sm leading-6 text-zinc-800">{entry.text}</div>
            )}
          </div>
        );
      })}
    </div>
  );
}

function LoginRequiredNotice() {
  const [checked, setChecked] = useState(false);
  const [userEmail, setUserEmail] = useState(null);

  useEffect(() => {
    if (!hasSupabaseEnv()) {
      setChecked(true);
      return;
    }

    const supabase = createClient();
    if (!supabase) {
      setChecked(true);
      return;
    }

    supabase.auth.getSession().then(({ data }) => {
      setUserEmail(data.session?.user?.email || null);
      setChecked(true);
    });

    const { data: listener } = supabase.auth.onAuthStateChange((_event, session) => {
      setUserEmail(session?.user?.email || null);
      setChecked(true);
    });

    return () => listener.subscription.unsubscribe();
  }, []);

  if (!checked || userEmail) return null;

  return (
    <section className="rounded-[2.25rem] border-2 border-amber-400 bg-gradient-to-br from-amber-100 via-amber-50 to-orange-100 p-6 shadow-xl">
      <div className="flex flex-col gap-5 lg:flex-row lg:items-center lg:justify-between">
        <div className="max-w-3xl">
          <div className="inline-flex rounded-full border border-amber-500 bg-white/80 px-3 py-1 text-xs font-bold uppercase tracking-[0.2em] text-amber-900 shadow-sm">
            Login Required
          </div>

          <h2 className="mt-4 text-2xl font-black tracking-tight text-amber-950 sm:text-3xl">
            You are currently NOT logged in
          </h2>

          <p className="mt-3 text-base leading-7 text-amber-950">
            The calendar may appear normal at first glance, but shared Supabase data, saved changes, assignments, edits, and scheduling actions require login first.
          </p>

          <div className="mt-4 rounded-2xl border border-amber-300 bg-white/70 px-4 py-3 text-sm font-semibold text-amber-950 shadow-sm">
            If you proceed without logging in, your changes may not save or sync correctly.
          </div>
        </div>

        <div className="flex shrink-0 flex-col gap-3">
          <a
            href="/login"
            className="inline-flex min-h-14 items-center justify-center rounded-2xl bg-zinc-950 px-6 py-3 text-base font-bold text-white shadow-lg transition hover:-translate-y-0.5"
          >
            Login Now
          </a>

          <div className="text-center text-xs font-semibold uppercase tracking-wide text-amber-900">
            Shared scheduling requires authentication
          </div>
        </div>
      </div>
    </section>
  );
}

function CalendarColorKey() {
  const items = [
    ['Fall Picture Day', TYPE_COLORS['Fall Picture Day']],
    ['Spring Picture Day', TYPE_COLORS['Spring Picture Day']],
    ['Makeup Day', TYPE_COLORS['Makeup Day']],
    ['Sports', TYPE_COLORS.Sports],
    ['Seniors', TYPE_COLORS.Seniors],
    ['Special Event', TYPE_COLORS['Special Event']],
    ['Rain Date', TYPE_COLORS['Rain Date']],
    ['Call or Meeting', TYPE_COLORS['Call or Meeting']],
    ['Edit Day', TYPE_COLORS['Edit Day']],
    ['Time Off / Personal Appointment', TYPE_COLORS['Time Off']],
    ['Studio Assigned Schools (SAS)', TYPE_COLORS['Studio Assigned Schools (SAS)']]
  ];

  return (
    <div className="flex max-w-full flex-wrap items-center justify-center gap-2 rounded-2xl border border-zinc-200 bg-white/75 px-3 py-2 shadow-sm">
      <span className="mr-1 text-xs font-semibold uppercase tracking-wide text-zinc-500">Key</span>
      {items.map(([label, className]) => (
        <span key={label} className="inline-flex items-center gap-1.5 whitespace-nowrap text-xs font-medium text-zinc-700">
          <span className={`h-3 w-3 rounded-full border ${className}`} />
          {label}
        </span>
      ))}
    </div>
  );
}

function monthKey(date) {
  return typeof date === 'string' && date.length >= 7 ? date.slice(0, 7) : '';
}

function monthLabel(key) {
  const [year, month] = key.split('-').map(Number);
  return new Date(year, month - 1, 1).toLocaleDateString('en-US', { month: 'long', year: 'numeric' });
}

function daysInMonth(key) {
  const [year, month] = key.split('-').map(Number);
  return new Date(year, month, 0).getDate();
}

function firstDayOffset(key) {
  const [year, month] = key.split('-').map(Number);
  return new Date(year, month - 1, 1).getDay();
}

function formatDate(date) {
  return new Date(date + 'T12:00:00').toLocaleDateString('en-US', { weekday: 'long', month: 'long', day: 'numeric', year: 'numeric' });
}

function shortDate(date) {
  return new Date(date + 'T12:00:00').toLocaleDateString('en-US', { month: 'short', day: 'numeric', year: 'numeric' });
}


function pad2(value) {
  return String(value).padStart(2, '0');
}

function dateKeyFromParts(year, month, day) {
  return `${year}-${pad2(month)}-${pad2(day)}`;
}

function nthWeekdayOfMonth(year, month, weekday, occurrence) {
  const first = new Date(year, month - 1, 1, 12, 0, 0);
  const firstOffset = (weekday - first.getDay() + 7) % 7;
  return dateKeyFromParts(year, month, 1 + firstOffset + (occurrence - 1) * 7);
}

function lastWeekdayOfMonth(year, month, weekday) {
  const last = new Date(year, month, 0, 12, 0, 0);
  const offset = (last.getDay() - weekday + 7) % 7;
  return dateKeyFromParts(year, month, last.getDate() - offset);
}

function addHolidayDays(dateKey, days) {
  const date = new Date(`${dateKey}T12:00:00`);
  date.setDate(date.getDate() + days);
  return date.toISOString().slice(0, 10);
}

function easterDateKey(year) {
  const a = year % 19;
  const b = Math.floor(year / 100);
  const c = year % 100;
  const d = Math.floor(b / 4);
  const e = b % 4;
  const f = Math.floor((b + 8) / 25);
  const g = Math.floor((b - f + 1) / 3);
  const h = (19 * a + b - d - g + 15) % 30;
  const i = Math.floor(c / 4);
  const k = c % 4;
  const l = (32 + 2 * e + 2 * i - h - k) % 7;
  const m = Math.floor((a + 11 * h + 22 * l) / 451);
  const month = Math.floor((h + l - 7 * m + 114) / 31);
  const day = ((h + l - 7 * m + 114) % 31) + 1;
  return dateKeyFromParts(year, month, day);
}

const MANUAL_HOLIDAYS_BY_YEAR = {
  2025: {
    '2025-09-23': ['Rosh Hashanah'],
    '2025-09-24': ['Rosh Hashanah'],
    '2025-10-02': ['Yom Kippur']
  },
  2026: {
    '2026-09-12': ['Rosh Hashanah'],
    '2026-09-13': ['Rosh Hashanah'],
    '2026-09-21': ['Yom Kippur']
  },
  2027: {
    '2027-10-02': ['Rosh Hashanah'],
    '2027-10-03': ['Rosh Hashanah'],
    '2027-10-11': ['Yom Kippur']
  },
  2028: {
    '2028-09-21': ['Rosh Hashanah'],
    '2028-09-22': ['Rosh Hashanah'],
    '2028-09-30': ['Yom Kippur']
  },
  2029: {
    '2029-09-10': ['Rosh Hashanah'],
    '2029-09-11': ['Rosh Hashanah'],
    '2029-09-19': ['Yom Kippur']
  }
};

function pushHoliday(map, dateKey, label) {
  if (!dateKey || !label) return;
  const current = map.get(dateKey) || [];
  if (!current.includes(label)) current.push(label);
  map.set(dateKey, current);
}

function getHolidayMapForYear(year) {
  const map = new Map();
  pushHoliday(map, dateKeyFromParts(year, 1, 1), "New Year's Day");
  pushHoliday(map, nthWeekdayOfMonth(year, 1, 1, 3), 'MLK Day');
  pushHoliday(map, nthWeekdayOfMonth(year, 2, 1, 3), 'Presidents Day');
  const easter = easterDateKey(year);
  pushHoliday(map, addHolidayDays(easter, -2), 'Good Friday');
  pushHoliday(map, easter, 'Easter');
  pushHoliday(map, lastWeekdayOfMonth(year, 5, 1), 'Memorial Day');
  pushHoliday(map, dateKeyFromParts(year, 6, 19), 'Juneteenth');
  pushHoliday(map, dateKeyFromParts(year, 7, 4), 'Independence Day');
  pushHoliday(map, nthWeekdayOfMonth(year, 9, 1, 1), 'Labor Day');
  pushHoliday(map, nthWeekdayOfMonth(year, 10, 1, 2), 'Columbus Day / Indigenous Peoples Day');
  pushHoliday(map, dateKeyFromParts(year, 11, 11), 'Veterans Day');
  const thanksgiving = nthWeekdayOfMonth(year, 11, 4, 4);
  pushHoliday(map, thanksgiving, 'Thanksgiving');
  pushHoliday(map, addHolidayDays(thanksgiving, 1), 'Black Friday');
  pushHoliday(map, dateKeyFromParts(year, 12, 24), 'Christmas Eve');
  pushHoliday(map, dateKeyFromParts(year, 12, 25), 'Christmas Day');
  pushHoliday(map, dateKeyFromParts(year, 12, 31), "New Year's Eve");

  Object.entries(MANUAL_HOLIDAYS_BY_YEAR[year] || {}).forEach(([dateKey, labels]) => {
    labels.forEach(label => pushHoliday(map, dateKey, label));
  });
  return map;
}

function getHolidayLabels(dateKey) {
  const year = Number(String(dateKey || '').slice(0, 4));
  if (!year) return [];
  return getHolidayMapForYear(year).get(dateKey) || [];
}

function HolidayText({ date }) {
  const holidays = getHolidayLabels(date);
  if (!holidays.length) return null;
  return (
    <div className="mb-1 space-y-0.5 text-xs font-semibold italic leading-tight text-zinc-500" title={holidays.join(', ')}>
      {holidays.map(label => <div key={label} className="truncate">{label}</div>)}
    </div>
  );
}

function todayKey() {
  const d = new Date();
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`;
}

const LOCAL_MANUAL_EVENTS_KEY = 'ismile_manual_events_backup_v1';

function loadLocalManualEvents() {
  if (typeof window === 'undefined') return [];
  try {
    const raw = window.localStorage.getItem(LOCAL_MANUAL_EVENTS_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw);
    return Array.isArray(parsed) ? parsed.filter(event => event && event.id && event.date && event.title).map(event => ({ ...event, localBackupOnly: true })) : [];
  } catch (error) {
    console.warn('Could not load local manual events backup', error);
    return [];
  }
}

function saveLocalManualEvent(event) {
  if (typeof window === 'undefined' || !event?.id) return;
  try {
    const existing = loadLocalManualEvents();
    const without = existing.filter(item => item.id !== event.id && item.supabaseId !== event.supabaseId);
    const backupEvent = { ...event, localBackupOnly: event.localBackupOnly !== false };
    const next = [...without, backupEvent].sort((a, b) => String(a.date || '').localeCompare(String(b.date || '')));
    window.localStorage.setItem(LOCAL_MANUAL_EVENTS_KEY, JSON.stringify(next));
  } catch (error) {
    console.warn('Could not save local manual event backup', error);
  }
}

function removeLocalManualEventBackup(event) {
  if (typeof window === 'undefined' || !event?.id) return;
  try {
    const existing = loadLocalManualEvents();
    const next = existing.filter(item => item.id !== event.id && item.supabaseId !== event.supabaseId);
    window.localStorage.setItem(LOCAL_MANUAL_EVENTS_KEY, JSON.stringify(next));
  } catch (error) {
    console.warn('Could not remove local manual event backup', error);
  }
}

function mergeEventsById(primary = [], backup = []) {
  const map = new Map();
  [...backup, ...primary].forEach(event => {
    if (!event) return;
    const key = event.supabaseId || event.id;
    if (!key) return;
    map.set(key, event);
  });
  return Array.from(map.values()).sort((a, b) => String(a.date || '').localeCompare(String(b.date || '')));
}

function addDays(date, delta) {
  const d = new Date(date + 'T12:00:00');
  d.setDate(d.getDate() + delta);
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`;
}

function isDateInEventRange(event, date) {
  if (!event || !date) return false;
  const start = event.date;
  const end = event.endDate || event.date;
  return Boolean(start) && date >= start && date <= end;
}

function getEventDateKeys(event) {
  if (!event?.date) return [];
  const start = event.date;
  const end = event.endDate || event.date;
  const keys = [];
  let cursor = start;
  let guard = 0;
  while (cursor <= end && guard < 370) {
    keys.push(cursor);
    cursor = addDays(cursor, 1);
    guard += 1;
  }
  return keys;
}

function isMultiDayScheduleEvent(event = {}) {
  return Boolean(event?.date && event?.endDate && event.endDate !== event.date);
}

function getScheduleLiveDayAssignments(event = {}) {
  const raw = event.scheduleLiveDayAssignments ?? event.schedule_live_day_assignments ?? {};
  return raw && typeof raw === 'object' && !Array.isArray(raw) ? raw : {};
}

function getScheduleLiveAssignmentForDate(event = {}, date = '') {
  const dayAssignments = getScheduleLiveDayAssignments(event);
  const assignment = date ? dayAssignments[date] : null;
  return assignment && typeof assignment === 'object' ? assignment : {};
}

function getScheduleLivePhotographersForDate(event = {}, date = '') {
  if (date && isMultiDayScheduleEvent(event)) {
    return uniqueCanonicalPhotographers(getScheduleLiveAssignmentForDate(event, date).photographers || []);
  }
  return uniqueCanonicalPhotographers(event.photographers || []);
}

function getScheduleLiveAssistantsForDate(event = {}, date = '') {
  if (date && isMultiDayScheduleEvent(event)) {
    const assignment = getScheduleLiveAssignmentForDate(event, date);
    return Array.isArray(assignment.assistants) ? assignment.assistants.filter(Boolean) : [];
  }
  return Array.isArray(event.assistants) ? event.assistants.filter(Boolean) : [];
}

function setScheduleLiveAssignmentForDate(event = {}, date = '', patch = {}) {
  const dayAssignments = { ...getScheduleLiveDayAssignments(event) };
  const current = { ...(dayAssignments[date] || {}) };
  dayAssignments[date] = { ...current, ...patch };
  return { ...event, scheduleLiveDayAssignments: dayAssignments };
}

function normalizeScheduleLiveDayAssignmentsForDates(event = {}, dates = []) {
  const existing = getScheduleLiveDayAssignments(event);
  const fallbackPhotographers = uniqueCanonicalPhotographers(event.photographers || []);
  const fallbackAssistants = Array.isArray(event.assistants) ? event.assistants.filter(Boolean) : [];
  return (dates || []).reduce((map, date) => {
    const assignment = existing[date] && typeof existing[date] === 'object' ? existing[date] : {};
    map[date] = {
      photographers: uniqueCanonicalPhotographers(assignment.photographers || fallbackPhotographers),
      assistants: Array.isArray(assignment.assistants) ? assignment.assistants.filter(Boolean) : fallbackAssistants
    };
    return map;
  }, {});
}

function scheduleLiveDateMeetsPhotographerRequirement(event = {}, date = '') {
  return getScheduleLivePhotographersForDate(event, date).length >= getRequiredPhotographerCount(event);
}

function eventMeetsPerDayPhotographerRequirement(event = {}) {
  if (!isMultiDayScheduleEvent(event)) return eventMeetsPhotographerRequirement(event);
  const dates = getEventDateKeys(event);
  if (!dates.length) return false;
  return dates.every(date => scheduleLiveDateMeetsPhotographerRequirement(event, date));
}

function getMultiDayStaffingSummary(event = {}) {
  if (!isMultiDayScheduleEvent(event)) return null;
  const dates = getEventDateKeys(event);
  const requiredPhotographers = getRequiredPhotographerCount(event);
  const requiredAssistants = getRequiredAssistantCount(event);
  const incompletePhotographerDates = dates.filter(date => getScheduleLivePhotographersForDate(event, date).length < requiredPhotographers);
  const incompleteAssistantDates = event?.noAssistant || requiredAssistants <= 0
    ? []
    : dates.filter(date => getScheduleLiveAssistantsForDate(event, date).length < requiredAssistants);
  const totalDates = dates.length;
  return {
    totalDates,
    incompletePhotographerDates,
    incompleteAssistantDates,
    photographersComplete: incompletePhotographerDates.length === 0,
    assistantsComplete: incompleteAssistantDates.length === 0,
    fullyStaffed: incompletePhotographerDates.length === 0 && incompleteAssistantDates.length === 0
  };
}

function getMultiDayMainStaffingStatus(event = {}) {
  const summary = getMultiDayStaffingSummary(event);
  if (!summary) return null;
  const parts = [];
  if (summary.incompletePhotographerDates.length) {
    parts.push(`Needs Photographers (${summary.incompletePhotographerDates.length} of ${summary.totalDates} day${summary.totalDates === 1 ? '' : 's'} incomplete)`);
  }
  if (summary.incompleteAssistantDates.length) {
    parts.push(`Needs Assistants (${summary.incompleteAssistantDates.length} of ${summary.totalDates} day${summary.totalDates === 1 ? '' : 's'} incomplete)`);
  }
  return parts.length ? parts.join(' · ') : 'Fully Staffed';
}

function getMultiDayPhotographerDisplay(event = {}) {
  if (!isMultiDayScheduleEvent(event)) return null;
  const dates = getEventDateKeys(event);
  if (!dates.length) return null;
  const daily = dates.map(date => ({ date, names: getScheduleLivePhotographersForDate(event, date).filter(Boolean) }));
  const firstNames = daily[0]?.names || [];
  const sameEveryDay = daily.every(item => item.names.length === firstNames.length && item.names.every((name, index) => name === firstNames[index]));
  if (sameEveryDay && firstNames.length) return `${firstNames.join(', ')} — all days`;
  const filled = daily.filter(item => item.names.length);
  if (filled.length) return filled.map(item => `${shortDate(item.date)}: ${item.names.join(', ')}`).join(' · ');
  const status = getMultiDayMainStaffingStatus(event);
  return status || '—';
}

function getEventDateKeysInRange(event, start, end) {
  return getEventDateKeys(event).filter(date => (!start || date >= start) && (!end || date <= end));
}

function getMonthDateRange(month) {
  return { start: `${month}-01`, end: `${month}-${String(daysInMonth(month)).padStart(2, '0')}` };
}

function getMonthEventSegmentClass(event, date) {
  if (!event?.endDate || event.endDate === event.date) return 'rounded-xl';
  const isStart = date === event.date;
  const isEnd = date === event.endDate;
  if (isStart && isEnd) return 'rounded-xl';
  if (isStart) return 'rounded-l-xl rounded-r-sm';
  if (isEnd) return 'rounded-r-xl rounded-l-sm';
  return 'rounded-sm';
}

function getMonthEventSegmentLabel(event, date) {
  if (!event?.endDate || event.endDate === event.date) return `${event.localBackupOnly ? '⚠ ' : ''}${event.title}`;
  if (date === event.date) return `${event.localBackupOnly ? '⚠ ' : ''}${event.title}`;
  return `${event.localBackupOnly ? '⚠ ' : ''}↳ ${event.title}`;
}

function getEventDateLabel(event) {
  if (!event?.endDate || event.endDate === event.date) return formatDate(event?.date);
  return `${formatDate(event.date)} – ${formatDate(event.endDate)}`;
}

function getEventTimeLabel(event) {
  const arrival = event?.arrivalTime && event.arrivalTime !== 'TBD' ? event.arrivalTime : '';
  const start = event?.time && event.time !== 'TBD' ? event.time : '';
  if (arrival && start) return `Arrival ${arrival} · Start ${start}`;
  if (arrival) return `Arrival ${arrival}`;
  if (start) return `Start ${start}`;
  return 'Time TBD';
}

function weekBounds(date) {
  const d = new Date(date + 'T12:00:00');
  const start = new Date(d);
  start.setDate(d.getDate() - d.getDay());
  const end = new Date(start);
  end.setDate(start.getDate() + 6);
  const toKey = (value) => `${value.getFullYear()}-${String(value.getMonth() + 1).padStart(2, '0')}-${String(value.getDate()).padStart(2, '0')}`;
  return { start: toKey(start), end: toKey(end) };
}

function displayStatus(status) {
  return status === 'Needs Photographers Assigned' ? 'Needs Photographers Assigned' : status;
}

function displayPhotographerAssignment(event) {
  if (isMultiDayScheduleEvent(event)) {
    return getMultiDayPhotographerDisplay(event) || getMultiDayMainStaffingStatus(event) || '—';
  }
  const assigned = explicitCurrentPhotographerAssignments(event?.photographers || []);
  if (isTimeOffEvent(event)) return assigned.length ? assigned.join(', ') : '—';
  if (assigned.length) return assigned.join(', ');
  const required = Math.max(1, getRequiredPhotographerCount(event));
  return `Needs ${required} photographer${required === 1 ? '' : 's'} assigned`;
}

function isTimeOffEvent(event = {}) {
  const type = String(event?.type || event?.event_type || '').trim().toLowerCase();
  return type === 'time off' || type === 'personal appointment';
}

function isNeedsPhotographerAssignment(event) {
  if (isTimeOffEvent(event)) return false;
  const status = String(event?.status || '').trim().toLowerCase();
  if (status === 'schedule live complete') return false;
  const assignedCount = getAssignedPhotographerCount(event);
  const requiredCount = getRequiredPhotographerCount(event);
  const placeholderStatuses = new Set([
    '',
    'needs photographer assigned',
    'needs photographers assigned',
    'need photographer assigned',
    'need photographers assigned',
    'needs photographer(s) assigned',
    'need photographer(s) assigned',
    'unassigned',
    'photographer unassigned'
  ]);

  return assignedCount < requiredCount || placeholderStatuses.has(status);
}


function eventMeetsAssistantRequirement(event = {}) {
  if (isTimeOffEvent(event) || event?.noAssistant) return true;
  const required = getRequiredAssistantCount(event);
  if (required <= 0) return true;
  if (isMultiDayScheduleEvent(event)) {
    const dates = getEventDateKeys(event);
    if (!dates.length) return false;
    return dates.every(date => getScheduleLiveAssistantsForDate(event, date).length >= required);
  }
  const assigned = Array.isArray(event.assistants) ? event.assistants.filter(Boolean).length : 0;
  return assigned >= required;
}

function isNeedsAssistantAssignment(event = {}) {
  if (!event || isTimeOffEvent(event) || event.noAssistant) return false;
  const required = getRequiredAssistantCount(event);
  if (required <= 0) return false;
  const status = String(event.status || '').trim().toLowerCase();
  if (status === 'schedule live complete') return false;
  return !eventMeetsAssistantRequirement(event);
}

function isRainWatchEvent(event = {}) {
  if (!event || isTimeOffEvent(event)) return false;
  const status = String(event.status || '').trim().toLowerCase();
  const type = String(event.type || event.event_type || '').trim().toLowerCase();
  const title = String(event.title || '').trim().toLowerCase();
  return status === 'rain watch' || type === 'rain date' || /\brain\s*(watch|date)\b/.test(title);
}

function displayAssistants(event) {
  if (isTimeOffEvent(event)) return '—';
  if (event?.noAssistant) return 'No Assistant';
  if (isMultiDayScheduleEvent(event)) {
    const summary = getMultiDayStaffingSummary(event);
    if (!summary) return '—';
    if (summary.incompleteAssistantDates.length) return `Needs Assistants (${summary.incompleteAssistantDates.length} of ${summary.totalDates} day${summary.totalDates === 1 ? '' : 's'} incomplete)`;
    const required = getRequiredAssistantCount(event);
    return required > 0 ? 'Assistants fully staffed' : '—';
  }
  const assigned = Array.isArray(event?.assistants) ? event.assistants.filter(Boolean) : [];
  if (assigned.length) return assigned.join(', ');
  const required = Math.max(0, getRequiredAssistantCount(event));
  if (required > 0) return `Needs ${required} assistant${required === 1 ? '' : 's'} assigned`;
  return '—';
}

function normalizeSchoolLookupKey(value = '') {
  return String(value)
    .toLowerCase()
    .replace(/&/g, ' and ')
    .replace(/[^a-z0-9]+/g, ' ')
    .trim();
}

function normalizeSchoolMatchKey(value = '') {
  return normalizeSchoolLookupKey(value)
    .replace(/\bmiddle school and high school\b/g, 'ms hs')
    .replace(/\bmiddle and high school\b/g, 'ms hs')
    .replace(/\bmiddle school high school\b/g, 'ms hs')
    .replace(/\bmiddle high school\b/g, 'ms hs')
    .replace(/\bmiddle school\b/g, 'ms')
    .replace(/\bhigh school\b/g, 'hs')
    .replace(/\belementary school\b/g, 'elem')
    .replace(/\belementary\b/g, 'elem')
    .replace(/\band\b/g, '')
    .replace(/\bschool\b/g, '')
    .replace(/\bdistrict\b/g, '')
    .replace(/\s+/g, ' ')
    .trim();
}

function resolveSchoolListMatch(schoolName = '', schools = []) {
  const target = normalizeSchoolMatchKey(schoolName);
  if (!target) return null;

  const activeSchools = (schools || []).filter(school => school && school.active !== false && !school.mergedInto);
  const exact = activeSchools.find(school =>
    normalizeSchoolLookupKey(school.name) === normalizeSchoolLookupKey(schoolName) ||
    normalizeSchoolLookupKey(school.originalName || '') === normalizeSchoolLookupKey(schoolName)
  );
  if (exact) return exact;

  const normalizedExact = activeSchools.find(school => {
    const keys = [school.name, school.originalName, ...(school.mergedFrom || [])].filter(Boolean).map(normalizeSchoolMatchKey);
    return keys.includes(target);
  });
  if (normalizedExact) return normalizedExact;

  const candidates = activeSchools
    .map(school => {
      const keys = [school.name, school.originalName, ...(school.mergedFrom || [])].filter(Boolean).map(normalizeSchoolMatchKey);
      const bestScore = keys.reduce((score, key) => {
        if (!key) return score;
        if (key === target) return Math.max(score, 100);
        if (key.includes(target) || target.includes(key)) return Math.max(score, Math.min(key.length, target.length));
        const targetParts = target.split(' ').filter(Boolean);
        const keyParts = key.split(' ').filter(Boolean);
        const overlap = targetParts.filter(part => keyParts.includes(part)).length;
        return Math.max(score, overlap);
      }, 0);
      return { school, score: bestScore };
    })
    .filter(item => item.score >= 2)
    .sort((a, b) => b.score - a.score || a.school.name.localeCompare(b.school.name));

  if (!candidates.length) return null;
  const [best, second] = candidates;
  if (!second || best.score > second.score) return best.school;
  return best.school;
}

const SCHOOL_IRM_LOOKUP = new Map(
  SCHOOLS.map((school) => [normalizeSchoolLookupKey(school.name), school.irm]).filter(([, irm]) => irm !== undefined && irm !== null && irm !== '')
);

function getSchoolListIrmForEvent(event) {
  const candidates = [event?.canonicalSchool, event?.title].filter(Boolean);

  for (const candidate of candidates) {
    const directKey = normalizeSchoolLookupKey(candidate);
    if (SCHOOL_IRM_LOOKUP.has(directKey)) return SCHOOL_IRM_LOOKUP.get(directKey);
  }

  for (const candidate of candidates) {
    const eventKey = normalizeSchoolLookupKey(candidate);
    if (!eventKey) continue;

    for (const [schoolKey, irm] of SCHOOL_IRM_LOOKUP.entries()) {
      if (schoolKey && (eventKey.includes(schoolKey) || schoolKey.includes(eventKey))) return irm;
    }
  }

  return null;
}

function getEventIrm(event) {
  if (event?.irm !== undefined && event?.irm !== null && event?.irm !== '') return event.irm;

  // Makeup Days and Rain Dates often do not include IRM in the imported calendar title.
  // For those operational follow-up dates, pull the IRM from the matched School List account.
  if (event?.type === 'Makeup Day' || event?.type === 'Rain Date') {
    return getSchoolListIrmForEvent(event);
  }

  return null;
}

function EventCard({ event, onClick, compact = false, actionLabel = '', onAction = null }) {
  return (
    <motion.button
      layout
      onClick={() => (onAction ? onAction(event) : onClick(event))}
      className="w-full rounded-2xl border border-zinc-200/80 bg-white/85 p-3 text-left shadow-sm transition hover:-translate-y-0.5 hover:shadow-soft"
    >
      <div className="flex items-start justify-between gap-2">
        <div className="min-w-0">
          <div className="truncate text-sm font-semibold text-zinc-900">{event.title}</div>
          <div className="mt-1 flex flex-wrap items-center gap-1.5 text-xs text-zinc-500">
            <span className="font-semibold text-zinc-600">{formatDate(event.date)}</span>
            <span>{getEventTimeLabel(event)}</span>
            {event.canonicalSchool ? <span className="truncate">{event.canonicalSchool}</span> : null}
          </div>
        </div>
        <div className="flex shrink-0 flex-col items-end gap-1">
          <Pill className={TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}>{event.type}</Pill>
          {getEventIrm(event) ? <Pill className="border-amber-200 bg-amber-50 text-amber-900">IRM {getEventIrm(event)}</Pill> : null}
        </div>
      </div>
      {!compact && (
        <div className="mt-3 space-y-1 text-xs text-zinc-600">
          <div>Photographers Assigned: {displayPhotographerAssignment(event)}</div>
          <div>Assistants: {event.assistants.length ? event.assistants.join(', ') : '—'}</div>
        </div>
      )}
      {onAction && actionLabel ? (
        <div className="mt-3 flex justify-end">
          <span className="rounded-2xl border border-[#AEBB9E] bg-[#DDE8D2] px-3 py-1.5 text-xs font-bold text-zinc-900">{actionLabel}</span>
        </div>
      ) : null}
    </motion.button>
  );
}

function addMonths(key, delta) {
  const [year, month] = key.split('-').map(Number);
  const d = new Date(year, month - 1 + delta, 1);
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}`;
}

function Header({ query, setQuery, activeTab, setActiveTab, visibleTabs = tabs }) {
  const mobileViewCompact = activeTab === 'Mobile View' || activeTab === 'Calendar View';
  const showMobileSearch = activeTab === 'Calendar View';
  const primaryTabs = visibleTabs.filter(tab => tab !== 'Admin');
  const showAdminTab = visibleTabs.includes('Admin');
  return (
    <header className={`sticky top-0 z-50 border-b border-zinc-200/70 bg-cream shadow-sm ${mobileViewCompact ? 'sm:py-0' : ''}`}>
      <div className={`mx-auto max-w-7xl ${mobileViewCompact ? 'px-2 sm:px-6' : 'px-4 sm:px-6'} ${mobileViewCompact ? 'py-2 sm:py-4' : 'py-3 sm:py-4'}`}>
        <div className={`flex flex-col lg:flex-row lg:items-center lg:justify-between ${mobileViewCompact ? 'gap-2 sm:gap-4' : 'gap-3 sm:gap-4'}`}>
          <div>
            <div className="flex items-center gap-3 sm:items-start sm:gap-4">
              <span className="inline-flex h-14 w-14 shrink-0 items-center justify-center overflow-hidden rounded-2xl border border-[#AEBB9E] bg-white shadow-sm sm:h-20 sm:w-20 sm:rounded-3xl"><img src="/scheduler-icon-192.png" alt="Scheduler" className="h-12 w-12 object-contain sm:h-[4.5rem] sm:w-[4.5rem]" /></span>
              <div className="min-w-0 sm:pt-1">
                <h1 className={`${mobileViewCompact ? 'text-xl sm:text-3xl' : 'text-3xl'} font-semibold tracking-tight text-zinc-950`}>Scheduler v{SCHEDULER_VERSION}</h1>
                <p className="mt-2 hidden max-w-xl text-sm leading-6 text-zinc-600 sm:block"><span>A calm internal workspace for school picture days,</span><br /><span>staffing, notes, and historical reference.</span></p>
              </div>
            </div>
          </div>
          <div className={`flex w-full flex-col lg:w-auto lg:min-w-[560px] ${mobileViewCompact ? 'gap-2 sm:gap-3' : 'gap-3'}`}>
            <label className={`${mobileViewCompact && !showMobileSearch ? 'hidden sm:block' : 'block'} relative`}>
              <Search className="absolute left-3 top-1/2 -translate-y-1/2 text-zinc-400" size={18} />
              <input
                value={query}
                onChange={(e) => setQuery(e.target.value)}
                placeholder="Search schools, events, contacts, notes..."
                className="w-full rounded-2xl border border-zinc-200 bg-white/80 py-3 pl-10 pr-4 text-sm outline-none ring-sage/30 transition focus:ring-4"
              />
            </label>
            <div className={`${mobileViewCompact ? 'hidden sm:flex' : 'flex'} justify-end`}><AuthStatus /></div>
            <nav className="hidden flex-col gap-2 sm:flex">
              <div className="flex flex-wrap justify-end gap-2">
                {primaryTabs.map((tab) => (
                  <button key={tab} onClick={() => setActiveTab(tab)} className={`min-w-[96px] rounded-2xl px-3 py-2 text-sm font-medium transition ${activeTab === tab ? 'bg-zinc-900 text-white shadow-soft' : 'bg-white/75 text-zinc-700 hover:bg-white'}`}>
                    {tab}
                  </button>
                ))}
              </div>
              {showAdminTab ? (
                <div className="flex justify-end">
                  <button onClick={() => setActiveTab('Admin')} className={`min-w-[96px] rounded-2xl px-3 py-2 text-sm font-medium transition ${activeTab === 'Admin' ? 'bg-zinc-900 text-white shadow-soft' : 'bg-white/75 text-zinc-700 hover:bg-white'}`}>
                    Admin
                  </button>
                </div>
              ) : null}
            </nav>
          </div>
        </div>
      </div>
    </header>
  );
}


function MobileBottomNav({ activeTab, setActiveTab, canAdmin = false }) {
  const mobileTabs = [
    { label: 'Overview', tab: 'Overview' },
    { label: 'Mobile', tab: 'Mobile View' },
    { label: 'Calendar', tab: 'Calendar View' },
    { label: 'Schools', tab: 'School List' },
    ...(canAdmin ? [{ label: 'Admin', tab: 'Admin' }] : [])
  ];
  return (
    <nav className="fixed inset-x-3 bottom-3 z-40 rounded-[1.5rem] border border-zinc-200 bg-white/95 p-1 shadow-2xl backdrop-blur sm:hidden">
      <div className={`grid gap-1 ${canAdmin ? 'grid-cols-5' : 'grid-cols-4'}`}>
        {mobileTabs.map(item => (
          <button
            key={item.tab}
            type="button"
            onClick={() => setActiveTab(item.tab)}
            className={`rounded-2xl px-2 py-3 text-xs font-semibold transition ${activeTab === item.tab ? 'bg-zinc-900 text-white' : 'text-zinc-600 hover:bg-cream'}`}
          >
            {item.label}
          </button>
        ))}
      </div>
    </nav>
  );
}

function MonthNavigator({ month, setMonth }) {
  return (
    <div className="mb-4 flex items-center justify-center gap-3">
      <button
        type="button"
        onClick={() => setMonth(addMonths(month, -1))}
        className="rounded-full border border-zinc-200 bg-white/85 p-2 text-zinc-700 shadow-sm transition hover:-translate-y-0.5 hover:bg-white hover:shadow-soft"
        aria-label="Previous month"
      >
        <ChevronLeft size={20} />
      </button>
      <div className="min-w-[220px] rounded-full border border-zinc-200 bg-white/90 px-6 py-2 text-center text-base font-semibold text-zinc-900 shadow-sm">
        {monthLabel(month)}
      </div>
      <button
        type="button"
        onClick={() => setMonth(addMonths(month, 1))}
        className="rounded-full border border-zinc-200 bg-white/85 p-2 text-zinc-700 shadow-sm transition hover:-translate-y-0.5 hover:bg-white hover:shadow-soft"
        aria-label="Next month"
      >
        <ChevronRight size={20} />
      </button>
    </div>
  );
}


function compactCrewList(event = {}) {
  return [
    ...uniqueCanonicalPhotographers(event.photographers || []),
    ...(event.assistants || []).filter(Boolean)
  ].filter(Boolean);
}

function buildDayCopyText(title, dayEvents) {
  if (!dayEvents.length) return 'Nothing scheduled';
  const items = dayEvents.map(event => {
    const crew = compactCrewList(event);
    return `${event.canonicalSchool || event.title}${crew.length ? ` (${crew.join(', ')})` : ''}`;
  });
  return items.join('\n');
}

function TodayTomorrowList({ title, date, events, onClickEvent }) {
  const [copied, setCopied] = useState(false);
  const dayEvents = events
    .filter(event => isDateInEventRange(event, date) && !event?.removed)
    .sort((a, b) => String(a.time || '').localeCompare(String(b.time || '')));

  const copyDay = async () => {
    const text = buildDayCopyText(title, dayEvents);
    try {
      await navigator.clipboard.writeText(text);
      setCopied(true);
      setTimeout(() => setCopied(false), 1800);
    } catch (error) {
      window.prompt('Copy this text:', text);
    }
  };

  return (
    <div className="rounded-3xl border border-zinc-200/80 bg-white/75 p-4 shadow-sm">
      <div className="flex items-start justify-between gap-3">
        <div>
          <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">{title}</div>
          <div className="mt-1 text-sm font-medium text-zinc-900">{formatDate(date)}</div>
        </div>
        <div className="flex shrink-0 items-center gap-2">
          <button type="button" onClick={copyDay} className="rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/70 px-3 py-1.5 text-xs font-black text-zinc-900 shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2]">{copied ? 'Copied' : 'Copy'}</button>
          <Pill className="border-zinc-200 bg-cream text-zinc-700">{dayEvents.length}</Pill>
        </div>
      </div>
      <div className="mt-3 space-y-2">
        {dayEvents.length ? dayEvents.slice(0, 4).map(event => (
          <button
            key={event.id}
            type="button"
            onClick={() => onClickEvent?.(event)}
            className="block w-full rounded-2xl border border-zinc-100 bg-white/80 p-3 text-left transition hover:-translate-y-0.5 hover:border-[#AEBB9E] hover:bg-white hover:shadow-soft focus:outline-none focus:ring-4 focus:ring-[#AEBB9E]/30"
          >
            <div className="truncate text-sm font-semibold text-zinc-900">{event.title}</div>
            <div className="mt-1 truncate text-xs text-zinc-500">
              {compactCrewList(event).length ? <>Crew: {compactCrewList(event).join(', ')}</> : <>Needs photographers assigned</>}
            </div>
          </button>
        )) : <div className="rounded-2xl border border-dashed border-zinc-200 bg-cream/70 p-3 text-sm text-zinc-400">Nothing currently scheduled.</div>}
        {dayEvents.length > 4 ? <div className="text-xs font-medium text-zinc-500">+ {dayEvents.length - 4} more</div> : null}
      </div>
    </div>
  );
}

function CurrentWeeklyRolloutCard({ events }) {
  const today = todayKey();
  const { start, end } = weekBounds(today);
  const weekEvents = events.filter(event => event && event.date <= end && (event.endDate || event.date) >= start);
  const weeklyRollouts = getRolloutCountForDateRange(events, start, end);
  const capacity = getCapacityTone(weeklyRollouts);
  const pct = Math.min(100, Math.round((weeklyRollouts / WEEKLY_ROLLOUT_CAPACITY) * 100));
  const photographerSummary = getPhotographerRolloutSummaryForDateRange(events, start, end);

  return (
    <div tabIndex={0} className={`group relative rounded-3xl border p-4 shadow-sm outline-none ${capacity.className}`}>
      <div className="flex items-start justify-between gap-3">
        <div>
          <div className="text-xs font-semibold uppercase tracking-wide opacity-75">Weekly Rollout</div>
          <div className="mt-1 text-sm font-medium">Current week: {shortDate(start)} – {shortDate(end)}</div>
        </div>
        <Pill className={`border-current bg-white/60 ${capacity.className}`}>{capacity.label}</Pill>
      </div>
      <div className="mt-5 text-3xl font-semibold">{weeklyRollouts} / {WEEKLY_ROLLOUT_CAPACITY}</div>
      <div className="mt-1 text-xs font-semibold uppercase tracking-wide opacity-75">Photographer rollouts</div>
      <div className="mt-3 h-2 overflow-hidden rounded-full bg-white/70">
        <div className={`h-full rounded-full ${capacity.barClassName}`} style={{ width: `${pct}%` }} />
      </div>

      <RolloutBreakdownTooltip start={start} end={end} summary={photographerSummary} />
    </div>
  );
}

function OperationalSummary({ events, onClickEvent }) {
  const today = todayKey();
  return (
    <section className="grid gap-3 lg:grid-cols-3">
      <TodayTomorrowList title="What We're Photographing Today" date={today} events={events} onClickEvent={onClickEvent} />
      <TodayTomorrowList title="What We're Photographing Tomorrow" date={addDays(today, 1)} events={events} onClickEvent={onClickEvent} />
      <CurrentWeeklyRolloutCard events={events} />
    </section>
  );
}

function OverviewControls({ viewMode, setViewMode, month, setMonth, selectedDate, setSelectedDate }) {
  return (
    <div className="mb-4 space-y-4">
      <div className="flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
        <div>
          <h2 className="text-lg font-semibold text-zinc-950">Overview</h2>
          <p className="mt-1 text-sm text-zinc-600">Review open scheduling needs by month, week, or day.</p>
        </div>
        <div className="grid w-full grid-cols-3 rounded-2xl border border-zinc-200 bg-white/80 p-1 shadow-sm sm:inline-flex sm:w-auto">
          {['Month', 'Week', 'Day'].map(mode => (
            <button
              key={mode}
              type="button"
              onClick={() => setViewMode(mode)}
              className={`rounded-xl px-4 py-2 text-sm font-medium transition ${viewMode === mode ? 'bg-zinc-900 text-white shadow-sm' : 'text-zinc-700 hover:bg-white'}`}
            >
              {mode}
            </button>
          ))}
        </div>
      </div>
      <CalendarNavigator viewMode={viewMode} month={month} setMonth={setMonth} selectedDate={selectedDate} setSelectedDate={setSelectedDate} />
    </div>
  );
}


function QuickAssignmentModal({ event, mode, photographers, assistants, onClose, onSave }) {
  const [selectedPhotographers, setSelectedPhotographers] = useState(event?.photographers || []);
  const [selectedAssistants, setSelectedAssistants] = useState(event?.assistants || []);
  const [noAssistant, setNoAssistant] = useState(Boolean(event?.noAssistant));
  if (!event) return null;

  const toggle = (name, setter) => setter(prev => prev.includes(name) ? prev.filter(item => item !== name) : [...prev, name]);
  const save = () => {
    const nextPhotographers = selectedPhotographers.map(canonicalPhotographerName).filter(Boolean);
    const next = {
      ...event,
      photographers: Array.from(new Set(nextPhotographers)),
      assistants: noAssistant ? [] : selectedAssistants,
      noAssistant,
      status: nextPhotographers.length ? 'Scheduled' : 'Needs Photographers Assigned'
    };
    onSave(next);
  };

  return (
    <div className="fixed inset-0 z-50 flex items-end justify-center bg-zinc-950/30 p-3 sm:items-center">
      <div className="w-full max-w-xl rounded-[2rem] border border-zinc-200 bg-white p-5 shadow-2xl">
        <div className="flex items-start justify-between gap-3">
          <div>
            <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Quick Assignment</div>
            <h2 className="mt-1 text-xl font-black text-zinc-950">{event.title}</h2>
            <p className="mt-1 text-sm text-zinc-500">{getEventDateLabel(event)} · {getEventTimeLabel(event)}</p>
          </div>
          <button type="button" onClick={onClose} className="rounded-full border border-zinc-200 bg-white p-2 text-zinc-500"><X size={18} /></button>
        </div>

        {mode === 'needs-photographers' ? (
          <section className="mt-4">
            <h3 className="text-sm font-bold text-zinc-900">Photographer(s)</h3>
            <div className="mt-2 flex flex-wrap gap-2">
              {photographers.map(name => {
                const canonical = canonicalPhotographerName(name);
                const selected = selectedPhotographers.map(canonicalPhotographerName).includes(canonical);
                return <button key={name} type="button" onClick={() => toggle(canonical, setSelectedPhotographers)} className={`rounded-full border px-3 py-2 text-sm font-semibold ${selected ? 'border-zinc-900 bg-zinc-900 text-white' : 'border-zinc-200 bg-white text-zinc-700'}`}>{canonical}</button>;
              })}
            </div>
          </section>
        ) : null}

        <section className="mt-4">
          <div className="flex items-center justify-between gap-3">
            <h3 className="text-sm font-bold text-zinc-900">Assistant(s)</h3>
            <button type="button" onClick={() => setNoAssistant(prev => !prev)} className={`rounded-full border px-3 py-1.5 text-xs font-bold ${noAssistant ? 'border-zinc-900 bg-zinc-900 text-white' : 'border-zinc-200 bg-white text-zinc-600'}`}>No Assistant</button>
          </div>
          <div className="mt-2 flex flex-wrap gap-2">
            {assistants.map(name => (
              <button key={name} type="button" onClick={() => { setNoAssistant(false); toggle(name, setSelectedAssistants); }} className={`rounded-full border px-3 py-2 text-sm font-semibold ${!noAssistant && selectedAssistants.includes(name) ? 'border-[#AEBB9E] bg-[#DDE8D2] text-zinc-900' : 'border-zinc-200 bg-white text-zinc-700'}`}>{name}</button>
            ))}
          </div>
        </section>

        <div className="mt-5 flex justify-end gap-2">
          <button type="button" onClick={onClose} className="rounded-2xl border border-zinc-200 bg-white px-4 py-2 text-sm font-semibold text-zinc-600">Cancel</button>
          <button type="button" onClick={save} className="rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white">Save Assignment</button>
        </div>
      </div>
    </div>
  );
}

function PlanningBoard({ events, onClick, onAddEvent, onQuickAssign, canEdit = true }) {
  const overviewColumns = [
    {
      key: 'needs-photographers',
      title: 'Need Photographer(s) Assigned',
      filter: (event) => isNeedsPhotographerAssignment(event)
    },
    {
      key: 'needs-assistant',
      title: 'Need Assistant(s) Assigned',
      filter: (event) => isNeedsAssistantAssignment(event)
    },
    {
      key: 'rain-watch',
      title: 'Rain Watch',
      filter: (event) => isRainWatchEvent(event)
    }
  ];

  return (
    <div className="space-y-4">
      {canEdit ? (
        <div className="flex justify-end">
          <button type="button" onClick={onAddEvent} className="inline-flex items-center gap-2 rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5"><Plus size={16} /> Add Event</button>
        </div>
      ) : null}
      <div className="grid gap-4 lg:grid-cols-3">
      {overviewColumns.map(column => {
        const columnEvents = events.filter(column.filter);
        return (
          <div key={column.key} className="rounded-3xl border border-zinc-200/80 bg-white/45 p-3">
            <div className="mb-3 flex items-center justify-between">
              <h2 className="text-sm font-semibold text-zinc-800">{column.title}</h2>
              <Pill className="border-zinc-200 bg-white text-zinc-600">{columnEvents.length}</Pill>
            </div>
            <div className="space-y-2 md:max-h-[430px] md:overflow-y-auto md:pr-1">{columnEvents.map(event => {
              const isQuickColumn = ['needs-photographers', 'needs-assistant'].includes(column.key);
              return <EventCard key={event.id} event={event} onClick={onClick} onAction={canEdit && isQuickColumn ? (clickedEvent) => onQuickAssign?.(clickedEvent, column.key) : null} />;
            })}</div>
          </div>
        );
      })}
      </div>
    </div>
  );
}

const SCHEDULE_LIVE_SESSION_ID = 'main';
const SCHEDULE_LIVE_HOLD_STATUS = 'Shelved! Needs Discussion Later';
const SCHEDULE_LIVE_COMPLETE_STATUS = 'Schedule Live Complete';
const SCHEDULE_LIVE_COMMENTARY_RETENTION_DAYS = 15;

function getCleanScheduleLiveCommentary(commentary = []) {
  const cutoff = Date.now() - SCHEDULE_LIVE_COMMENTARY_RETENTION_DAYS * 24 * 60 * 60 * 1000;
  return (Array.isArray(commentary) ? commentary : [])
    .filter(entry => {
      const savedAt = entry?.savedAt ? new Date(entry.savedAt).getTime() : 0;
      return savedAt && savedAt >= cutoff;
    })
    .slice(0, 40);
}

function cleanScheduleLiveState(state = {}) {
  return {
    ...state,
    commentary: getCleanScheduleLiveCommentary(state.commentary)
  };
}

function getMondayStart(date = todayKey()) {
  const d = new Date(`${date}T12:00:00`);
  const day = d.getDay();
  const diff = day === 0 ? -6 : 1 - day;
  d.setDate(d.getDate() + diff);
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`;
}

function scheduleLiveDefaultState(date = todayKey()) {
  return {
    weekStart: getMondayStart(date),
    showWeekends: false,
    hostEmail: '',
    hostName: '',
    commentary: [],
    activeUsers: {}
  };
}

function getScheduleLiveSessionMonthLabel(weekStart) {
  return monthLabel(monthKey(weekStart || todayKey()));
}

function getScheduleLiveDays(weekStart, showWeekends) {
  const start = getMondayStart(weekStart || todayKey());
  const count = showWeekends ? 7 : 5;
  return Array.from({ length: count }, (_, index) => addDays(start, index));
}

function getScheduleLiveWeekLabel(weekStart, showWeekends) {
  const days = getScheduleLiveDays(weekStart, showWeekends);
  return `${shortDate(days[0])} – ${shortDate(days[days.length - 1])}`;
}

function getScheduleLiveMonthEvents(events, weekStart) {
  const targetMonth = monthKey(weekStart || todayKey());
  return (events || []).filter(event => event && event.active !== false && monthKey(event.date) === targetMonth && isRolloutEvent(event));
}

function getScheduleLiveProgress(events, weekStart) {
  const monthEvents = getScheduleLiveMonthEvents(events, weekStart);
  const total = monthEvents.length;
  const assigned = monthEvents.filter(event => event.status === SCHEDULE_LIVE_COMPLETE_STATUS || eventMeetsPhotographerRequirement(event)).length;
  const pct = total ? Math.round((assigned / total) * 100) : 0;
  return { total, assigned, pct };
}

function getScheduleLiveHistoricalRows(event, events) {
  const key = normalizeSchoolLookupKey(event?.canonicalSchool || event?.title || '');
  if (!key) return [];
  const seen = new Set();
  return (events || [])
    .filter(item => item && item.id !== event.id && item.date && String(item.date).localeCompare(String(event.date || '9999-12-31')) < 0)
    .filter(item => ['Fall Picture Day', 'Spring Picture Day', 'Makeup Day', 'Sports', 'Seniors'].includes(item.type))
    .filter(item => {
      const itemKey = normalizeSchoolLookupKey(item.canonicalSchool || item.title || '');
      return itemKey && (itemKey.includes(key) || key.includes(itemKey));
    })
    .sort((a, b) => String(b.date || '').localeCompare(String(a.date || '')))
    .filter(item => {
      const names = uniqueCanonicalPhotographers(item.photographers || []).join(', ');
      const dedupeKey = `${item.date}|${item.type}|${names}`;
      if (seen.has(dedupeKey)) return false;
      seen.add(dedupeKey);
      return true;
    })
    .slice(0, 4)
    .map(item => ({
      date: item.date,
      title: item.title,
      type: item.type,
      photographers: uniqueCanonicalPhotographers(item.photographers || [])
    }));
}

function getMakeupSourcePictureDay(event, events) {
  if (event?.type !== 'Makeup Day') return null;
  const key = normalizeSchoolLookupKey(event?.canonicalSchool || event?.title || '');
  const year = String(event?.date || '').slice(0, 4);
  if (!key || !year) return null;
  return (events || [])
    .filter(item => item && item.id !== event.id && String(item.date || '').startsWith(year))
    .filter(item => ['Fall Picture Day', 'Spring Picture Day'].includes(item.type))
    .filter(item => String(item.date || '').localeCompare(String(event.date || '9999-12-31')) <= 0)
    .filter(item => {
      const itemKey = normalizeSchoolLookupKey(item.canonicalSchool || item.title || '');
      return itemKey && (itemKey.includes(key) || key.includes(itemKey));
    })
    .sort((a, b) => String(b.date || '').localeCompare(String(a.date || '')))[0] || null;
}

function ScheduleLiveEventCard({ event, occurrenceDate = '', events, photographers, assistants = [], onClickEvent, onAssignPhotographer, onRemovePhotographer, onAssignAssistant, onRemoveAssistant, onToggleHold, onToggleComplete, onUpdateRequirements, canEdit = true, draggedPhotographer, setDraggedPhotographer }) {
  const [expandedInfo, setExpandedInfo] = useState(false);
  const [expandedHistory, setExpandedHistory] = useState(false);
  const assigned = getScheduleLivePhotographersForDate(event, occurrenceDate);
  const assignedAssistants = getScheduleLiveAssistantsForDate(event, occurrenceDate);
  const requiredPhotographers = getRequiredPhotographerCount(event);
  const requiredAssistants = getRequiredAssistantCount(event);
  const needsMorePhotographers = assigned.length < requiredPhotographers;
  const history = getScheduleLiveHistoricalRows(event, events);
  const makeupSource = getMakeupSourcePictureDay(event, events);
  const makeupPhotographers = uniqueCanonicalPhotographers(makeupSource?.photographers || []);
  const isHeld = event.status === SCHEDULE_LIVE_HOLD_STATUS;
  const isMarkedComplete = event.status === SCHEDULE_LIVE_COMPLETE_STATUS;
  const isAutoComplete = scheduleLiveDateMeetsPhotographerRequirement(event, occurrenceDate) && requiredAssistants >= 0 && !isHeld;
  const isComplete = isMarkedComplete || isAutoComplete;

  const assign = (name) => {
    if (!canEdit || !name) return;
    onAssignPhotographer(event, canonicalPhotographerName(name), occurrenceDate);
  };

  const assignAssistant = (name) => {
    if (!canEdit || !name) return;
    onAssignAssistant?.(event, name, occurrenceDate);
  };

  return (
    <motion.article
      layout
      onDragOver={(e) => { if (canEdit && draggedPhotographer) e.preventDefault(); }}
      onDrop={(e) => { e.preventDefault(); if (draggedPhotographer) assign(draggedPhotographer); setDraggedPhotographer?.(''); }}
      className={`group relative overflow-hidden rounded-2xl border bg-white p-2 text-left shadow-md shadow-zinc-950/10 transition hover:-translate-y-0.5 hover:shadow-xl ${isHeld ? 'border-yellow-300 ring-2 ring-yellow-300/50' : isComplete ? 'border-emerald-200 opacity-60 ring-1 ring-emerald-200/70' : 'border-white/70'}`}
    >
      <div className={`absolute inset-x-0 top-0 h-1 ${TYPE_COLORS[event.type] || 'bg-zinc-200'}`} />
      {isComplete ? <div className="pointer-events-none absolute inset-0 bg-[linear-gradient(135deg,transparent_47%,rgba(22,163,74,0.18)_49%,rgba(22,163,74,0.18)_51%,transparent_53%)]" /> : null}
      <div className="pt-1">
        <div className="flex items-start justify-between gap-2">
          <button type="button" title={event.title} onClick={() => onClickEvent(event)} className="min-w-0 flex-1 truncate text-left text-[13px] font-black leading-tight text-zinc-950 hover:underline">{event.title}</button>
          {getEventIrm(event) ? <Pill className="shrink-0 border-amber-200 bg-amber-50 px-2 py-0.5 text-[10px] text-amber-900">IRM {getEventIrm(event)}</Pill> : null}
        </div>
        <div className="mt-1 flex flex-wrap gap-x-2 gap-y-0.5 text-[10px] font-bold uppercase tracking-wide text-zinc-500">
          <span>{event.type}</span>
          <span>{getEventTimeLabel(event)}</span>
          
        </div>
      </div>

      <div className="mt-2 flex flex-wrap gap-1.5">
        {assigned.length ? assigned.map(name => (
          <span key={name} className="inline-flex items-center gap-1 rounded-full border border-zinc-300 bg-white px-2 py-1 text-[11px] font-bold text-zinc-800">
            {name}
            {canEdit ? <button type="button" onClick={() => onRemovePhotographer(event, name, occurrenceDate)} className="text-zinc-400 hover:text-rose-600">×</button> : null}
          </span>
        )) : null}
        {assignedAssistants.length ? assignedAssistants.map(name => (
          <span key={`assistant-${name}`} className="inline-flex items-center gap-1 rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/70 px-2 py-1 text-[11px] font-bold text-zinc-800">
            Asst: {name}
            {canEdit ? <button type="button" onClick={() => onRemoveAssistant?.(event, name, occurrenceDate)} className="text-zinc-400 hover:text-rose-600">×</button> : null}
          </span>
        )) : null}
        {needsMorePhotographers ? <span className="rounded-full border border-rose-200 bg-rose-50 px-2 py-1 text-[11px] font-black text-rose-700">Needs {requiredPhotographers - assigned.length} Photographer{requiredPhotographers - assigned.length === 1 ? '' : 's'}</span> : null}
        {isComplete ? <span className="rounded-full border border-emerald-200 bg-emerald-50 px-2 py-1 text-[11px] font-black text-emerald-700">Complete</span> : null}
      </div>

      <div className="mt-2 text-[11px] font-semibold text-zinc-600">
        Need: {getRequirementStatusLabel(event)}
      </div>

      {canEdit ? (
        <div className="mt-2 grid grid-cols-2 gap-1.5">
          <label className="rounded-xl border border-zinc-200 bg-white px-2 py-1">
            <div className="text-[9px] font-black uppercase tracking-wide text-zinc-400">Photogs Required</div>
            <select value={requiredPhotographers} onChange={(e) => onUpdateRequirements?.(event, { requiredPhotographers: Number(e.target.value), requiredAssistants })} className="mt-0.5 w-full bg-transparent text-[11px] font-black text-zinc-800 outline-none">
              {[1,2,3,4,5,6].map(count => <option key={count} value={count}>{count}</option>)}
            </select>
          </label>
          <label className="rounded-xl border border-zinc-200 bg-white px-2 py-1">
            <div className="text-[9px] font-black uppercase tracking-wide text-zinc-400">Assts Needed</div>
            <select value={requiredAssistants} onChange={(e) => onUpdateRequirements?.(event, { requiredPhotographers, requiredAssistants: Number(e.target.value) })} className="mt-0.5 w-full bg-transparent text-[11px] font-black text-zinc-800 outline-none">
              {[0,1,2,3,4,5,6].map(count => <option key={count} value={count}>{count}</option>)}
            </select>
          </label>
        </div>
      ) : null}

      {canEdit ? (
        <div className="mt-2 grid grid-cols-2 gap-1.5">
          <select value="" onChange={(e) => { assign(e.target.value); e.target.value = ''; }} className="w-full rounded-xl border border-zinc-200 bg-white px-2 py-1.5 text-xs font-bold text-zinc-800 outline-none ring-[#AEBB9E]/30 focus:ring-4">
            <option value="">Assign photographer...</option>
            {photographers.map(name => <option key={name} value={name}>{canonicalPhotographerName(name)}</option>)}
          </select>
          {requiredAssistants > 0 && !event.noAssistant ? (
            <select value="" onChange={(e) => { assignAssistant(e.target.value); e.target.value = ''; }} className="w-full rounded-xl border border-zinc-200 bg-white px-2 py-1.5 text-xs font-bold text-zinc-800 outline-none ring-[#AEBB9E]/30 focus:ring-4">
              <option value="">Assign assistant...</option>
              {assistants.map(name => <option key={name} value={name}>{name}</option>)}
            </select>
          ) : (
            <div className="rounded-xl border border-zinc-200 bg-zinc-50 px-2 py-1.5 text-xs font-bold text-zinc-500">No assistant needed</div>
          )}
        </div>
      ) : null}

      {makeupPhotographers.length ? (
        <div className="mt-2 rounded-xl border border-rose-200 bg-rose-50/80 p-2 text-[11px] text-rose-900">
          <div className="font-black uppercase tracking-wide">Makeup shortcut</div>
          <div className="mt-1">Picture Day crew: {makeupPhotographers.join(', ')}</div>
          {canEdit ? <button type="button" onClick={() => makeupPhotographers.forEach(assign)} className="mt-2 rounded-full bg-rose-600 px-3 py-1 text-[10px] font-black text-white shadow-sm">Use same</button> : null}
        </div>
      ) : null}

      <div className="mt-2 flex flex-wrap gap-1.5">
        <button type="button" onClick={() => setExpandedHistory(prev => !prev)} className="rounded-full border border-zinc-200 bg-white px-2 py-1 text-[10px] font-bold text-zinc-700">Past</button>
        <button type="button" onClick={() => setExpandedInfo(prev => !prev)} className="rounded-full border border-zinc-200 bg-white px-2 py-1 text-[10px] font-bold text-zinc-700">Info</button>
        {canEdit ? <button type="button" onClick={() => onToggleHold(event)} className={`rounded-full border px-2 py-1 text-[10px] font-black ${isHeld ? 'border-yellow-300 bg-yellow-200 text-yellow-950' : 'border-yellow-300 bg-yellow-100 text-yellow-950'}`}>{isHeld ? 'Return' : 'Shelve'}</button> : null}
        {canEdit ? <button type="button" onClick={() => onToggleComplete?.(event)} className={`rounded-full border px-2 py-1 text-[10px] font-black ${isMarkedComplete ? 'border-emerald-300 bg-emerald-100 text-emerald-900' : 'border-emerald-200 bg-white text-emerald-700'}`}>{isMarkedComplete ? 'Reopen' : 'Done'}</button> : null}
      </div>

      <AnimatePresence>
        {expandedHistory ? (
          <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: 'auto' }} exit={{ opacity: 0, height: 0 }} className="mt-2 overflow-hidden rounded-xl border border-zinc-200 bg-white/80 p-2 text-[11px] text-zinc-700">
            {history.length ? history.map(row => <div key={`${row.date}-${row.title}`} className="py-0.5"><span className="font-black">{row.date ? shortDate(row.date) : 'Past'}</span>{row.type ? <span className="text-zinc-400"> · {row.type}</span> : null} — {row.photographers.length ? row.photographers.join(', ') : 'No photographer listed'}</div>) : <div className="text-zinc-500">No past photographer history found.</div>}
          </motion.div>
        ) : null}
        {expandedInfo ? (
          <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: 'auto' }} exit={{ opacity: 0, height: 0 }} className="mt-2 overflow-hidden rounded-xl border border-zinc-200 bg-white/80 p-2 text-[11px] leading-5 text-zinc-700">
            {event.notes ? <div className="whitespace-pre-wrap">{event.notes}</div> : <div className="text-zinc-500">No Picture Day Info entered.</div>}
            {stripInternalEventMeta(event.history) ? <div className="mt-2 whitespace-pre-wrap border-t border-zinc-100 pt-2 text-zinc-500">{stripInternalEventMeta(event.history)}</div> : null}
          </motion.div>
        ) : null}
      </AnimatePresence>
    </motion.article>
  );
}

function ScheduleLiveView({ events, photographers, assistants = [], onClickEvent, onSchedule, onAddEvent, authEmail, isAdminUser, canEdit = true, reloadEvents }) {
  const [liveState, setLiveState] = useState(() => scheduleLiveDefaultState(todayKey()));
  const [statusMessage, setStatusMessage] = useState('');
  const [commentText, setCommentText] = useState('');
  const [draggedPhotographer, setDraggedPhotographer] = useState('');
  const [selectedPhotographer, setSelectedPhotographer] = useState('');
  const liveStateRef = useRef(liveState);

  useEffect(() => {
    liveStateRef.current = liveState;
  }, [liveState]);

  const currentUserName = displayNameFromEmail(authEmail || '');
  const isHost = liveState.hostEmail && authEmail && liveState.hostEmail === authEmail;
  const canHost = isAdminUser;
  const canControlWeek = isHost || (!liveState.hostEmail && canHost);

  const saveLiveState = async (updater) => {
    const baseState = liveStateRef.current || liveState;
    const rawNext = typeof updater === 'function' ? updater(baseState) : { ...baseState, ...updater };
    const next = cleanScheduleLiveState(rawNext);
    const activeUsers = {
      ...(next.activeUsers || {}),
      ...(authEmail ? { [authEmail]: { name: currentUserName, email: authEmail, seenAt: new Date().toISOString() } } : {})
    };
    const cleanNext = { ...next, activeUsers };
    liveStateRef.current = cleanNext;
    setLiveState(cleanNext);

    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setStatusMessage('Schedule Live is running locally because Supabase is not connected.');
      return cleanNext;
    }

    const { error } = await supabase
      .from('schedule_live_sessions')
      .upsert({ id: SCHEDULE_LIVE_SESSION_ID, data: cleanNext, updated_at: new Date().toISOString() }, { onConflict: 'id' });

    if (error) {
      setStatusMessage(`Schedule Live shared session needs setup: ${error.message}. Assignments still save to events.`);
    } else {
      setStatusMessage('Schedule Live session synced.');
    }
    return cleanNext;
  };

  useEffect(() => {
    let cancelled = false;
    const supabase = createClient();

    async function loadSession() {
      if (!hasSupabaseEnv() || !supabase) return;
      const { data, error } = await supabase
        .from('schedule_live_sessions')
        .select('data')
        .eq('id', SCHEDULE_LIVE_SESSION_ID)
        .maybeSingle();
      if (cancelled) return;
      if (error) {
        setStatusMessage(`Run the Schedule Live SQL setup to share host/commentary: ${error.message}`);
        return;
      }
      if (data?.data) { const incoming = cleanScheduleLiveState({ ...scheduleLiveDefaultState(todayKey()), ...data.data }); liveStateRef.current = incoming; setLiveState(incoming); }
      else await saveLiveState(scheduleLiveDefaultState(todayKey()));
    }

    loadSession();

    const channel = hasSupabaseEnv() && supabase
      ? supabase.channel('schedule-live-room')
        .on('postgres_changes', { event: '*', schema: 'public', table: 'schedule_live_sessions', filter: `id=eq.${SCHEDULE_LIVE_SESSION_ID}` }, payload => {
          const nextData = payload?.new?.data;
          if (nextData && !cancelled) { const incoming = cleanScheduleLiveState({ ...scheduleLiveDefaultState(todayKey()), ...nextData }); liveStateRef.current = incoming; setLiveState(incoming); }
        })
        .on('postgres_changes', { event: '*', schema: 'public', table: 'events' }, () => reloadEvents?.())
        .subscribe()
      : null;

    const heartbeat = window.setInterval(() => {
      saveLiveState(prev => ({ ...prev }));
    }, 25000);

    return () => {
      cancelled = true;
      window.clearInterval(heartbeat);
      if (channel && supabase) supabase.removeChannel(channel);
    };
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [authEmail]);

  const days = getScheduleLiveDays(liveState.weekStart, liveState.showWeekends);
  const weekEnd = days[days.length - 1];
  const weekEvents = (events || []).filter(event => event && event.date <= weekEnd && (event.endDate || event.date) >= days[0] && event.status !== SCHEDULE_LIVE_HOLD_STATUS);
  const heldEvents = (events || []).filter(event => event && event.status === SCHEDULE_LIVE_HOLD_STATUS && monthKey(event.date) === monthKey(liveState.weekStart));
  const weeklyRollouts = weekEvents.reduce((total, event) => total + getRolloutCount(event), 0);
  const capacity = getCapacityTone(weeklyRollouts);
  const pct = Math.min(100, Math.round((weeklyRollouts / WEEKLY_ROLLOUT_CAPACITY) * 100));
  const progress = getScheduleLiveProgress(events, liveState.weekStart);
  const activeUsers = Object.values(liveState.activeUsers || {})
    .filter(user => user?.seenAt && Date.now() - new Date(user.seenAt).getTime() < 120000)
    .sort((a, b) => String(a.name).localeCompare(String(b.name)));

  const countsByPhotographer = photographers.reduce((map, name) => {
    map[canonicalPhotographerName(name)] = 0;
    return map;
  }, {});
  weekEvents.forEach(event => uniqueCanonicalPhotographers(event.photographers || []).forEach(name => {
    countsByPhotographer[name] = (countsByPhotographer[name] || 0) + 1;
  }));

  const changeWeek = (delta) => {
    if (!canControlWeek) return;
    saveLiveState(prev => ({ ...prev, weekStart: addDays(getMondayStart(prev.weekStart), delta * 7) }));
  };

  const assignPhotographer = async (event, photographer, occurrenceDate = '') => {
    if (!canEdit || !photographer) return;
    const cleanName = canonicalPhotographerName(photographer);
    let nextEvent;
    if (occurrenceDate && isMultiDayScheduleEvent(event)) {
      const currentForDay = getScheduleLivePhotographersForDate(event, occurrenceDate);
      const nextPhotographers = Array.from(new Set([...currentForDay, cleanName]));
      nextEvent = setScheduleLiveAssignmentForDate(event, occurrenceDate, { photographers: nextPhotographers, assistants: getScheduleLiveAssistantsForDate(event, occurrenceDate) });
    } else {
      const nextPhotographers = Array.from(new Set([...uniqueCanonicalPhotographers(event.photographers || []), cleanName]));
      nextEvent = { ...event, photographers: nextPhotographers };
    }
    await onSchedule({ ...nextEvent, status: scheduleLiveDateMeetsPhotographerRequirement(nextEvent, occurrenceDate) ? 'Scheduled' : 'Needs Photographers Assigned' });
    setSelectedPhotographer('');
  };

  const removePhotographer = async (event, photographer, occurrenceDate = '') => {
    if (!canEdit) return;
    let nextEvent;
    if (occurrenceDate && isMultiDayScheduleEvent(event)) {
      const nextPhotographers = getScheduleLivePhotographersForDate(event, occurrenceDate).filter(name => name !== canonicalPhotographerName(photographer));
      nextEvent = setScheduleLiveAssignmentForDate(event, occurrenceDate, { photographers: nextPhotographers, assistants: getScheduleLiveAssistantsForDate(event, occurrenceDate) });
    } else {
      const nextPhotographers = uniqueCanonicalPhotographers(event.photographers || []).filter(name => name !== canonicalPhotographerName(photographer));
      nextEvent = { ...event, photographers: nextPhotographers };
    }
    await onSchedule({ ...nextEvent, status: scheduleLiveDateMeetsPhotographerRequirement(nextEvent, occurrenceDate) ? 'Scheduled' : 'Needs Photographers Assigned' });
  };

  const assignAssistant = async (event, assistant, occurrenceDate = '') => {
    if (!canEdit || !assistant) return;
    if (occurrenceDate && isMultiDayScheduleEvent(event)) {
      const nextAssistants = Array.from(new Set([...getScheduleLiveAssistantsForDate(event, occurrenceDate), assistant]));
      await onSchedule(setScheduleLiveAssignmentForDate(event, occurrenceDate, { photographers: getScheduleLivePhotographersForDate(event, occurrenceDate), assistants: nextAssistants }));
      return;
    }
    const nextAssistants = Array.from(new Set([...(event.assistants || []).filter(Boolean), assistant]));
    await onSchedule({ ...event, assistants: nextAssistants });
  };

  const removeAssistant = async (event, assistant, occurrenceDate = '') => {
    if (!canEdit) return;
    if (occurrenceDate && isMultiDayScheduleEvent(event)) {
      const nextAssistants = getScheduleLiveAssistantsForDate(event, occurrenceDate).filter(name => name !== assistant);
      await onSchedule(setScheduleLiveAssignmentForDate(event, occurrenceDate, { photographers: getScheduleLivePhotographersForDate(event, occurrenceDate), assistants: nextAssistants }));
      return;
    }
    const nextAssistants = (event.assistants || []).filter(name => name !== assistant);
    await onSchedule({ ...event, assistants: nextAssistants });
  };

  const updateRequirements = async (event, counts = {}) => {
    if (!canEdit) return;
    const requiredPhotographers = Math.max(1, Math.min(6, Number(counts.requiredPhotographers ?? getRequiredPhotographerCount(event)) || 1));
    const requiredAssistants = Math.max(0, Math.min(6, Number(counts.requiredAssistants ?? getRequiredAssistantCount(event)) || 0));
    const nextEvent = { ...event, requiredPhotographers, requiredAssistants, noAssistant: requiredAssistants === 0 };
    await onSchedule({ ...nextEvent, status: eventMeetsPerDayPhotographerRequirement(nextEvent) ? 'Scheduled' : 'Needs Photographers Assigned' });
  };

  const toggleHold = async (event) => {
    if (!canEdit) return;
    const isHeld = event.status === SCHEDULE_LIVE_HOLD_STATUS;
    await onSchedule({ ...event, status: isHeld ? (eventMeetsPerDayPhotographerRequirement(event) ? 'Scheduled' : 'Needs Photographers Assigned') : SCHEDULE_LIVE_HOLD_STATUS });
  };

  const toggleComplete = async (event) => {
    if (!canEdit) return;
    const isComplete = event.status === SCHEDULE_LIVE_COMPLETE_STATUS;
    await onSchedule({ ...event, status: isComplete ? (eventMeetsPerDayPhotographerRequirement(event) ? 'Scheduled' : 'Needs Photographers Assigned') : SCHEDULE_LIVE_COMPLETE_STATUS });
  };

  const addCommentary = async () => {
    const body = commentText.trim();
    if (!body) return;
    const entry = { id: `comment-${Date.now()}`, name: currentUserName, email: authEmail || '', text: body, savedAt: new Date().toISOString() };
    setCommentText('');
    await saveLiveState(prev => ({ ...prev, commentary: [entry, ...getCleanScheduleLiveCommentary(prev.commentary)].slice(0, 40) }));
  };

  const clearCommentary = async () => {
    if (!isHost) return;
    const ok = window.confirm('Clear all commentary messages?\n\nThis cannot be undone.');
    if (!ok) return;
    await saveLiveState(prev => ({ ...prev, commentary: [] }));
  };

  return (
    <>
      <div className="space-y-3 sm:hidden">
        <section className="rounded-[2rem] border border-zinc-800 bg-zinc-950 p-4 text-white shadow-2xl">
          <div className="flex items-center justify-between gap-3">
            <div>
              <div className="text-xs font-black uppercase tracking-[0.2em] text-red-300">🔴 Schedule Live!</div>
              <h2 className="mt-1 text-xl font-black">{getScheduleLiveSessionMonthLabel(liveState.weekStart)}</h2>
              <p className="mt-0.5 text-xs font-semibold text-white/60">Week of {getScheduleLiveWeekLabel(liveState.weekStart, liveState.showWeekends)}</p>
            </div>
            <div className={`rounded-2xl border px-3 py-2 text-right ${capacity.className} bg-white text-zinc-900`}>
              <div className="text-[10px] font-black uppercase opacity-70">Rollouts</div>
              <div className="text-lg font-black">{weeklyRollouts}/{WEEKLY_ROLLOUT_CAPACITY}</div>
            </div>
          </div>
          <div className="mt-3 flex items-center justify-between gap-2 rounded-2xl border border-white/10 bg-white/10 p-2">
            <button type="button" disabled={!canControlWeek} onClick={() => changeWeek(-1)} className="rounded-full border border-white/15 bg-white/10 p-2 text-white disabled:opacity-40"><ChevronLeft size={18} /></button>
            <span className="text-center text-xs font-black text-white/80">{getScheduleLiveWeekLabel(liveState.weekStart, liveState.showWeekends)}</span>
            <button type="button" disabled={!canControlWeek} onClick={() => changeWeek(1)} className="rounded-full border border-white/15 bg-white/10 p-2 text-white disabled:opacity-40"><ChevronRight size={18} /></button>
            {canEdit ? <button type="button" onClick={() => onAddEvent?.(liveState.weekStart)} className="rounded-full border border-emerald-200 bg-white px-3 py-2 text-xs font-black text-zinc-950 shadow-sm">+ Add Event</button> : null}
          </div>
        </section>

        {days.map(date => {
          const dayEvents = weekEvents.filter(event => isDateInEventRange(event, date)).sort((a, b) => String(a.time || '').localeCompare(String(b.time || '')) || String(a.title || '').localeCompare(String(b.title || '')));
          return (
            <section key={`mobile-live-${date}`} className="rounded-[1.5rem] border border-zinc-200 bg-white/80 p-3 shadow-sm">
              <div className="mb-2 flex items-start justify-between gap-2">
                <div>
                  <div className="text-sm font-black text-zinc-950">{new Date(`${date}T12:00:00`).toLocaleDateString('en-US', { weekday: 'long', month: 'short', day: 'numeric' })}</div>
                  {getHolidayLabels(date).length ? <div className="mt-0.5 text-[10px] font-semibold italic text-zinc-500">{getHolidayLabels(date).join(', ')}</div> : null}
                </div>
                <span className="rounded-full bg-zinc-100 px-2 py-1 text-[10px] font-black text-zinc-600">{dayEvents.length}</span>
              </div>
              <div className="space-y-2">
                {dayEvents.length ? dayEvents.map(event => (
                  <button key={`${event.id}-${date}`} type="button" onClick={() => onClickEvent(event)} className={`w-full rounded-2xl border p-3 text-left shadow-sm ${TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}`}>
                    <div className="truncate text-sm font-black">{event.title}</div>
                    <div className="mt-1 text-xs font-semibold opacity-75">{getEventTimeLabel(event)}</div>
                    <div className="mt-2 grid gap-1 text-xs sm:grid-cols-2">
                      <div><span className="font-black">Photogs:</span> {getScheduleLivePhotographersForDate(event, date).length ? getScheduleLivePhotographersForDate(event, date).join(', ') : 'Unassigned'}</div>
                      <div><span className="font-black">Assistants:</span> {getScheduleLiveAssistantsForDate(event, date).length ? getScheduleLiveAssistantsForDate(event, date).join(', ') : 'None'}</div>
                    </div>
                  </button>
                )) : <div className="rounded-2xl border border-dashed border-zinc-200 bg-white/70 p-4 text-center text-sm text-zinc-500">No events this day.</div>}
              </div>
            </section>
          );
        })}
        {statusMessage ? <div className="rounded-2xl border border-zinc-200 bg-white/80 p-3 text-xs font-semibold text-zinc-500">{statusMessage}</div> : null}
      </div>

      <div className="schedule-live-stage hidden overflow-hidden rounded-[2rem] border border-[#AEBB9E]/35 bg-gradient-to-br from-[#000604] via-[#00120c] to-[#031b13] p-3 text-white shadow-2xl sm:block">
      <style jsx global>{`
        @keyframes scheduleLiveShimmer {
          0% { background-position: 0% 50%; }
          50% { background-position: 100% 50%; }
          100% { background-position: 0% 50%; }
        }
        @keyframes scheduleLivePulse {
          0%, 100% { box-shadow: 0 0 16px rgba(239, 68, 68, 0.38), 0 0 0 rgba(239, 68, 68, 0.20); transform: scale(1); }
          50% { box-shadow: 0 0 32px rgba(239, 68, 68, 0.70), 0 0 18px rgba(248, 113, 113, 0.35); transform: scale(1.035); }
        }
        @keyframes scheduleLiveGlow {
          0%, 100% { box-shadow: 0 0 18px rgba(255, 255, 255, 0.08), 0 0 20px rgba(255, 214, 10, 0.08); }
          50% { box-shadow: 0 0 26px rgba(255, 255, 255, 0.13), 0 0 30px rgba(255, 214, 10, 0.18); }
        }
        @keyframes scheduleLiveCommentIn {
          from { opacity: 0; transform: translateY(8px); }
          to { opacity: 1; transform: translateY(0); }
        }
        @keyframes scheduleLivePresencePulse {
          0%, 100% { box-shadow: 0 0 0 0 rgba(52, 211, 153, 0.40); }
          50% { box-shadow: 0 0 0 5px rgba(52, 211, 153, 0.00); }
        }
        .schedule-live-stage {
          background-size: 230% 230%;
          animation: scheduleLiveShimmer 18s ease-in-out infinite;
          position: relative;
        }
        .schedule-live-stage::before {
          content: '';
          position: absolute;
          inset: 0;
          pointer-events: none;
          background: radial-gradient(circle at 18% 12%, rgba(255, 214, 10, 0.12), transparent 24%), radial-gradient(circle at 88% 18%, rgba(239, 68, 68, 0.12), transparent 22%), radial-gradient(circle at 50% 105%, rgba(16, 185, 129, 0.12), transparent 32%);
        }
        .schedule-live-live-badge { animation: scheduleLivePulse 2.1s ease-in-out infinite; }
        .schedule-live-premium-glow { animation: scheduleLiveGlow 4.2s ease-in-out infinite; }
        .schedule-live-comment-card { animation: scheduleLiveCommentIn 260ms ease-out both; }
        .schedule-live-presence-dot { animation: scheduleLivePresencePulse 2.2s ease-in-out infinite; }
        @media (prefers-reduced-motion: reduce) {
          .schedule-live-stage, .schedule-live-live-badge, .schedule-live-premium-glow, .schedule-live-comment-card, .schedule-live-presence-dot { animation: none !important; }
        }
      `}</style>
      <div className="relative rounded-[1.65rem] border border-white/10 bg-white/[0.08] p-4 shadow-inner backdrop-blur">
        <div className="flex flex-col gap-4 xl:flex-row xl:items-start xl:justify-between">
          <div>
            <div className="schedule-live-live-badge inline-flex items-center gap-2 rounded-full border border-red-200/70 bg-red-500/30 px-3 py-1 text-xs font-black uppercase tracking-[0.22em] text-red-50 shadow-[0_0_26px_rgba(239,68,68,0.45)]"><span className="animate-pulse">🔴</span> Schedule Live!</div>
            <h2 className="mt-3 text-3xl font-black tracking-tight sm:text-4xl">{getScheduleLiveSessionMonthLabel(liveState.weekStart)} Scheduling Session</h2>
            <p className="mt-1 text-sm font-semibold text-red-100/80">Week of {getScheduleLiveWeekLabel(liveState.weekStart, liveState.showWeekends)}</p>
            <div className="mt-3 flex flex-wrap gap-2 text-xs font-bold text-white/80">
              <span className="rounded-full border border-white/15 bg-white/10 px-3 py-1">Host: {liveState.hostName || 'None yet'}</span>
              <span className="rounded-full border border-white/15 bg-white/10 px-3 py-1">Production schedule</span>
              <div className="flex flex-wrap items-center gap-1.5">
                {(activeUsers.length ? activeUsers : [{ name: currentUserName || 'You', email: authEmail || 'local', seenAt: new Date().toISOString() }]).map(user => {
                  const hostMatch = liveState.hostEmail && user.email && String(user.email).toLowerCase() === String(liveState.hostEmail).toLowerCase();
                  return (
                    <span key={user.email || user.name} className="inline-flex items-center gap-1 rounded-full border border-emerald-200/25 bg-emerald-300/10 px-2.5 py-1 text-[11px] font-black text-emerald-50">
                      <span className="schedule-live-presence-dot h-2 w-2 rounded-full bg-emerald-300" />
                      {user.name || displayNameFromEmail(user.email || '') || 'User'}{hostMatch ? ' 👑' : ''}
                    </span>
                  );
                })}
              </div>
            </div>
          </div>

          <div className="hidden gap-3 sm:grid sm:grid-cols-3 xl:min-w-[760px]">
            <div className={`schedule-live-premium-glow rounded-[1.5rem] border p-4 ${capacity.className} bg-white text-zinc-900`}>
              <div className="text-xs font-black uppercase tracking-wide opacity-70">Weekly Rollouts</div>
              <div className="mt-1 text-3xl font-black">{weeklyRollouts} / {WEEKLY_ROLLOUT_CAPACITY}</div>
              <div className="mt-3 h-2 overflow-hidden rounded-full bg-zinc-200"><div className={`h-full rounded-full ${capacity.barClassName}`} style={{ width: `${pct}%` }} /></div>
              <div className="mt-2 text-xs font-black">{WEEKLY_ROLLOUT_CAPACITY - weeklyRollouts >= 0 ? `${WEEKLY_ROLLOUT_CAPACITY - weeklyRollouts} remaining` : `${weeklyRollouts - WEEKLY_ROLLOUT_CAPACITY} over capacity`} · {capacity.label}</div>
              <div className="mt-3 border-t border-zinc-200/70 pt-2">
                <div className="mb-1 text-[10px] font-black uppercase tracking-wide opacity-60">Weekly Rollouts</div>
                <div className="flex flex-wrap gap-1.5">
                  {photographers.map(name => {
                    const canonical = canonicalPhotographerName(name);
                    const count = countsByPhotographer[canonical] || 0;
                    const selected = selectedPhotographer === canonical;
                    return <button key={canonical} type="button" draggable={canEdit} onDragStart={() => setDraggedPhotographer(canonical)} onDragEnd={() => setDraggedPhotographer('')} onClick={() => setSelectedPhotographer(selected ? '' : canonical)} className={`rounded-full border px-2.5 py-1 text-[11px] font-black transition ${selected ? 'border-red-500 bg-red-500 text-white shadow-sm' : 'border-zinc-200 bg-white text-zinc-800 hover:border-[#AEBB9E] hover:bg-[#DDE8D2]'}`}>
                      {canonical} <span className="tabular-nums">{count}</span>
                    </button>;
                  })}
                </div>
              </div>
            </div>
            <div className="schedule-live-premium-glow rounded-[1.5rem] border border-emerald-200 bg-emerald-50 p-4 text-emerald-950">
              <div className="text-xs font-black uppercase tracking-wide opacity-70">Scheduling Complete</div>
              <div className="mt-1 text-3xl font-black">{progress.pct}%</div>
              <div className="mt-3 h-2 overflow-hidden rounded-full bg-emerald-100"><div className="h-full rounded-full bg-emerald-500" style={{ width: `${progress.pct}%` }} /></div>
              <div className="mt-2 text-xs font-black">{progress.assigned} of {progress.total} {monthLabel(monthKey(liveState.weekStart))} events assigned</div>
            </div>
            <div className="schedule-live-premium-glow rounded-[1.5rem] border border-white/15 bg-white/10 p-4">
              <div className="text-xs font-black uppercase tracking-wide text-white/60">Host Controls</div>
              {canHost ? (
                <div className="mt-2 flex flex-col gap-2">
                  <button type="button" onClick={() => saveLiveState(prev => ({ ...prev, hostEmail: authEmail || '', hostName: currentUserName }))} className="rounded-2xl bg-red-500 px-3 py-2 text-sm font-black text-white shadow-lg shadow-red-950/30">{isHost ? 'Refresh Host' : 'Become Host'}</button>
                  {isHost ? <button type="button" onClick={() => saveLiveState(prev => ({ ...prev, hostEmail: '', hostName: '' }))} className="rounded-2xl border border-white/20 bg-white/10 px-3 py-2 text-sm font-black text-white">Release Host</button> : null}
                  {isHost ? <button type="button" onClick={clearCommentary} className="rounded-2xl border border-red-200/35 bg-red-950/35 px-3 py-2 text-sm font-black text-red-100 hover:bg-red-600 hover:text-white">🗑 Clear Commentary</button> : null}
                </div>
              ) : <div className="mt-2 text-sm font-semibold text-white/70">Admins control the shared week.</div>}
            </div>
          </div>
        </div>

        <div className="mt-4 grid grid-cols-2 gap-2 sm:hidden">
          <div className={`rounded-2xl border p-3 ${capacity.className} bg-white text-zinc-900`}>
            <div className="text-[10px] font-black uppercase tracking-wide opacity-70">Rollouts</div>
            <div className="mt-1 text-2xl font-black">{weeklyRollouts} / {WEEKLY_ROLLOUT_CAPACITY}</div>
          </div>
          <div className="rounded-2xl border border-emerald-200 bg-emerald-50 p-3 text-emerald-950">
            <div className="text-[10px] font-black uppercase tracking-wide opacity-70">Complete</div>
            <div className="mt-1 text-2xl font-black">{progress.pct}%</div>
          </div>
        </div>

        <div className="mt-5 hidden gap-3 sm:grid lg:grid-cols-[1fr_1fr]">
          <section className="schedule-live-premium-glow rounded-[1.5rem] border border-[#FFEA00] bg-[#FFEA00] p-3 text-zinc-950 shadow-lg shadow-yellow-950/20">
            <div className="flex items-center justify-between gap-2">
              <h3 className="text-sm font-black text-zinc-950">🟡 Shelved! Needs Discussion Later</h3>
              <span className="rounded-full bg-zinc-950 px-2 py-1 text-[10px] font-black text-[#FFEA00]">{heldEvents.length}</span>
            </div>
            <div className="mt-2 flex gap-2 overflow-x-auto pb-1">
              {heldEvents.length ? heldEvents.map(event => <button key={event.id} type="button" onClick={() => onClickEvent(event)} className="min-w-[220px] rounded-2xl border border-zinc-950/10 bg-white/85 p-3 text-left text-xs font-bold text-zinc-950 shadow-sm hover:bg-white"><div>{event.title}</div><div className="mt-1 text-zinc-700">{shortDate(event.date)} · {getEventTimeLabel(event)}</div>{canEdit ? <span onClick={(e) => { e.stopPropagation(); toggleHold(event); }} className="mt-2 inline-flex rounded-full bg-yellow-300 px-2 py-1 text-[10px] font-black text-yellow-950">Return to week</span> : null}</button>) : <div className="w-full rounded-2xl border border-dashed border-zinc-950/20 bg-white/35 p-4 text-center text-xs font-black text-zinc-800">Nothing shelved.</div>}
            </div>
          </section>

          <section className="schedule-live-premium-glow min-w-0 max-w-full overflow-hidden rounded-[1.5rem] border border-white/10 bg-white/10 p-3">
            <h3 className="text-sm font-black text-white">🎙 Live Commentary</h3>
            <div className="mt-2 flex gap-2">
              <input value={commentText} onChange={(e) => setCommentText(e.target.value)} onKeyDown={(e) => { if (e.key === 'Enter') addCommentary(); }} disabled={!authEmail} placeholder="Add live note..." className="min-w-0 flex-1 rounded-2xl border border-white/10 bg-white/90 px-3 py-2 text-sm text-zinc-900 outline-none" />
              <button type="button" onClick={addCommentary} disabled={!commentText.trim()} className="rounded-2xl bg-red-500 px-3 py-2 text-sm font-black text-white shadow-lg shadow-red-950/30 disabled:opacity-40">Add</button>
            </div>
            <div className="mt-2 flex max-h-[96px] max-w-full min-w-0 gap-2 overflow-x-auto overflow-y-auto pb-1 pr-1">
              {(liveState.commentary || []).length ? liveState.commentary.map(entry => (
                <div key={entry.id} className="schedule-live-comment-card w-[240px] min-w-[220px] max-w-[280px] shrink-0 rounded-2xl border border-white/10 bg-white/10 p-3 text-sm text-white">
                  <div className="text-[10px] font-black uppercase tracking-wide text-red-100/75">{entry.name || 'User'} • {new Date(entry.savedAt).toLocaleTimeString('en-US', { hour: 'numeric', minute: '2-digit' })}</div>
                  <div className="mt-1 max-h-10 overflow-hidden break-words text-xs leading-4 text-white/90 [overflow-wrap:anywhere]">{entry.text}</div>
                </div>
              )) : <div className="w-full rounded-2xl border border-dashed border-white/15 bg-white/5 p-4 text-center text-xs font-semibold text-white/45">No live commentary yet.</div>}
            </div>
          </section>
        </div>

        <div className="mt-4">
          <section className="min-w-0">
            <div className="mb-3 flex flex-col gap-3 rounded-[1.5rem] border border-white/10 bg-white/10 p-3 sm:flex-row sm:items-center sm:justify-between">
              <div className="flex flex-wrap items-center gap-2">
                <button type="button" disabled={!canControlWeek} onClick={() => changeWeek(-1)} className="rounded-full border border-white/15 bg-white/10 p-2 text-white disabled:opacity-40"><ChevronLeft size={18} /></button>
                <button type="button" disabled={!canControlWeek} onClick={() => changeWeek(1)} className="rounded-full border border-white/15 bg-white/10 p-2 text-white disabled:opacity-40"><ChevronRight size={18} /></button>
                <span className="rounded-full border border-white/15 bg-white/10 px-4 py-2 text-sm font-black text-white">{getScheduleLiveWeekLabel(liveState.weekStart, liveState.showWeekends)}</span>
                {canEdit ? <button type="button" onClick={() => onAddEvent?.(liveState.weekStart)} className="rounded-full border border-emerald-200 bg-white px-4 py-2 text-sm font-black text-zinc-950 shadow-sm transition hover:-translate-y-0.5 hover:bg-emerald-50">+ Add Event</button> : null}
              </div>
              <label className="inline-flex items-center gap-2 text-sm font-bold text-white/85">
                <input type="checkbox" checked={Boolean(liveState.showWeekends)} disabled={!canControlWeek} onChange={(e) => saveLiveState(prev => ({ ...prev, showWeekends: e.target.checked }))} />
                Show weekends
              </label>
            </div>

            <div className={`grid gap-2 sm:gap-3 ${liveState.showWeekends ? 'sm:grid-cols-2 xl:grid-cols-7' : 'sm:grid-cols-2 xl:grid-cols-5'}`}>
              {days.map(date => {
                const dayEvents = weekEvents.filter(event => isDateInEventRange(event, date)).sort((a, b) => String(a.time || '').localeCompare(String(b.time || '')) || String(a.title || '').localeCompare(String(b.title || '')));
                return <div key={date} className="min-h-[180px] rounded-[1.35rem] border border-white/10 bg-white/10 p-2 sm:min-h-[260px]">
                  <div className="mb-2 flex items-center justify-between gap-2">
                    <div>
                      <div className="text-sm font-black text-white">{new Date(`${date}T12:00:00`).toLocaleDateString('en-US', { weekday: 'long' })}</div>
                      <div className="text-xs font-semibold text-white/50">{shortDate(date)}</div>
                      {getHolidayLabels(date).length ? <div className="mt-0.5 space-y-0.5 text-[10px] font-semibold italic leading-tight text-emerald-100/75" title={getHolidayLabels(date).join(', ')}>{getHolidayLabels(date).map(label => <div key={label} className="truncate">{label}</div>)}</div> : null}
                    </div>
                    <span className="rounded-full bg-white/10 px-2 py-1 text-[10px] font-black text-white/70">{dayEvents.length}</span>
                  </div>
                  <div className="space-y-2">
                    {dayEvents.length ? dayEvents.map(event => <ScheduleLiveEventCard key={`${event.id}-${date}`} event={event} occurrenceDate={date} events={events} photographers={photographers} assistants={assistants} onClickEvent={onClickEvent} onAssignPhotographer={assignPhotographer} onRemovePhotographer={removePhotographer} onAssignAssistant={assignAssistant} onRemoveAssistant={removeAssistant} onToggleHold={toggleHold} onToggleComplete={toggleComplete} onUpdateRequirements={updateRequirements} canEdit={canEdit} draggedPhotographer={draggedPhotographer} setDraggedPhotographer={setDraggedPhotographer} />) : <div className="rounded-2xl border border-dashed border-white/15 bg-white/5 p-4 text-center text-xs font-semibold text-white/45">No events this day.</div>}
                  </div>
                </div>;
              })}
            </div>
          </section>

          {statusMessage ? <div className="mt-4 rounded-2xl border border-white/10 bg-white/10 p-3 text-xs font-semibold text-white/65">{statusMessage}</div> : null}
        </div>
      </div>
      </div>
    </>
  );
}

function buildMonthWeekSegments(events, weekDays, month = null) {
  const monthRange = month ? getMonthDateRange(month) : null;
  const weekStart = weekDays.find(Boolean);
  const weekEnd = [...weekDays].reverse().find(Boolean);
  if (!weekStart || !weekEnd) return [];

  const segments = (events || [])
    .filter(event => event && event.date && event.date <= weekEnd && (event.endDate || event.date) >= weekStart)
    .map(event => {
      const segmentStart = [event.date, weekStart, monthRange?.start].filter(Boolean).sort()[[event.date, weekStart, monthRange?.start].filter(Boolean).length - 1];
      const segmentEnd = [event.endDate || event.date, weekEnd, monthRange?.end].filter(Boolean).sort()[0];
      if (!segmentStart || !segmentEnd || segmentStart > segmentEnd) return null;
      const startCol = new Date(`${segmentStart}T12:00:00`).getDay();
      const endCol = new Date(`${segmentEnd}T12:00:00`).getDay();
      return {
        event,
        segmentStart,
        segmentEnd,
        startCol,
        endCol,
        span: Math.max(1, endCol - startCol + 1),
        isMultiDay: Boolean(event.endDate && event.endDate !== event.date)
      };
    })
    .filter(Boolean)
    .sort((a, b) => {
      const aDuration = getEventDateKeysInRange(a.event, a.segmentStart, a.segmentEnd).length;
      const bDuration = getEventDateKeysInRange(b.event, b.segmentStart, b.segmentEnd).length;
      return String(a.segmentStart).localeCompare(String(b.segmentStart)) || bDuration - aDuration || String(a.event.time || '').localeCompare(String(b.event.time || '')) || String(a.event.title || '').localeCompare(String(b.event.title || ''));
    });

  const occupiedRows = [];
  return segments.map(segment => {
    let row = 0;
    while (true) {
      occupiedRows[row] ||= Array(7).fill(false);
      const blocked = occupiedRows[row].some((occupied, col) => occupied && col >= segment.startCol && col <= segment.endCol);
      if (!blocked) break;
      row += 1;
    }
    for (let col = segment.startCol; col <= segment.endCol; col += 1) occupiedRows[row][col] = true;
    return { ...segment, row };
  });
}

function getCalendarMonthCells(month) {
  const [year, monthNumber] = month.split('-').map(Number);
  const offset = firstDayOffset(month);
  const totalDays = daysInMonth(month);
  const previousMonthDate = new Date(year, monthNumber - 2, 1, 12, 0, 0);
  const nextMonthDate = new Date(year, monthNumber, 1, 12, 0, 0);
  const previousMonth = `${previousMonthDate.getFullYear()}-${pad2(previousMonthDate.getMonth() + 1)}`;
  const nextMonth = `${nextMonthDate.getFullYear()}-${pad2(nextMonthDate.getMonth() + 1)}`;
  const previousTotal = daysInMonth(previousMonth);
  const cells = [
    ...Array.from({ length: offset }, (_, i) => ({ date: `${previousMonth}-${pad2(previousTotal - offset + i + 1)}`, inCurrentMonth: false })),
    ...Array.from({ length: totalDays }, (_, i) => ({ date: `${month}-${pad2(i + 1)}`, inCurrentMonth: true }))
  ];
  while (cells.length % 7 !== 0) cells.push({ date: `${nextMonth}-${pad2(cells.length - offset - totalDays + 1)}`, inCurrentMonth: false });
  return cells;
}

function MobileMonthView({ events, month, onClick, selectedDate, setSelectedDate, setViewMode, onAddEvent }) {
  const cells = getCalendarMonthCells(month);
  const weeks = [];
  for (let i = 0; i < cells.length; i += 7) weeks.push(cells.slice(i, i + 7));
  const dayNames = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];

  return (
    <div className="rounded-2xl border border-zinc-200 bg-white/70 p-1.5 shadow-sm sm:hidden">
      <div className="grid grid-cols-7 border-b border-zinc-200 pb-1 text-center text-[10px] font-black uppercase tracking-wide text-zinc-500">
        {dayNames.map((day, index) => <div key={`${day}-${index}`}>{day}</div>)}
      </div>
      <div className="mt-1 space-y-1">
        {weeks.map((weekDays, weekIndex) => {
          const dates = weekDays.map(cell => cell.date);
          const segments = buildMonthWeekSegments(events, dates, null);
          const visibleRows = Math.max(2, segments.reduce((max, segment) => Math.max(max, segment.row + 1), 0));
          const eventLayerTop = 22;
          const rowMinHeight = Math.max(72, eventLayerTop + 3 + (visibleRows * 19));
          return (
            <div key={`mobile-week-${weekIndex}`} className="relative grid grid-cols-7 overflow-hidden rounded-xl border border-zinc-100" style={{ minHeight: rowMinHeight }}>
              {weekDays.map((cell) => {
                const date = cell.date;
                const isSelected = selectedDate === date;
                const holidays = getHolidayLabels(date);
                return (
                  <button
                    key={date}
                    type="button"
                    onDoubleClick={() => { setSelectedDate(date); onAddEvent?.(date); }}
                    onClick={() => { setSelectedDate(date); setViewMode('Week'); }}
                    className={`relative min-h-[72px] border-r border-zinc-100 p-1 text-left last:border-r-0 ${isSelected ? 'bg-[#DDE8D2]/70' : cell.inCurrentMonth ? 'bg-white/45' : 'bg-zinc-50/70 opacity-60'}`}
                    title={holidays.length ? holidays.join(', ') : undefined}
                  >
                    <div className="absolute left-1 top-1 z-20 flex items-center gap-1">
                      <span className={`text-[10px] font-black leading-none ${isSelected ? 'text-zinc-950' : cell.inCurrentMonth ? 'text-zinc-650' : 'text-zinc-400'}`}>{Number(date.slice(-2))}</span>
                      {holidays.length ? <span className="h-1.5 w-1.5 rounded-full bg-zinc-400" aria-label={holidays.join(', ')} /> : null}
                    </div>
                  </button>
                );
              })}
              <div className="pointer-events-none absolute left-0 right-0 z-10 grid grid-cols-7 gap-x-0 gap-y-0.5 px-0.5" style={{ top: eventLayerTop }}>
                {segments.map(segment => {
                  const { event, segmentStart, segmentEnd, isMultiDay } = segment;
                  const startsOnTrueStart = segmentStart === event.date;
                  const endsOnTrueEnd = segmentEnd === (event.endDate || event.date);
                  const roundedClass = isMultiDay
                    ? `${startsOnTrueStart ? 'rounded-l-full' : 'rounded-l-sm'} ${endsOnTrueEnd ? 'rounded-r-full' : 'rounded-r-sm'}`
                    : 'rounded-full';
                  const labelPrefix = event.localBackupOnly ? '⚠ ' : isMultiDay ? '↳ ' : '';
                  return (
                    <button
                      key={`${event.id}-${segmentStart}-${segmentEnd}`}
                      type="button"
                      onClick={(e) => { e.stopPropagation(); onClick(event); }}
                      className={`pointer-events-auto relative min-w-0 overflow-hidden truncate border px-1 py-0.5 text-left text-[8px] font-bold leading-3 ${event.type === 'Studio Assigned Schools (SAS)' ? 'pl-2' : ''} ${roundedClass} ${TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}`}
                      style={{ gridColumn: `${segment.startCol + 1} / span ${segment.span}`, gridRow: segment.row + 1 }}
                      title={isMultiDay ? `${event.title} • ${getEventDateLabel(event)}` : event.title}
                    >
                      {event.type === 'Studio Assigned Schools (SAS)' ? <span className="absolute inset-y-0 left-0 w-1 bg-purple-950" aria-hidden="true" /> : null}
                      {labelPrefix}{event.title}
                    </button>
                  );
                })}
              </div>
            </div>
          );
        })}
      </div>
      <div className="mt-2 rounded-2xl border border-zinc-200 bg-cream/70 p-2">
        <div className="flex items-center justify-between gap-2">
          <div>
            <div className="text-[10px] font-black uppercase tracking-wide text-zinc-500">Selected Week</div>
            <div className="mt-0.5 text-xs font-black text-zinc-950">{shortDate(weekBounds(selectedDate).start)} – {shortDate(weekBounds(selectedDate).end)}</div>
          </div>
          <button type="button" onClick={() => setViewMode('Week')} className="rounded-full border border-zinc-200 bg-white px-3 py-1 text-[10px] font-black text-zinc-700">Open Week</button>
        </div>
      </div>
    </div>
  );
}

function MonthView({ events, month, onClick, selectedDate, setSelectedDate, setViewMode, onAddEvent }) {
  const cells = getCalendarMonthCells(month);
  const weeks = [];
  for (let i = 0; i < cells.length; i += 7) {
    weeks.push(cells.slice(i, i + 7));
  }

  return (
    <>
      <MobileMonthView events={events} month={month} onClick={onClick} selectedDate={selectedDate} setSelectedDate={setSelectedDate} setViewMode={setViewMode} onAddEvent={onAddEvent} />
      <div className="hidden overflow-x-auto rounded-3xl border border-zinc-200 bg-white/60 p-3 shadow-sm sm:block sm:p-4">
      <div className="min-w-[560px] sm:min-w-0">
        <div className="grid grid-cols-7 gap-2 text-center text-xs font-semibold uppercase tracking-wide text-zinc-500">
          {['Sun','Mon','Tue','Wed','Thu','Fri','Sat'].map(d => <div key={d}>{d}</div>)}
        </div>
        <div className="mt-2 space-y-2">
          {weeks.map((weekDays, weekIndex) => {
            const dates = weekDays.map(cell => cell.date);
            const segments = buildMonthWeekSegments(events, dates, null);
            const visibleRows = Math.max(3, segments.reduce((max, segment) => Math.max(max, segment.row + 1), 0));
            const hasHolidayInWeek = dates.some(date => date && getHolidayLabels(date).length);
            const eventLayerTop = hasHolidayInWeek ? 58 : 40;
            const rowMinHeight = Math.max(132, eventLayerTop + 18 + (visibleRows * 34));
            return (
              <div key={`week-${weekIndex}`} className="relative grid grid-cols-7 gap-2 overflow-hidden" style={{ minHeight: rowMinHeight }}>
                {weekDays.map((cell, index) => {
                  const date = cell.date;
                  const day = Number(date.slice(-2));
                  return (
                    <div
                      key={date}
                      onDoubleClick={() => { setSelectedDate(date); onAddEvent?.(date); }}
                      title="Double-click to add an event"
                      className={`min-h-[132px] rounded-2xl border p-2 transition ${selectedDate === date ? 'border-[#AEBB9E] bg-[#DDE8D2]/60' : cell.inCurrentMonth ? 'border-zinc-200 bg-cream/80' : 'border-zinc-200 bg-zinc-100/70 opacity-75 shadow-[inset_0_0_0_1px_rgba(255,255,255,0.6)]'}`}
                    >
                      <button type="button" onClick={() => { setSelectedDate(date); setViewMode('Day'); }} className={`mb-1 text-xs font-semibold hover:text-zinc-900 ${cell.inCurrentMonth ? 'text-zinc-500' : 'text-zinc-400'}`}>{day}</button>
                      <div className="relative z-20"><HolidayText date={date} /></div>
                    </div>
                  );
                })}

                <div className="pointer-events-none absolute left-0 right-0 z-10 grid grid-cols-7 gap-x-2 gap-y-1.5" style={{ top: eventLayerTop }}>
                  {segments.map(segment => {
                    const { event, segmentStart, segmentEnd, isMultiDay } = segment;
                    const startsOnTrueStart = segmentStart === event.date;
                    const endsOnTrueEnd = segmentEnd === (event.endDate || event.date);
                    const roundedClass = isMultiDay
                      ? `${startsOnTrueStart ? 'rounded-l-xl' : 'rounded-l-sm'} ${endsOnTrueEnd ? 'rounded-r-xl' : 'rounded-r-sm'}`
                      : 'rounded-xl';
                    const labelPrefix = event.localBackupOnly ? '⚠ ' : isMultiDay ? '↳ ' : '';
                    return (
                      <button
                        key={`${event.id}-${segmentStart}-${segmentEnd}`}
                        type="button"
                        onDoubleClick={(e) => e.stopPropagation()}
                        onClick={(e) => { e.stopPropagation(); onClick(event); }}
                        className={`pointer-events-auto relative min-w-0 overflow-hidden truncate border px-2 py-1.5 text-left text-[10px] font-medium shadow-[0_1px_0_rgba(255,255,255,0.65)_inset] ${event.type === 'Studio Assigned Schools (SAS)' ? 'pl-3' : ''} ${roundedClass} ${TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}`}
                        style={{ gridColumn: `${segment.startCol + 1} / span ${segment.span}`, gridRow: segment.row + 1 }}
                        title={isMultiDay ? `${event.title} • ${getEventDateLabel(event)}` : event.title}
                      >
                        {event.type === 'Studio Assigned Schools (SAS)' ? <span className="absolute inset-y-0 left-0 w-1.5 bg-purple-950" aria-hidden="true" /> : null}
                        {labelPrefix}{event.title}
                      </button>
                    );
                  })}
                </div>
              </div>
            );
          })}
        </div>
      </div>
        {events.length === 0 ? <div className="mt-4 rounded-2xl border border-dashed border-zinc-200 bg-white/60 p-4 text-center text-sm text-zinc-500">No events scheduled for {monthLabel(month)} yet.</div> : null}
      </div>
    </>
  );
}




const ROLLOUT_EVENT_TYPES = new Set([
  'Fall Picture Day',
  'Spring Picture Day',
  'Sports',
  'Seniors',
  'Makeup Day',
  'Rain Date',
  'Family Photos',
  'Special Event'
]);

function isNonRolloutOperationalEvent(event = {}) {
  const title = String(event.title || '').toLowerCase();
  const type = String(event.type || '').toLowerCase();
  return (
    type === 'call/meeting' ||
    type === 'call or meeting' ||
    type === 'edit day' ||
    type === 'photo booth' ||
    type === 'time off' ||
    type === 'personal appointment' ||
    /\b(call|meeting|huddle|interview|training|edit day|editing day|in-studio|in studio|do not book)\b/.test(title) ||
    /photo\s*booth/.test(title)
  );
}

function isRolloutEvent(event) {
  return event && ROLLOUT_EVENT_TYPES.has(event.type) && !isNonRolloutOperationalEvent(event);
}

function getAssignedPhotographerCount(event) {
  if (!Array.isArray(event?.photographers)) return 0;
  return uniqueCanonicalPhotographers(event.photographers).length;
}

function parseRequiredPhotographerCountFromTitle(title = '') {
  const text = String(title || '').toLowerCase();
  const match = text.match(/(\d+)\s*(?:photogs?|photographers?|teams?|set-?ups?)/i);
  if (match) return Math.max(1, Math.min(6, Number(match[1]) || 1));
  return 1;
}

function parseRequiredAssistantCountFromTitle(title = '') {
  const text = String(title || '').toLowerCase();
  if (/no\s+assist|no\s+asst|no\s+assistant/.test(text)) return 0;
  const match = text.match(/(\d+)\s*(?:assts?|assistants?)/i);
  if (match) return Math.max(0, Math.min(6, Number(match[1]) || 0));
  return 0;
}

function getRequiredPhotographerCount(event = {}) {
  if (isTimeOffEvent(event)) return 0;
  const explicit = Number(event.requiredPhotographers ?? event.required_photographers);
  if (Number.isFinite(explicit) && explicit > 0) return Math.max(1, Math.min(6, explicit));
  return Math.max(1, parseRequiredPhotographerCountFromTitle(event.title), getAssignedPhotographerCount(event));
}

function getRequiredAssistantCount(event = {}) {
  if (event.noAssistant) return 0;
  const explicit = Number(event.requiredAssistants ?? event.required_assistants);
  if (Number.isFinite(explicit) && explicit >= 0) return Math.max(0, Math.min(6, explicit));
  const assigned = Array.isArray(event.assistants) ? event.assistants.filter(Boolean).length : 0;
  return Math.max(parseRequiredAssistantCountFromTitle(event.title), assigned);
}

function getRequirementStatusLabel(event = {}) {
  const assignedPhotogs = getAssignedPhotographerCount(event);
  const requiredPhotogs = getRequiredPhotographerCount(event);
  const assignedAssistants = Array.isArray(event.assistants) ? event.assistants.filter(Boolean).length : 0;
  const requiredAssistants = getRequiredAssistantCount(event);
  const photogLabel = `${assignedPhotogs}/${requiredPhotogs} photographer${requiredPhotogs === 1 ? '' : 's'}`;
  const assistantLabel = event.noAssistant ? 'No assistant' : `${assignedAssistants}/${requiredAssistants} assistant${requiredAssistants === 1 ? '' : 's'}`;
  return `${photogLabel} · ${assistantLabel}`;
}

function eventMeetsPhotographerRequirement(event = {}) {
  return getAssignedPhotographerCount(event) >= getRequiredPhotographerCount(event);
}

function getRolloutCount(event) {
  if (!isRolloutEvent(event)) return 0;

  // Rollouts use the required photographer count when it has been set.
  // This lets Schedule Live show capacity accurately before every specific photographer is assigned.
  return Math.max(getAssignedPhotographerCount(event), getRequiredPhotographerCount(event));
}

function getRolloutCountForDate(events = [], dateKey = todayKey()) {
  return events
    .filter(event => isDateInEventRange(event, dateKey))
    .reduce((total, event) => total + getRolloutCount(event), 0);
}

function getRolloutCountForDateRange(events = [], startKey, endKey, { weekdaysOnly = false } = {}) {
  if (!startKey || !endKey) return 0;
  let total = 0;
  const cursor = new Date(`${startKey}T12:00:00`);
  const end = new Date(`${endKey}T12:00:00`);
  while (cursor <= end) {
    const day = cursor.getDay();
    if (!weekdaysOnly || (day !== 0 && day !== 6)) {
      total += getRolloutCountForDate(events, cursor.toISOString().slice(0, 10));
    }
    cursor.setDate(cursor.getDate() + 1);
  }
  return total;
}

function getCapacityTone(rollouts) {
  if (rollouts >= WEEKLY_ROLLOUT_CAPACITY) return {
    label: 'Overloaded',
    className: 'border-rose-200 bg-rose-50 text-rose-800',
    barClassName: 'bg-rose-500'
  };
  if (rollouts >= 17) return {
    label: 'Heavy',
    className: 'border-amber-200 bg-amber-50 text-amber-900',
    barClassName: 'bg-amber-500'
  };
  return {
    label: 'Light',
    className: 'border-emerald-200 bg-emerald-50 text-emerald-800',
    barClassName: 'bg-emerald-500'
  };
}

function getPhotographerRolloutSummaryForDateRange(events = [], startKey, endKey) {
  const counts = new Map();
  (events || []).forEach(event => {
    if (!event || !isRolloutEvent(event) || !startKey || !endKey) return;
    const eventStart = event.date || '';
    const eventEnd = event.endDate || event.date || '';
    if (!eventStart || eventStart > endKey || eventEnd < startKey) return;
    const datesInRange = getEventDateKeysInRange(event, startKey, endKey);
    const photographers = uniqueCanonicalPhotographers(event.photographers || []);
    if (!photographers.length) return;
    photographers.forEach(name => {
      counts.set(name, (counts.get(name) || 0) + datesInRange.length);
    });
  });
  return Array.from(counts).sort((a, b) => b[1] - a[1] || a[0].localeCompare(b[0]));
}

function RolloutBreakdownTooltip({ title = "This week's photographer load", start, end, summary = [] }) {
  return (
    <div className="pointer-events-none absolute right-3 top-full z-30 mt-3 w-72 translate-y-1 rounded-3xl border border-zinc-200 bg-white p-4 text-zinc-900 opacity-0 shadow-2xl transition group-hover:pointer-events-auto group-hover:translate-y-0 group-hover:opacity-100 group-focus-within:pointer-events-auto group-focus-within:translate-y-0 group-focus-within:opacity-100">
      <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">{title}</div>
      <div className="mt-1 text-sm font-semibold text-zinc-900">{shortDate(start)} – {shortDate(end)}</div>
      <div className="mt-3 space-y-2">
        {summary.length ? summary.map(([name, count]) => (
          <div key={name} className="flex items-center justify-between gap-3 rounded-2xl border border-zinc-100 bg-cream/70 px-3 py-2 text-sm">
            <span className="truncate font-medium">{name}</span>
            <span className="shrink-0 text-xs font-semibold text-zinc-500">{count} rollout{count === 1 ? '' : 's'}</span>
          </div>
        )) : (
          <div className="rounded-2xl border border-dashed border-zinc-200 bg-cream/70 p-3 text-sm text-zinc-500">No photographers assigned this week yet.</div>
        )}
      </div>
    </div>
  );
}


function getPhotographerWeekStats(events, date, photographer) {
  const { start, end } = weekBounds(date || todayKey());
  const canonicalPhotographer = canonicalPhotographerName(photographer);
  const weekEvents = (events || []).filter(event => event && event.date >= start && event.date <= end && uniqueCanonicalPhotographers(event.photographers || []).includes(canonicalPhotographer));
  const rollouts = weekEvents.reduce((total, event) => total + getRolloutCount(event), 0);
  const dayEvents = weekEvents.filter(event => event.date === date);
  return { rollouts, dayEvents, weekEvents };
}

function getRecentSchoolPhotographers(schoolName, events) {
  const key = normalizeSchoolLookupKey(schoolName);
  if (!key) return [];
  const matches = (events || [])
    .filter(event => {
      const eventKey = normalizeSchoolLookupKey(event?.canonicalSchool || event?.title || '');
      return eventKey && (eventKey.includes(key) || key.includes(eventKey));
    })
    .sort((a, b) => String(b.date || '').localeCompare(String(a.date || '')));

  const seen = new Set();
  const names = [];
  matches.forEach(event => uniqueCanonicalPhotographers(event.photographers || []).forEach(name => {
    if (name && !seen.has(name)) {
      seen.add(name);
      names.push(name);
    }
  }));
  return names.slice(0, 6);
}

function getSchoolPhotographerHistory(history = []) {
  const map = {};
  history.forEach(event => {
    uniqueCanonicalPhotographers(event.photographers || []).forEach(name => {
      if (!name) return;
      map[name] ||= { name, count: 0, lastDate: '', lastTitle: '' };
      map[name].count += 1;
      if (!map[name].lastDate || String(event.date || '').localeCompare(map[name].lastDate) > 0) {
        map[name].lastDate = event.date || '';
        map[name].lastTitle = event.title || '';
      }
    });
  });
  return Object.values(map).sort((a, b) => String(b.lastDate).localeCompare(String(a.lastDate)));
}

function PhotographerAssignmentPicker({ photographers, selectedPhotographers, setSelectedPhotographers, events = [], date, schoolName }) {
  const recent = getRecentSchoolPhotographers(schoolName, events);
  const toggle = (name) => setSelectedPhotographers(prev => prev.includes(name) ? prev.filter(item => item !== name) : [...prev, name]);
  return (
    <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
      <div className="flex flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
        <div>
          <h3 className="text-sm font-semibold text-zinc-900">Photographers Assigned</h3>
          <p className="mt-1 text-xs text-zinc-500">Shows selected-date week workload and flags people who recently photographed this school.</p>
        </div>
        {selectedPhotographers.length ? <Pill className="border-zinc-200 bg-cream text-zinc-700">{selectedPhotographers.length} rollout{selectedPhotographers.length === 1 ? '' : 's'}</Pill> : null}
      </div>
      <div className="mt-3 grid gap-2 sm:grid-cols-2 lg:grid-cols-3">
        {photographers.map(name => {
          const stats = getPhotographerWeekStats(events, date, name);
          const isSelected = selectedPhotographers.includes(name);
          const isRecent = recent.includes(name);
          return (
            <button key={name} type="button" onClick={() => toggle(name)} className={`rounded-2xl border p-3 text-left text-sm transition hover:-translate-y-0.5 hover:shadow-sm ${isSelected ? 'border-zinc-900 bg-zinc-900 text-white' : 'border-zinc-200 bg-white text-zinc-700 hover:bg-zinc-50'}`}>
              <div className="flex items-center justify-between gap-2">
                <span className="font-semibold">{name}</span>
                {isRecent ? <span className={`rounded-full px-2 py-0.5 text-[10px] font-semibold ${isSelected ? 'bg-white/15 text-white' : 'bg-[#DDE8D2] text-zinc-800'}`}>recent</span> : null}
              </div>
              <div className={`mt-1 text-xs ${isSelected ? 'text-white/70' : 'text-zinc-500'}`}>{stats.rollouts} rollout{stats.rollouts === 1 ? '' : 's'} this week{stats.dayEvents.length ? ` · ${stats.dayEvents.length} same-day` : ''}</div>
            </button>
          );
        })}
      </div>
    </section>
  );
}

function WeekView({ events, selectedDate, onClick }) {
  const { start, end } = weekBounds(selectedDate);
  const days = Array.from({ length: 7 }, (_, i) => addDays(start, i));
  const weekEvents = events.filter(event => event && event.date && event.date <= end && (event.endDate || event.date) >= start);
  const weeklyRollouts = getRolloutCountForDateRange(events, start, end);
  const photographerSummary = getPhotographerRolloutSummaryForDateRange(events, start, end);
  const capacity = getCapacityTone(weeklyRollouts);
  const pct = Math.min(100, Math.round((weeklyRollouts / WEEKLY_ROLLOUT_CAPACITY) * 100));
  const segments = buildMonthWeekSegments(events, days, null);
  const visibleRows = Math.max(4, segments.reduce((max, segment) => Math.max(max, segment.row + 1), 0));
  const hasHolidayInWeek = days.some(date => getHolidayLabels(date).length);
  const eventLayerTop = hasHolidayInWeek ? 64 : 44;
  const rowMinHeight = Math.max(220, eventLayerTop + 16 + (visibleRows * 34));

  return (
    <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4 shadow-sm">
      <div className="mb-4 flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
        <h2 className="text-sm font-semibold text-zinc-800">Week of {shortDate(start)} – {shortDate(end)}</h2>
        <div tabIndex={0} className={`group relative rounded-2xl border px-4 py-3 outline-none ${capacity.className}`}>
          <div className="flex items-center justify-between gap-4">
            <div>
              <div className="text-xs font-semibold uppercase tracking-wide opacity-75">Weekly Rollouts</div>
              <div className="mt-1 text-lg font-semibold">{weeklyRollouts} / {WEEKLY_ROLLOUT_CAPACITY}</div>
            </div>
            <Pill className="border-current bg-white/60 text-current">{capacity.label}</Pill>
          </div>
          <div className="mt-2 h-2 overflow-hidden rounded-full bg-white/70">
            <div className={`h-full rounded-full ${capacity.barClassName}`} style={{ width: `${pct}%` }} />
          </div>
          <RolloutBreakdownTooltip start={start} end={end} summary={photographerSummary} />
        </div>
      </div>

      <div className="overflow-x-auto rounded-3xl border border-zinc-200 bg-white/60 p-3 shadow-sm sm:p-4">
        <div className="min-w-[760px]">
          <div className="grid grid-cols-7 gap-2 text-center text-xs font-semibold uppercase tracking-wide text-zinc-500">
            {days.map(date => <div key={`heading-${date}`}>{new Date(`${date}T12:00:00`).toLocaleDateString('en-US', { weekday: 'short' })}</div>)}
          </div>
          <div className="mt-2 relative grid grid-cols-7 gap-2 overflow-hidden" style={{ minHeight: rowMinHeight }}>
            {days.map(date => (
              <div key={date} className="min-h-[220px] sm:min-h-[320px] rounded-2xl border border-zinc-200 bg-cream/80 p-2">
                <div className="mb-1 text-xs font-semibold text-zinc-500">{Number(date.slice(-2))}</div>
                <div className="relative z-20"><HolidayText date={date} /></div>
              </div>
            ))}
            <div className="pointer-events-none absolute left-0 right-0 z-10 grid grid-cols-7 gap-x-2 gap-y-1.5" style={{ top: eventLayerTop }}>
              {segments.map(segment => {
                const { event, segmentStart, segmentEnd, isMultiDay } = segment;
                const startsOnTrueStart = segmentStart === event.date;
                const endsOnTrueEnd = segmentEnd === (event.endDate || event.date);
                const roundedClass = isMultiDay
                  ? `${startsOnTrueStart ? 'rounded-l-xl' : 'rounded-l-sm'} ${endsOnTrueEnd ? 'rounded-r-xl' : 'rounded-r-sm'}`
                  : 'rounded-xl';
                const labelPrefix = event.localBackupOnly ? '⚠ ' : isMultiDay ? '↳ ' : '';
                return (
                  <button
                    key={`${event.id}-${segmentStart}-${segmentEnd}`}
                    type="button"
                    onClick={(e) => { e.stopPropagation(); onClick(event); }}
                    className={`pointer-events-auto relative min-w-0 overflow-hidden truncate border px-2 py-1.5 text-left text-[11px] font-medium shadow-[0_1px_0_rgba(255,255,255,0.65)_inset] ${event.type === 'Studio Assigned Schools (SAS)' ? 'pl-3' : ''} ${roundedClass} ${TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}`}
                    style={{ gridColumn: `${segment.startCol + 1} / span ${segment.span}`, gridRow: segment.row + 1 }}
                    title={isMultiDay ? `${event.title} • ${getEventDateLabel(event)}` : event.title}
                  >
                    {event.type === 'Studio Assigned Schools (SAS)' ? <span className="absolute inset-y-0 left-0 w-1.5 bg-purple-950" aria-hidden="true" /> : null}
                    {labelPrefix}{event.title}
                  </button>
                );
              })}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}

function DayView({ events, onClick, selectedDate }) {
  const dayEvents = events.filter(event => isDateInEventRange(event, selectedDate));
  if (!dayEvents.length) return (
    <div className="rounded-3xl border border-zinc-200 bg-white/60 p-8 text-center text-sm text-zinc-500 shadow-sm">
      <div className="mb-2 text-sm font-semibold text-zinc-800">{formatDate(selectedDate)}</div>
      <HolidayText date={selectedDate} />
      <div>No events scheduled yet.</div>
    </div>
  );
  return (
    <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4 shadow-sm">
      <h2 className="mb-1 text-sm font-semibold text-zinc-800">{formatDate(selectedDate)}</h2>
      <HolidayText date={selectedDate} />
      <div className="grid gap-3 md:grid-cols-2">{dayEvents.map(event => <EventCard key={event.id} event={event} onClick={onClick} />)}</div>
    </div>
  );
}




function schoolKey(value = '') {
  return String(value).toLowerCase().replace(/&/g, 'and').replace(/[^a-z0-9]+/g, ' ').trim();
}

function schoolMatchesEvent(schoolName, event) {
  const school = normalizeSchoolMatchKey(schoolName);
  const canonical = normalizeSchoolMatchKey(event?.canonicalSchool || '');
  const title = schoolKey(event?.title || '');
  const looseSchool = schoolKey(schoolName);
  if (!school && !looseSchool) return false;

  // Canonical school names are intentional. If an event already has a canonical
  // school label, only show it under that exact School List match/alias. This
  // prevents broad pages like "Duanesburg" from continuing to show events that
  // were reassigned to "Duanesburg MS/HS" or "Duanesburg Elementary".
  if (canonical) return canonical === school;

  // Older imported/unlinked events may not have a canonical school yet. For those
  // legacy records only, keep using the loose title fallback so history is not lost.
  if (title && looseSchool && title.includes(looseSchool)) return true;
  return false;
}

function getSchoolHistory(schoolName, events = EVENTS) {
  return events
    .filter(event => schoolMatchesEvent(schoolName, event))
    .sort((a, b) => a.date.localeCompare(b.date));
}

function getSchoolHistoryForNames(schoolNames = [], events = EVENTS) {
  const names = schoolNames.filter(Boolean);
  return events
    .filter(event => {
      // If an event has a true school_id link, do not let loose title/name matching
      // keep it attached to an old/generic school history after it is reassigned.
      if (event?.schoolId) return false;
      return names.some(name => schoolMatchesEvent(name, event));
    })
    .sort((a, b) => a.date.localeCompare(b.date));
}

function getSchoolHistoryForSchool(school = {}, mergedSourceSchools = [], events = EVENTS) {
  const linkedIds = new Set([school?.id, ...(mergedSourceSchools || []).map(item => item?.id)].filter(Boolean));
  const names = [school?.name, school?.originalName, ...(mergedSourceSchools || []).flatMap(item => [item?.name, item?.originalName])].filter(Boolean);
  return events
    .filter(event => {
      // True school links are authoritative. Once an event is linked to a canonical
      // school, it should move out of the old/generic school history immediately.
      if (event?.schoolId) return linkedIds.has(event.schoolId);
      return names.some(name => schoolMatchesEvent(name, event));
    })
    .sort((a, b) => a.date.localeCompare(b.date));
}

function normalizeSchoolOverride(school = {}, override = {}) {
  return {
    ...school,
    ...override,
    name: override.name || school.name,
    irm: override.irm ?? school.irm,
    notes: override.notes ?? school.notes,
    referenceImages: override.referenceImages ?? school.referenceImages ?? []
  };
}

function getSeasonLabel(date) {
  if (date >= '2025-03-01' && date <= '2025-06-30') return 'Spring 2025';
  if (date >= '2025-09-01' && date <= '2025-11-30') return 'Fall 2025';
  if (date >= '2026-03-01' && date <= '2026-06-30') return 'Spring 2026';
  if (date >= '2026-09-01' && date <= '2026-11-30') return 'Fall 2026';
  return date.slice(0, 4);
}


const DISTRICT_DISPLAY_NAMES = {
  'Albany': 'Albany School District',
  'Nisky': 'Niskayuna School District',
  'Shen': 'Shenendehowa School District',
  'Cairo-Durham': 'Cairo-Durham School District',
  'BKW': 'Berne-Knox-Westerlo School District',
  'Waterford-Halfmoon': 'Waterford-Halfmoon School District',
  'Duanesburg': 'Duanesburg School District'
};

const SCHOOL_DISPLAY_OVERRIDES = {
  'Albany - ASH': 'Albany School of Humanities (Albany School District)',
  'Albany - Arbor Hill': 'Arbor Hill Elementary School (Albany School District)',
  'Albany - Eagle Point': 'Eagle Point Elementary School (Albany School District)',
  'Albany - Hackett': 'William S. Hackett Middle School (Albany School District)',
  'Albany - Myers': 'Stephen and Harriet Myers Middle School (Albany School District)',
  'Nisky - Craig Elem': 'Craig Elementary School (Niskayuna School District)',
  'Nisky - Glencliff Elem': 'Glencliff Elementary School (Niskayuna School District)',
  'Nisky - Rosendale Elem': 'Rosendale Elementary School (Niskayuna School District)',
  'Shen - Arongen': 'Arongen Elementary School (Shenendehowa School District)',
  'Shen - Karigon': 'Karigon Elementary School (Shenendehowa School District)',
  'Shen - Okte': 'Okte Elementary School (Shenendehowa School District)',
  'Shen - Orenda': 'Orenda Elementary School (Shenendehowa School District)',
  'Shen - Shatekon': 'Shatekon Elementary School (Shenendehowa School District)',
  'Shen - Skano': 'Skano Elementary School (Shenendehowa School District)',
  'Shen - Tesago': 'Tesago Elementary School (Shenendehowa School District)'
};

function getCarrieSchoolDisplayName(schoolName = '') {
  if (SCHOOL_DISPLAY_OVERRIDES[schoolName]) return SCHOOL_DISPLAY_OVERRIDES[schoolName];
  const parts = String(schoolName).split(' - ');
  if (parts.length >= 2) {
    const prefix = parts[0].trim();
    const base = parts.slice(1).join(' - ').trim();
    const district = DISTRICT_DISPLAY_NAMES[prefix];
    if (district) return `${base} (${district})`;
  }
  return schoolName;
}

function chooseCarrieReferenceEvent(history = []) {
  const fall2025 = history.filter(event => event && event.date >= '2025-09-01' && event.date <= '2025-11-30');
  const fallPictureDays = fall2025.filter(event => event.type === 'Fall Picture Day');
  if (fallPictureDays.length) return fallPictureDays[0];
  return fall2025[0] || history[history.length - 1] || null;
}

function getUniqueNamesFromEvents(events = [], key = 'photographers') {
  return [...new Set(events.flatMap(event => event?.[key] || []).filter(Boolean))];
}


function getPictureDayInfoHistory(history = []) {
  return history
    .filter(event => event?.notes && String(event.notes).trim() && String(event.notes).trim() !== '—')
    .map(event => ({
      ...event,
      season: getSeasonLabel(event.date)
    }))
    .sort((a, b) => b.date.localeCompare(a.date));
}

function isCarrieFall2026ScheduledEvent(event) {
  if (!event || event.removed) return false;
  if (!event.date || event.date < '2026-09-01' || event.date > '2026-11-30') return false;
  const internalOnlyTypes = new Set(['Call or Meeting', 'Time Off', 'Personal Appointment', 'Edit Day', 'Rain Date']);
  return !internalOnlyTypes.has(event.type);
}

function eventMatchesSchoolIdentity(event, school = {}, mergedSourceSchools = []) {
  if (!event || !school) return false;
  const linkedIds = new Set([school.id, ...(mergedSourceSchools || []).map(item => item?.id)].filter(Boolean));
  if (event.schoolId && linkedIds.size) return linkedIds.has(event.schoolId);

  const names = [school.name, school.originalName, ...(mergedSourceSchools || []).flatMap(item => [item?.name, item?.originalName])].filter(Boolean);
  return names.some(name => schoolMatchesEvent(name, event));
}

function schoolHasCarrieFall2026ScheduledEvent(school = {}, mergedSourceSchools = [], events = EVENTS) {
  return events.some(event => isCarrieFall2026ScheduledEvent(event) && eventMatchesSchoolIdentity(event, school, mergedSourceSchools));
}

function getFall2026ScheduledSchools(events = EVENTS) {
  return new Set(
    events.filter(event => isCarrieFall2026ScheduledEvent(event) && event.canonicalSchool)
      .map(event => schoolKey(event.canonicalSchool))
  );
}

function getSchoolsToSchedule(events = EVENTS) {
  const scheduled2026 = getFall2026ScheduledSchools(events);
  return SCHOOLS
    .filter(school => !scheduled2026.has(schoolKey(school.name)))
    .map(school => {
      const history = getSchoolHistory(school.name, events);
      const fall2025 = history.filter(event => event && event.date >= '2025-09-01' && event.date <= '2025-11-30');
      const fallPictureDayEvents = fall2025.filter(event => event.type === 'Fall Picture Day');
      const referenceEvent = chooseCarrieReferenceEvent(history);
      return {
        ...school,
        displayName: getCarrieSchoolDisplayName(school.name),
        history,
        fall2025,
        fallPictureDayEvents,
        lastEvent: referenceEvent,
        referencePhotographers: getUniqueNamesFromEvents(fallPictureDayEvents.length ? fallPictureDayEvents : referenceEvent ? [referenceEvent] : [], 'photographers'),
        status: 'Needs Fall 2026 Scheduling'
      };
    })
    .sort((a, b) => a.name.localeCompare(b.name));
}

function getSchoolsToScheduleFromList(schoolsList = SCHOOLS, events = EVENTS) {
  const allSchools = (schoolsList && schoolsList.length ? schoolsList : SCHOOLS).filter(Boolean);

  const mergedSourcesByTarget = {};
  allSchools.forEach((school) => {
    if (school?.mergedInto) {
      mergedSourcesByTarget[school.mergedInto] ||= [];
      mergedSourcesByTarget[school.mergedInto].push(school.originalName || school.name);
    }
  });

  return allSchools
    .filter(school => school.active !== false && !school.mergedInto)
    .filter(school => !school.noFallSchedulingFall2026)
    .map(school => {
      const mergedFrom = mergedSourcesByTarget[school.originalName || school.name] || [];
      const mergedSourceSchools = mergedFrom.map(name => allSchools.find(item => (item.originalName || item.name) === name)).filter(Boolean);
      if (schoolHasCarrieFall2026ScheduledEvent(school, mergedSourceSchools, events)) return null;
      const history = getSchoolHistoryForSchool(school, mergedSourceSchools, events);
      const fall2025 = history.filter(event => event && event.date >= '2025-09-01' && event.date <= '2025-11-30');
      const fallPictureDayEvents = fall2025.filter(event => event.type === 'Fall Picture Day');
      const referenceEvent = chooseCarrieReferenceEvent(history);
      const mergedNotes = mergedSourceSchools.map(item => item.notes).filter(Boolean);
      const notes = [school.notes, ...mergedNotes.map((note, index) => `Merged from ${mergedSourceSchools[index]?.name || mergedFrom[index]}:\n${note}`)].filter(Boolean).join('\n\n');

      return {
        ...school,
        notes,
        referenceImages: [...(school.referenceImages || []), ...mergedSourceSchools.flatMap(item => item.referenceImages || [])],
        mergedFrom: mergedSourceSchools.map(item => item.name),
        displayName: getCarrieSchoolDisplayName(school.name),
        history,
        fall2025,
        fallPictureDayEvents,
        lastEvent: referenceEvent,
        referencePhotographers: getUniqueNamesFromEvents(fallPictureDayEvents.length ? fallPictureDayEvents : referenceEvent ? [referenceEvent] : [], 'photographers'),
        status: 'Needs Fall 2026 Scheduling'
      };
    })
    .filter(Boolean)
    .sort((a, b) => a.name.localeCompare(b.name));
}

function getFall2026Availability(events = EVENTS, photographers = PHOTOGRAPHERS) {
  const dates = [];
  const start = new Date('2026-08-01T12:00:00');
  const end = new Date('2026-12-31T12:00:00');
  for (let d = new Date(start); d <= end; d.setDate(d.getDate() + 1)) {
    const key = d.toISOString().slice(0, 10);
    const { start: weekStart, end: weekEnd } = weekBounds(key);
    const scheduled = events.filter(event => isDateInEventRange(event, key));
    const weekEvents = events.filter(event => event && event.date && event.date <= weekEnd && (event.endDate || event.date) >= weekStart);
    const dayRollouts = scheduled.reduce((total, event) => total + getRolloutCount(event), 0);
    const weekRollouts = getRolloutCountForDateRange(events, weekStart, weekEnd, { weekdaysOnly: true });
    const remainingWeekRollouts = Math.max(0, WEEKLY_ROLLOUT_CAPACITY - weekRollouts);
    const capacity = getCapacityTone(weekRollouts);
    dates.push({ date: key, scheduledCount: scheduled.length, scheduled, dayRollouts, weekRollouts, remainingWeekRollouts, capacity, weekStart, weekEnd });
  }
  return dates;
}

function SchoolHistoryPanel({ school, onClickEvent, onEdit, onMerge, compact = false }) {
  if (!school) {
    return (
      <div className="rounded-3xl border border-dashed border-zinc-200 bg-white/60 p-6 text-sm text-zinc-500">
        Select a school to view its schedule history.
      </div>
    );
  }

  const grouped = school.history.reduce((acc, event) => {
    if (!event || !event.date) return acc;
    const season = getSeasonLabel(event.date);
    acc[season] ||= [];
    acc[season].push(event);
    return acc;
  }, {});
  const seasons = ['Spring 2025', 'Fall 2025', 'Spring 2026', 'Fall 2026'];

  const addressLine = [school.address, [school.city, school.stateZip].filter(Boolean).join(', ')].filter(Boolean).join('\n');
  const schoolNoteHistory = getNoteHistory(school.noteAttribution);
  const visiblePlainSchoolNotes = getVisiblePlainSchoolNotes(school.notes);
  const plainSchoolNoteCount = countPlainSchoolNoteBlocks(visiblePlainSchoolNotes);
  const totalSchoolNoteCount = schoolNoteHistory.length + plainSchoolNoteCount;

  return (
    <section className={`${compact ? 'rounded-2xl p-0' : 'rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm'}`}>
      <div className="flex flex-col gap-4 lg:flex-row lg:items-start lg:justify-between">
        <div>
          <div className="flex flex-wrap items-center gap-2">
            {school.irm ? <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">IRM {school.irm}</Pill> : <Pill className="border-zinc-200 bg-white text-zinc-600">No IRM</Pill>}
            {school.mergedFrom?.length ? <Pill className="border-zinc-200 bg-white text-zinc-600">{school.mergedFrom.length} merged</Pill> : null}
            {school.noFallSchedulingFall2026 ? <Pill className="border-slate-200 bg-slate-50 text-slate-700">No Fall Scheduling</Pill> : null}
          </div>
          <h2 className="mt-3 text-xl font-semibold text-zinc-950">{school.name}</h2>
          <p className="mt-1 text-sm text-zinc-600">School history page: address, primary contact, school notes, picture day history, photographers, and future scheduling status.</p>
          {school.mergedFrom?.length ? <p className="mt-1 text-xs text-zinc-500">Merged with: {school.mergedFrom.join(', ')}</p> : null}
        </div>

        {(onEdit || onMerge) ? (
          <div className="rounded-3xl border border-zinc-200 bg-white/80 p-3 shadow-sm lg:min-w-[190px]">
            <div className="mb-2 text-xs font-semibold uppercase tracking-wide text-zinc-500">School Actions</div>
            <div className="grid gap-2">
              {onEdit ? <button type="button" onClick={() => onEdit(school)} className="rounded-2xl bg-zinc-900 px-4 py-2.5 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5">Edit School</button> : null}
              {onMerge ? <button type="button" onClick={() => onMerge(school)} className="rounded-2xl border border-[#AEBB9E] bg-[#DDE8D2]/80 px-4 py-2.5 text-sm font-semibold text-zinc-900 shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2]">Merge School</button> : null}
            </div>
          </div>
        ) : null}
      </div>

      <div className={`${compact ? 'mt-4 grid gap-3' : 'mt-5 grid gap-3 md:grid-cols-2'}`}>
        <div className="rounded-2xl border border-zinc-200 bg-white/70 p-3 text-xs text-zinc-600">
          <div className="text-sm font-semibold text-zinc-800">Address</div>
          <div className="mt-1 whitespace-pre-wrap leading-5">{addressLine || '—'}</div>
          {school.address ? <a href={`https://www.google.com/maps/search/?api=1&query=${encodeURIComponent([school.address, school.city, school.stateZip].filter(Boolean).join('\n'))}`} target="_blank" rel="noreferrer" className="mt-2 inline-flex rounded-xl border border-[#AEBB9E] bg-[#DDE8D2]/70 px-2.5 py-1.5 text-xs font-semibold text-zinc-900 transition hover:bg-[#DDE8D2]">Maps</a> : null}
        </div>

        <div className="rounded-2xl border border-zinc-200 bg-white/70 p-3 text-xs text-zinc-600">
          <div className="text-sm font-semibold text-zinc-800">Primary Contact</div>
          <div className="mt-1 text-sm font-medium text-zinc-700">{[school.contactFirst, school.contactLast].filter(Boolean).join('\n') || '—'}</div>
          {school.contactTitle ? <div className="mt-0.5 text-xs text-zinc-500">{school.contactTitle}</div> : null}
          {school.contactPhone ? <div className="mt-1">{school.contactPhone}</div> : null}
          {school.contactEmail ? <div className="break-words">{school.contactEmail}</div> : null}
          <div className="mt-2 flex flex-wrap gap-1.5">
            {school.contactPhone ? <a href={`tel:${school.contactPhone}`} className="rounded-xl border border-zinc-200 bg-white px-2.5 py-1.5 text-xs font-semibold text-zinc-800">Call</a> : null}
            {school.contactEmail ? <a href={`mailto:${school.contactEmail}`} className="rounded-xl border border-zinc-200 bg-white px-2.5 py-1.5 text-xs font-semibold text-zinc-800">Email</a> : null}
          </div>
          {[school.secondaryContactFirst, school.secondaryContactLast, school.secondaryContactEmail, school.secondaryContactTitle].some(Boolean) ? (
            <div className="mt-4 border-t border-zinc-200 pt-3">
              <div className="text-sm font-semibold text-zinc-800">Secondary Contact</div>
              <div className="mt-1 text-sm font-medium text-zinc-700">{[school.secondaryContactFirst, school.secondaryContactLast].filter(Boolean).join('\n') || '—'}</div>
              {school.secondaryContactTitle ? <div className="mt-0.5 text-xs text-zinc-500">{school.secondaryContactTitle}</div> : null}
              {school.secondaryContactEmail ? <div className="break-words">{school.secondaryContactEmail}</div> : null}
              {school.secondaryContactEmail ? <a href={`mailto:${school.secondaryContactEmail}`} className="mt-2 inline-flex rounded-xl border border-zinc-200 bg-white px-2.5 py-1.5 text-xs font-semibold text-zinc-800">Email</a> : null}
            </div>
          ) : null}
        </div>
      </div>

      <div className="mt-3 max-w-4xl rounded-2xl border border-zinc-200 bg-white/70 p-3 text-xs text-zinc-600">
        <div className="flex flex-wrap items-center justify-between gap-2">
          <div className="text-sm font-semibold text-zinc-800">School Notes ({totalSchoolNoteCount})</div>
          {onEdit ? <button type="button" onClick={() => onEdit(school)} className="rounded-xl border border-zinc-200 bg-white px-2.5 py-1.5 text-xs font-semibold text-zinc-800 shadow-sm transition hover:bg-cream">Add Note</button> : null}
        </div>
        <div className="mt-3">
          <NoteHistoryList entries={schoolNoteHistory} />
        </div>
        {visiblePlainSchoolNotes ? (
          <div className="mt-4 rounded-2xl border border-zinc-200 bg-cream/70 p-3">
            <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">{getPlainSchoolNoteLabel(visiblePlainSchoolNotes)}</div>
            <div className="mt-2 whitespace-pre-wrap text-sm leading-6 text-zinc-700">{visiblePlainSchoolNotes}</div>
          </div>
        ) : null}
      </div>

      <div className={`${compact ? 'mt-4 grid gap-3 sm:grid-cols-2' : 'mt-5 grid gap-3 md:grid-cols-4'}`}>
        {seasons.map(season => {
          const events = grouped[season] || [];
          return (
            <div key={season} className="rounded-2xl border border-zinc-200 bg-cream/80 p-3">
              <div className="mb-2 text-sm font-semibold text-zinc-800">{season}</div>
              {events.length ? (
                <div className="space-y-2">
                  {events.map(event => (
                    <button key={event.id} onClick={() => onClickEvent(event)} className="w-full rounded-xl border border-zinc-200 bg-white/80 p-2 text-left text-xs transition hover:bg-white hover:shadow-sm">
                      <div className="font-semibold text-zinc-900">{formatDate(event.date)}</div>
                      <div className="mt-1 text-zinc-600">{event.title}</div>
                      <div className="mt-1 text-zinc-500">Assigned: {event.photographers?.length ? event.photographers.join(', ') : '—'}</div>
                    </button>
                  ))}
                </div>
              ) : <div className="text-xs text-zinc-400">No imported records yet.</div>}
            </div>
          );
        })}
      </div>

      <div className="mt-4 rounded-2xl border border-zinc-200 bg-white/70 p-3">
        <div className="flex items-center gap-2 text-sm font-semibold text-zinc-800"><History size={16} /> Photographer History</div>
        <div className={`${compact ? 'mt-3 grid gap-2 sm:grid-cols-2' : 'mt-3 grid gap-2 md:grid-cols-2 xl:grid-cols-3'}`}>
          {getSchoolPhotographerHistory(school.history).length ? getSchoolPhotographerHistory(school.history).map(item => (
            <div key={item.name} className="rounded-2xl border border-zinc-100 bg-cream/70 p-3 text-sm">
              <div className="font-semibold text-zinc-900">{item.name}</div>
              <div className="mt-1 text-xs text-zinc-500">{item.count} historical assignment{item.count === 1 ? '' : 's'}</div>
              {item.lastDate ? <div className="mt-2 text-xs text-zinc-600">Last: {shortDate(item.lastDate)} · {item.lastTitle}</div> : null}
            </div>
          )) : <div className="text-xs text-zinc-400">No photographer history imported yet.</div>}
        </div>
      </div>

      <div className="mt-3 rounded-2xl border border-zinc-200 bg-white/70 p-3 text-sm text-zinc-600">
        <div className="flex items-center gap-2 font-semibold text-zinc-800"><Pencil size={16} /> Picture Day Info History</div>
        {getPictureDayInfoHistory(school.history).length ? (
          <div className="mt-3 space-y-2">
            {getPictureDayInfoHistory(school.history).map(event => (
              <button key={`picture-info-${event.id}`} type="button" onClick={() => onClickEvent(event)} className="w-full rounded-2xl border border-zinc-200 bg-cream/70 p-3 text-left transition hover:bg-white hover:shadow-sm">
                <div className="flex flex-wrap items-center gap-2 text-xs">
                  <span className="font-semibold text-zinc-900">Picture Day Info — {event.season}</span>
                  <span className="text-zinc-400">•</span>
                  <span className="text-zinc-500">{shortDate(event.date)}</span>
                  <span className="rounded-full border border-zinc-200 bg-white px-2 py-0.5 text-zinc-500">{event.type}</span>
                </div>
                <div className="mt-1 text-xs font-medium text-zinc-700">{event.title}</div>
                <div className="mt-3"><NoteHistoryList entries={getNoteHistory(event.noteAttribution)} /></div>
                {event.notes ? <div className="mt-3 whitespace-pre-wrap text-sm leading-5 text-zinc-600">{event.notes}</div> : null}
              </button>
            ))}
          </div>
        ) : <div className="mt-2 text-xs text-zinc-400">No picture day info imported yet.</div>}
      </div>

      <div className="mt-3 rounded-2xl border border-zinc-200 bg-white/70 p-3 text-sm text-zinc-600">
        <div className="flex items-center gap-2 font-semibold text-zinc-800"><ImageIcon size={16} /> Reference Images</div>
        {school.referenceImages?.length ? (
          <div className="mt-3 grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
            {school.referenceImages.map((image) => (
              <a key={image.id || image.src} href={image.src} target="_blank" rel="noreferrer" className="group overflow-hidden rounded-2xl border border-zinc-200 bg-cream/70 transition hover:bg-white hover:shadow-sm">
                <img src={image.src} alt={image.caption || 'School reference'} className="h-32 w-full object-cover transition group-hover:scale-[1.02]" />
                <div className="p-2 text-xs font-medium text-zinc-700">{image.caption || 'Reference image'}</div>
              </a>
            ))}
          </div>
        ) : <div className="mt-2 text-xs text-zinc-400">No reference images added yet.</div>}
      </div>
    </section>
  );
}

function SchedulingModal({ school, photographers, assistants, events = [], onClose, onSave, defaultDate = '2026-09-01' }) {
  const [date, setDate] = useState(defaultDate || '2026-09-01');
  const [isTwoDay, setIsTwoDay] = useState(false);
  const [endDate, setEndDate] = useState('');
  const [arrivalTime, setArrivalTime] = useState('');
  const [startTime, setStartTime] = useState('');
  const [selectedPhotographers, setSelectedPhotographers] = useState([]);
  const [selectedAssistants, setSelectedAssistants] = useState([]);
  const [requiredPhotographers, setRequiredPhotographers] = useState(1);
  const [requiredAssistants, setRequiredAssistants] = useState(0);
  const [noAssistant, setNoAssistant] = useState(false);
  const [notes, setNotes] = useState('');

  if (!school) return null;

  const toggleName = (name, setter) => {
    setter(prev => prev.includes(name) ? prev.filter(item => item !== name) : [...prev, name]);
  };

  const saveSchedule = async () => {
    const event = {
      id: `2026-${school.name.toLowerCase().replace(/[^a-z0-9]+/g, '-')}-${Date.now()}`,
      date,
      endDate: isTwoDay ? (endDate || addDays(date, 1)) : null,
      title: `${school.name} Fall Picture Day`,
      canonicalSchool: school.name,
      type: 'Fall Picture Day',
      status: selectedPhotographers.length >= (Number(requiredPhotographers) || 1) ? 'Scheduled' : 'Needs Photographers Assigned',
      photographers: selectedPhotographers,
      assistants: noAssistant ? [] : selectedAssistants,
      requiredPhotographers: Number(requiredPhotographers) || 1,
      requiredAssistants: noAssistant ? 0 : Number(requiredAssistants) || 0,
      noAssistant,
      features: [],
      irm: school.irm || null,
      arrivalTime: arrivalTime || '',
      time: startTime || 'TBD',
      notes: notes || 'Scheduled from Carrie View. Details can be refined later.',
      rainInfo: '',
      history: school.lastEvent ? `Fall 2025 reference: ${formatDate(school.lastEvent.date)} — ${school.lastEvent.title}. Assigned photographers: ${school.lastEvent.photographers?.join(', ') || '—'}.` : 'Created from Carrie View.',
    };
    const result = await onSave(event);
    if (result) {
      onClose();
    }
  };

  return (
    <AnimatePresence>
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/30 p-4 backdrop-blur-sm" onClick={onClose}>
        <motion.div initial={{ y: 30, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 20, opacity: 0 }} onClick={(e) => e.stopPropagation()} className="mx-auto mt-2 max-h-[95vh] max-w-3xl overflow-hidden rounded-[2rem] bg-cream shadow-2xl sm:mt-8">
          <div className="border-b border-zinc-200 p-5">
            <div className="flex items-start justify-between gap-4">
              <div>
                <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">Schedule Fall 2026</Pill>
                <h2 className="mt-3 text-2xl font-semibold text-zinc-950">{school.name}</h2>
                <p className="mt-1 text-sm text-zinc-600">Pick a date and assign the team. This saves locally in the prototype for now.</p>
              </div>
              <button onClick={onClose} className="rounded-full bg-white p-2 text-zinc-500 hover:text-zinc-900"><X size={18} /></button>
            </div>
          </div>

          <div className="max-h-[72vh] space-y-4 overflow-auto p-5">
            <div className="grid gap-4 md:grid-cols-2">
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Fall 2026 First Date</div>
                <input type="date" min="2026-08-01" max="2026-12-31" value={date} onChange={(e) => { setDate(e.target.value); if (isTwoDay && (!endDate || endDate < e.target.value)) setEndDate(addDays(e.target.value, 1)); }} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="flex items-center justify-between gap-3">
                  <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">End Date</div>
                  <button type="button" onClick={() => { const next = !isTwoDay; setIsTwoDay(next); if (next && !endDate) setEndDate(addDays(date, 1)); }} className={`rounded-full border px-3 py-1 text-xs font-semibold ${isTwoDay ? 'border-zinc-900 bg-zinc-900 text-white' : 'border-zinc-200 bg-white text-zinc-700'}`}>{isTwoDay ? 'Multi-day' : 'One-day'}</button>
                </div>
                <input type="date" min="2026-08-01" max="2026-12-31" disabled={!isTwoDay} value={isTwoDay ? (endDate || addDays(date, 1)) : ''} onChange={(e) => setEndDate(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4 disabled:bg-zinc-100 disabled:text-zinc-400" />
              </label>
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Arrival Time</div>
                <input type="time" value={arrivalTime} onChange={(e) => setArrivalTime(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Start Time</div>
                <input type="time" value={startTime} onChange={(e) => setStartTime(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
            </div>

            <div className="grid gap-4 md:grid-cols-2">
              <div className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">2025 Reference</div>
                <div className="mt-2 text-sm text-zinc-800">{school.lastEvent ? `${formatDate(school.lastEvent.date)} — ${school.lastEvent.title}` : 'No matched Fall 2025 reference yet.'}</div>
                <div className="mt-1 text-xs text-zinc-500">Assigned: {school.lastEvent?.photographers?.length ? school.lastEvent.photographers.join(', ') : '—'}</div>
              </div>
            </div>

            <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <h3 className="text-sm font-semibold text-zinc-900">Required Staffing</h3>
              <p className="mt-1 text-xs text-zinc-500">Set how many people this event needs, even if you are not assigning every person yet.</p>
              <div className="mt-3 grid gap-3 sm:grid-cols-2">
                <label className="rounded-2xl border border-zinc-200 bg-white p-3">
                  <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Photographers Required</div>
                  <select value={requiredPhotographers} onChange={(e) => setRequiredPhotographers(Number(e.target.value))} className="mt-2 w-full rounded-xl border border-zinc-200 bg-white px-3 py-2 text-sm font-semibold outline-none">
                    {[1,2,3,4,5,6].map(count => <option key={count} value={count}>{count}</option>)}
                  </select>
                </label>
                <label className="rounded-2xl border border-zinc-200 bg-white p-3">
                  <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Assistants Needed</div>
                  <select value={noAssistant ? 0 : requiredAssistants} onChange={(e) => { const count = Number(e.target.value); setRequiredAssistants(count); setNoAssistant(count === 0); if (count === 0) setSelectedAssistants([]); }} className="mt-2 w-full rounded-xl border border-zinc-200 bg-white px-3 py-2 text-sm font-semibold outline-none">
                    {[0,1,2,3,4,5,6].map(count => <option key={count} value={count}>{count}</option>)}
                  </select>
                </label>
              </div>
            </section>

            <PhotographerAssignmentPicker photographers={photographers} selectedPhotographers={selectedPhotographers} setSelectedPhotographers={setSelectedPhotographers} events={events} date={date} schoolName={school.name} />

            <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <h3 className="text-sm font-semibold text-zinc-900">Assistants</h3>
              <div className="mt-3 flex flex-wrap gap-2">
                <button type="button" onClick={() => { setNoAssistant(true); setSelectedAssistants([]); }} className={`rounded-full border px-3 py-2 text-sm transition ${noAssistant ? 'border-zinc-900 bg-zinc-900 text-white' : 'border-zinc-200 bg-white text-zinc-700 hover:bg-zinc-50'}`}>No Assistant</button>
                {assistants.map(name => (
                  <button key={name} type="button" onClick={() => { setNoAssistant(false); toggleName(name, setSelectedAssistants); }} className={`rounded-full border px-3 py-2 text-sm transition ${!noAssistant && selectedAssistants.includes(name) ? 'border-[#AEBB9E] bg-[#DDE8D2] text-zinc-900' : 'border-zinc-200 bg-white text-zinc-700 hover:bg-zinc-50'}`}>{name}</button>
                ))}
              </div>
            </section>

            <label className="block rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Picture Day Info</div>
              <textarea value={notes} onChange={(e) => setNotes(e.target.value)} rows={4} placeholder="Optional info for this specific picture day/shoot..." className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
            </label>
          </div>

          <div className="flex justify-end gap-2 border-t border-zinc-200 p-5">
            <button type="button" onClick={onClose} className="rounded-2xl border border-zinc-200 bg-white px-4 py-2 text-sm font-semibold text-zinc-700">Cancel</button>
            <button type="button" onClick={saveSchedule} className="rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm">Save Schedule</button>
          </div>
        </motion.div>
      </motion.div>
    </AnimatePresence>
  );
}


function AddEventModal({ photographers, assistants, events = [], schools = [], onClose, onSave, defaultDate = todayKey(), sourceLabel = 'prototype', initialEvent = null, authEmail = '', canEditNotes = false }) {
  const isDuplicate = Boolean(initialEvent && sourceLabel === 'Duplicate Event' && !initialEvent?.supabaseId);
  const isEditing = Boolean(initialEvent?.supabaseId);
  const [date, setDate] = useState(initialEvent?.date || defaultDate);
  const [isTwoDay, setIsTwoDay] = useState(Boolean(initialEvent?.endDate && initialEvent.endDate !== initialEvent.date));
  const [endDate, setEndDate] = useState(initialEvent?.endDate || '');
  const [arrivalTime, setArrivalTime] = useState(initialEvent?.arrivalTime || '');
  const [startTime, setStartTime] = useState(initialEvent?.time && initialEvent.time !== 'TBD' ? initialEvent.time : '');
  const [title, setTitle] = useState(initialEvent?.title || '');
  const [schoolName, setSchoolName] = useState(initialEvent?.canonicalSchool || '');
  const [eventType, setEventType] = useState(initialEvent?.type || 'Fall Picture Day');
  const isTimeOff = eventType === 'Time Off';
  const isPersonalAppointment = eventType === 'Personal Appointment';
  const isInternalBlockingEvent = isTimeOff || isPersonalAppointment;
  const [selectedPhotographers, setSelectedPhotographers] = useState(isDuplicate ? [] : explicitCurrentPhotographerAssignments(initialEvent?.photographers || [], photographers));
  const [selectedAssistants, setSelectedAssistants] = useState(isDuplicate ? [] : (initialEvent?.assistants || []));
  const [dayAssignments, setDayAssignments] = useState(() => {
    if (isDuplicate) return {};
    const start = initialEvent?.date || defaultDate;
    const end = initialEvent?.endDate || initialEvent?.date || defaultDate;
    return normalizeScheduleLiveDayAssignmentsForDates(initialEvent || {}, getEventDateKeys({ date: start, endDate: end }));
  });
  const [requiredPhotographers, setRequiredPhotographers] = useState(getRequiredPhotographerCount(initialEvent || { title: initialEvent?.title || '' }));
  const [requiredAssistants, setRequiredAssistants] = useState(getRequiredAssistantCount(initialEvent || { title: initialEvent?.title || '' }));
  const [noAssistant, setNoAssistant] = useState(Boolean(initialEvent?.noAssistant));
  const [notes, setNotes] = useState(initialEvent?.notes || '');
  const [newNote, setNewNote] = useState('');
  const [noteAttribution, setNoteAttribution] = useState(initialEvent?.noteAttribution || null);
  const [error, setError] = useState('');
  const [saving, setSaving] = useState(false);

  const canonicalSchoolOptions = useMemo(() => {
    const sourceSchools = (schools && schools.length ? schools : SCHOOLS).filter(Boolean);
    return sourceSchools
      .filter(school => school.active !== false && !school.mergedInto)
      .map(school => school.name)
      .filter(Boolean)
      .sort((a, b) => a.localeCompare(b));
  }, [schools]);
  const schoolOptions = canonicalSchoolOptions;
  const matchedSchool = useMemo(() => resolveSchoolListMatch(schoolName, (schools && schools.length ? schools : SCHOOLS)) || null, [schoolName, schools]);
  const assignmentDates = useMemo(() => getEventDateKeys({ date, endDate: isTwoDay ? (endDate || addDays(date, 1)) : date }), [date, endDate, isTwoDay]);

  useEffect(() => {
    if (!isTwoDay) return;
    setDayAssignments(prev => {
      const next = {};
      assignmentDates.forEach(day => {
        const existing = prev?.[day] || {};
        next[day] = {
          photographers: uniqueCanonicalPhotographers(existing.photographers || []),
          assistants: Array.isArray(existing.assistants) ? existing.assistants.filter(Boolean) : []
        };
      });
      return next;
    });
  }, [isTwoDay, assignmentDates.join('|')]);

  const toggleName = (name, setter) => setter(prev => prev.includes(name) ? prev.filter(item => item !== name) : [...prev, name]);
  const toggleDayAssignmentName = (day, key, name) => {
    setDayAssignments(prev => {
      const current = prev?.[day] || { photographers: [], assistants: [] };
      const list = key === 'photographers' ? uniqueCanonicalPhotographers(current.photographers || []) : (current.assistants || []).filter(Boolean);
      const cleanName = key === 'photographers' ? canonicalPhotographerName(name) : name;
      const nextList = list.includes(cleanName) ? list.filter(item => item !== cleanName) : [...list, cleanName];
      return { ...prev, [day]: { ...current, [key]: nextList } };
    });
  };
  const save = async () => {
    if (saving) return;
    setSaving(true);
    setError('');

    const cleanName = isInternalBlockingEvent ? '' : schoolName.trim();
    const cleanTitle = title.trim() || (cleanName ? `${cleanName} ${eventType}` : eventType);
    const cleanEndDate = isTwoDay ? (endDate || addDays(date, 1)) : '';
    if (isTwoDay && cleanEndDate < date) {
      setError('End date must be the same as or after the first date.');
      setSaving(false);
      return;
    }
    const cleanAssignmentDates = getEventDateKeys({ date, endDate: cleanEndDate || date });
    const cleanDayAssignments = isTwoDay ? cleanAssignmentDates.reduce((map, day) => {
      const current = dayAssignments?.[day] || {};
      map[day] = {
        photographers: uniqueCanonicalPhotographers(current.photographers || []),
        assistants: Array.isArray(current.assistants) ? current.assistants.filter(Boolean) : []
      };
      return map;
    }, {}) : {};
    const multiDayMeetsRequirement = isTwoDay ? cleanAssignmentDates.every(day => (cleanDayAssignments[day]?.photographers || []).length >= (Number(requiredPhotographers) || 1)) : false;
    const event = {
      id: isDuplicate ? `custom-${Date.now()}` : (initialEvent?.id || `custom-${Date.now()}`),
      supabaseId: isDuplicate ? undefined : initialEvent?.supabaseId,
      date,
      endDate: cleanEndDate || null,
      title: cleanTitle,
      canonicalSchool: matchedSchool?.name || cleanName || '',
      schoolId: isInternalBlockingEvent ? null : (matchedSchool?.id || null),
      type: eventType,
      status: isInternalBlockingEvent ? 'Scheduled' : (isTwoDay ? (multiDayMeetsRequirement ? 'Scheduled' : 'Needs Photographers Assigned') : (selectedPhotographers.length >= (Number(requiredPhotographers) || 1) ? 'Scheduled' : 'Needs Photographers Assigned')),
      photographers: isTwoDay ? [] : selectedPhotographers,
      assistants: isTwoDay || isInternalBlockingEvent || noAssistant ? [] : selectedAssistants,
      scheduleLiveDayAssignments: isTwoDay ? cleanDayAssignments : {},
      requiredPhotographers: isInternalBlockingEvent ? 0 : (Number(requiredPhotographers) || 1),
      requiredAssistants: isInternalBlockingEvent || noAssistant ? 0 : (Number(requiredAssistants) || 0),
      noAssistant: isInternalBlockingEvent ? true : noAssistant,
      features: [],
      irm: isInternalBlockingEvent ? null : (matchedSchool?.irm || null),
      arrivalTime: isInternalBlockingEvent ? '' : (arrivalTime || ''),
      time: isInternalBlockingEvent ? 'TBD' : (startTime || 'TBD'),
      notes: notes || '',
      newNote: newNote.trim(),
      noteAttribution,
      rainInfo: '',
      history: isDuplicate
        ? [stripInternalEventMeta(initialEvent?.history || ''), `Duplicated from ${initialEvent?.title || 'event'} on ${formatDate(todayKey())}.`].filter(Boolean).join('\n\n')
        : isEditing
          ? (initialEvent?.history || '')
          : isTimeOff
            ? 'Created from Add Event as Time Off.'
            : isPersonalAppointment
              ? 'Created from Add Event as Personal Appointment.'
              : matchedSchool
                ? 'Created from Add Event using an existing school/account.'
                : cleanName
                  ? 'Created from Add Event using a school/account name not yet in School List.'
                  : 'Created from Add Event without a school/account association.',
      source: isDuplicate ? 'manual_app' : (initialEvent?.source || 'manual_app'),
      sourceEventId: isDuplicate ? null : (initialEvent?.sourceEventId || null),
      duplicatedFromEventId: isDuplicate ? (initialEvent?.supabaseId || initialEvent?.id || null) : null
    };
    const result = await onSave(event);
    if (result) {
      onClose();
    } else {
      setError('This event did not save to Supabase. Please make sure you are logged in and try again.');
      setSaving(false);
    }
  };

  return (
    <AnimatePresence>
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 flex items-start justify-center overflow-y-auto bg-zinc-950/30 p-2 pb-[env(safe-area-inset-bottom)] backdrop-blur-sm sm:p-4" onClick={onClose}>
        <motion.div initial={{ y: 30, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 20, opacity: 0 }} onClick={(e) => e.stopPropagation()} className="my-1 flex max-h-[calc(100dvh-0.5rem)] w-full max-w-3xl flex-col overflow-hidden rounded-[2rem] bg-cream shadow-2xl sm:my-8 sm:max-h-[calc(100vh-4rem)]">
          <div className="shrink-0 border-b border-zinc-200 p-5">
            <div className="flex items-start justify-between gap-4">
              <div>
                <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">{isDuplicate ? "Duplicate Event" : isEditing ? "Edit Event" : "Add Event"}</Pill>
                <h2 className="mt-3 text-2xl font-semibold text-zinc-950">{isDuplicate ? "Duplicate event" : isEditing ? "Edit event" : "Create an event"}</h2>
                <p className="mt-1 text-sm text-zinc-600">{isDuplicate ? "Review the copied details, adjust the date/type/timing, then save it as a new event." : "Optionally associate this event with a school/account, or leave it blank for internal/special events."}</p>
              </div>
              <button onClick={onClose} className="rounded-full bg-white p-2 text-zinc-500 hover:text-zinc-900"><X size={18} /></button>
            </div>
          </div>
          <div className="min-h-0 flex-1 space-y-4 overflow-y-auto p-5 pb-28">
            {error ? <div className="rounded-2xl border border-rose-200 bg-rose-50 px-4 py-3 text-sm font-medium text-rose-700">{error}</div> : null}
            <div className="grid gap-4 md:grid-cols-2">
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">First Date</div>
                <input type="date" value={date} onChange={(e) => { setDate(e.target.value); if (isTwoDay && (!endDate || endDate < e.target.value)) setEndDate(addDays(e.target.value, 1)); }} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="flex items-center justify-between gap-3">
                  <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">End Date</div>
                  <button type="button" onClick={() => { const next = !isTwoDay; setIsTwoDay(next); if (next && !endDate) setEndDate(addDays(date, 1)); }} className={`rounded-full border px-3 py-1 text-xs font-semibold ${isTwoDay ? 'border-zinc-900 bg-zinc-900 text-white' : 'border-zinc-200 bg-white text-zinc-700'}`}>{isTwoDay ? 'Multi-day' : 'One-day'}</button>
                </div>
                <input type="date" disabled={!isTwoDay} value={isTwoDay ? (endDate || addDays(date, 1)) : ''} onChange={(e) => setEndDate(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4 disabled:bg-zinc-100 disabled:text-zinc-400" />
              </label>
              {!isInternalBlockingEvent ? (
                <>
                  <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                    <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Arrival Time</div>
                    <input type="time" value={arrivalTime} onChange={(e) => setArrivalTime(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
                    <div className="mt-2 text-xs text-zinc-500">When photographers arrive.</div>
                  </label>
                  <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                    <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Start Time</div>
                    <input type="time" value={startTime} onChange={(e) => setStartTime(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
                    <div className="mt-2 text-xs text-zinc-500">When photographing starts.</div>
                  </label>
                </>
              ) : null}
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4 md:col-span-2">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Event Type</div>
                <select value={eventType} onChange={(e) => setEventType(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4">
                  {Object.keys(TYPE_COLORS).map(type => <option key={type} value={type}>{type}</option>)}
                </select>
              </label>
            </div>
            <div className="grid gap-4 md:grid-cols-2">
              {!isInternalBlockingEvent ? (
                <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                  <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Associated School / Account</div>
                  <input
                    list="school-account-options"
                    value={schoolName}
                    onChange={(e) => { setSchoolName(e.target.value); setError(''); }}
                    placeholder="Optional — select or type school/account name"
                    className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4"
                  />
                  <datalist id="school-account-options">
                    {schoolOptions.map(name => <option key={name} value={name} />)}
                  </datalist>
                  <div className="mt-2 text-xs text-zinc-500">Optional. If left blank, this event will not appear on a School List page.</div>
                </label>
              ) : null}
              <label className={`rounded-3xl border border-zinc-200 bg-white/70 p-4 ${isInternalBlockingEvent ? 'md:col-span-2' : ''}`}>
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Title</div>
                <input value={title} onChange={(e) => setTitle(e.target.value)} placeholder={isTimeOff ? "Example: Beth PTO" : isPersonalAppointment ? "Example: Matt dentist appointment" : "Optional — auto-fills if blank"} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
                {!isInternalBlockingEvent && matchedSchool?.irm ? <div className="mt-2"><Pill className="border-amber-200 bg-amber-50 text-amber-900">IRM {matchedSchool.irm}</Pill></div> : null}
              </label>
            </div>
            {isInternalBlockingEvent ? (
              <PhotographerAssignmentPicker photographers={photographers} selectedPhotographers={selectedPhotographers} setSelectedPhotographers={setSelectedPhotographers} events={events} date={date} schoolName={title || eventType} />
            ) : null}
            {!isInternalBlockingEvent ? (
              <>
                <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                  <h3 className="text-sm font-semibold text-zinc-900">Required Staffing</h3>
                  <p className="mt-1 text-xs text-zinc-500">Set how many people this event needs, even if you are not assigning every person yet.</p>
                  <div className="mt-3 grid gap-3 sm:grid-cols-2">
                    <label className="rounded-2xl border border-zinc-200 bg-white p-3">
                      <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Photographers Required</div>
                      <select value={requiredPhotographers} onChange={(e) => setRequiredPhotographers(Number(e.target.value))} className="mt-2 w-full rounded-xl border border-zinc-200 bg-white px-3 py-2 text-sm font-semibold outline-none">
                        {[1,2,3,4,5,6].map(count => <option key={count} value={count}>{count}</option>)}
                      </select>
                    </label>
                    <label className="rounded-2xl border border-zinc-200 bg-white p-3">
                      <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Assistants Needed</div>
                      <select value={noAssistant ? 0 : requiredAssistants} onChange={(e) => { const count = Number(e.target.value); setRequiredAssistants(count); setNoAssistant(count === 0); if (count === 0) setSelectedAssistants([]); }} className="mt-2 w-full rounded-xl border border-zinc-200 bg-white px-3 py-2 text-sm font-semibold outline-none">
                        {[0,1,2,3,4,5,6].map(count => <option key={count} value={count}>{count}</option>)}
                      </select>
                    </label>
                  </div>
                </section>

                {isTwoDay ? (
                  <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                    <h3 className="text-sm font-semibold text-zinc-900">Per-Day Staffing</h3>
                    <p className="mt-1 text-xs text-zinc-500">Multi-day events can have different photographers and assistants on each date. These assignments are shared with Schedule Live.</p>
                    <div className="mt-3 space-y-3">
                      {assignmentDates.map(day => {
                        const assignedPhotogs = uniqueCanonicalPhotographers(dayAssignments?.[day]?.photographers || []);
                        const assignedAssts = Array.isArray(dayAssignments?.[day]?.assistants) ? dayAssignments[day].assistants.filter(Boolean) : [];
                        return (
                          <div key={day} className="rounded-2xl border border-zinc-200 bg-white p-3">
                            <div className="flex flex-wrap items-center justify-between gap-2">
                              <div className="text-sm font-black text-zinc-900">{formatDate(day)}</div>
                              <Pill className={assignedPhotogs.length >= (Number(requiredPhotographers) || 1) ? 'border-emerald-200 bg-emerald-50 text-emerald-800' : 'border-rose-200 bg-rose-50 text-rose-700'}>{assignedPhotogs.length}/{Number(requiredPhotographers) || 1} photogs</Pill>
                            </div>
                            <div className="mt-3 text-xs font-semibold uppercase tracking-wide text-zinc-500">Photographers</div>
                            <div className="mt-2 flex flex-wrap gap-2">
                              {photographers.map(name => {
                                const clean = canonicalPhotographerName(name);
                                return <button key={`${day}-photog-${clean}`} type="button" onClick={() => toggleDayAssignmentName(day, 'photographers', clean)} className={`rounded-full border px-3 py-2 text-sm transition ${assignedPhotogs.includes(clean) ? 'border-[#AEBB9E] bg-[#DDE8D2] text-zinc-900' : 'border-zinc-200 bg-white text-zinc-700 hover:bg-zinc-50'}`}>{clean}</button>;
                              })}
                            </div>
                            {noAssistant || (Number(requiredAssistants) || 0) <= 0 ? (
                              <div className="mt-3 rounded-2xl border border-zinc-200 bg-zinc-50 p-3 text-sm font-semibold text-zinc-500">No assistant needed for this event. Change Assistants Needed above if that changes.</div>
                            ) : (
                              <>
                                <div className="mt-3 text-xs font-semibold uppercase tracking-wide text-zinc-500">Assistants</div>
                                <div className="mt-2 flex flex-wrap gap-2">
                                  {assistants.map(name => <button key={`${day}-asst-${name}`} type="button" onClick={() => toggleDayAssignmentName(day, 'assistants', name)} className={`rounded-full border px-3 py-2 text-sm transition ${assignedAssts.includes(name) ? 'border-[#AEBB9E] bg-[#DDE8D2]/70 text-zinc-900' : 'border-zinc-200 bg-white text-zinc-700 hover:bg-zinc-50'}`}>{name}</button>)}
                                </div>
                              </>
                            )}
                          </div>
                        );
                      })}
                    </div>
                  </section>
                ) : (
                  <>
                    <PhotographerAssignmentPicker photographers={photographers} selectedPhotographers={selectedPhotographers} setSelectedPhotographers={setSelectedPhotographers} events={events} date={date} schoolName={schoolName} />
                    <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                      <h3 className="text-sm font-semibold text-zinc-900">Assistants</h3>
                      {noAssistant || (Number(requiredAssistants) || 0) <= 0 ? (
                        <div className="mt-3 rounded-2xl border border-zinc-200 bg-zinc-50 p-3 text-sm font-semibold text-zinc-500">No assistant needed for this event. Change Assistants Needed above if that changes.</div>
                      ) : (
                        <div className="mt-3 flex flex-wrap gap-2">
                          {assistants.map(name => <button key={name} type="button" onClick={() => { setNoAssistant(false); toggleName(name, setSelectedAssistants); }} className={`rounded-full border px-3 py-2 text-sm transition ${!noAssistant && selectedAssistants.includes(name) ? 'border-[#AEBB9E] bg-[#DDE8D2] text-zinc-900' : 'border-zinc-200 bg-white text-zinc-700 hover:bg-zinc-50'}`}>{name}</button>)}
                        </div>
                      )}
                    </section>
                  </>
                )}
              </>
            ) : null}
            <label className="block rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">{isTimeOff ? 'Time Off Notes' : isPersonalAppointment ? 'Personal Appointment Notes' : 'Add New Picture Day Note'}</div>
              <textarea value={newNote} onChange={(e) => setNewNote(e.target.value)} rows={4} placeholder={isTimeOff ? 'Optional details about this time off.' : isPersonalAppointment ? 'Optional details about this personal appointment.' : 'Add a new picture day note. Admins can edit prior note entries if details change.'} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
            </label>
            <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <div className="flex items-center justify-between gap-3">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Picture Day Notes ({getNoteHistory(noteAttribution).length})</div>
                {canEditNotes ? <Pill className="border-[#AEBB9E] bg-[#DDE8D2]/70 text-zinc-800">Admin note editing enabled</Pill> : null}
              </div>
              <div className="mt-3"><NoteHistoryList entries={getNoteHistory(noteAttribution)} canEdit={canEditNotes} onEditNote={(noteId, text) => setNoteAttribution(prev => editNoteHistory(prev, noteId, authEmail, text))} /></div>
              {notes ? (
                <div className="mt-4 rounded-2xl border border-zinc-200 bg-white/70 p-3">
                  <div className="mb-2 text-[11px] font-semibold uppercase tracking-wide text-zinc-500">Existing Picture Day Info</div>
                  {canEditNotes ? (
                    <textarea value={notes} onChange={(event) => setNotes(event.target.value)} rows={8} className="w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm leading-6 text-zinc-800 outline-none focus:border-[#AEBB9E]" />
                  ) : (
                    <div className="whitespace-pre-wrap text-sm leading-6 text-zinc-700">{notes}</div>
                  )}
                </div>
              ) : null}
            </section>
          </div>
          <div className="sticky bottom-0 z-30 flex shrink-0 justify-end gap-2 border-t border-zinc-200 bg-cream/98 p-4 pb-[calc(1rem+env(safe-area-inset-bottom))] shadow-[0_-10px_25px_rgba(0,0,0,0.10)] backdrop-blur sm:p-5">
            <button type="button" onClick={onClose} className="rounded-2xl border border-zinc-200 bg-white px-4 py-2 text-sm font-semibold text-zinc-700">Cancel</button>
            <button type="button" onClick={save} disabled={saving} className="rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm disabled:cursor-not-allowed disabled:opacity-60">{saving ? 'Saving…' : (isDuplicate ? "Save Duplicate" : isEditing ? "Save Changes" : "Save Event")}</button>
          </div>
        </motion.div>
      </motion.div>
    </AnimatePresence>
  );
}


function AddSchoolModal({ onClose, onSave }) {
  const [name, setName] = useState('');
  const [irm, setIrm] = useState('');
  const [address, setAddress] = useState('');
  const [city, setCity] = useState('');
  const [stateZip, setStateZip] = useState('');
  const [contactFirst, setContactFirst] = useState('');
  const [contactLast, setContactLast] = useState('');
  const [contactPhone, setContactPhone] = useState('');
  const [contactEmail, setContactEmail] = useState('');
  const [contactTitle, setContactTitle] = useState('');
  const [secondaryContactFirst, setSecondaryContactFirst] = useState('');
  const [secondaryContactLast, setSecondaryContactLast] = useState('');
  const [secondaryContactEmail, setSecondaryContactEmail] = useState('');
  const [secondaryContactTitle, setSecondaryContactTitle] = useState('');
  const [notes, setNotes] = useState('');
  const [error, setError] = useState('');

  const save = () => {
    const cleanName = name.trim();
    if (!cleanName) {
      setError('Please enter a school/account name.');
      return;
    }

    onSave({
      name: cleanName,
      originalName: cleanName,
      irm,
      address,
      city,
      stateZip,
      contactFirst,
      contactLast,
      contactPhone,
      contactEmail,
      contactTitle,
      secondaryContactFirst,
      secondaryContactLast,
      secondaryContactEmail,
      secondaryContactTitle,
      notes,
      referenceImages: [],
      active: true
    });
  };

  return (
    <AnimatePresence>
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/30 p-4 backdrop-blur-sm" onClick={onClose}>
        <motion.div initial={{ y: 30, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 20, opacity: 0 }} onClick={(e) => e.stopPropagation()} className="mx-auto mt-2 max-h-[95vh] max-w-3xl overflow-hidden rounded-[2rem] bg-cream shadow-2xl sm:mt-8">
          <div className="border-b border-zinc-200 p-5">
            <div className="flex items-start justify-between gap-4">
              <div>
                <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">Add School</Pill>
                <h2 className="mt-3 text-2xl font-semibold text-zinc-950">Create a School List record</h2>
                <p className="mt-1 text-sm text-zinc-600">This adds a school/account to the School List database only. It does not create a calendar event.</p>
              </div>
              <button onClick={onClose} className="rounded-full bg-white p-2 text-zinc-500 hover:text-zinc-900"><X size={18} /></button>
            </div>
          </div>

          <div className="max-h-[72vh] space-y-4 overflow-auto p-5">
            {error ? <div className="rounded-2xl border border-rose-200 bg-rose-50 px-4 py-3 text-sm font-medium text-rose-700">{error}</div> : null}

            <div className="grid gap-4 md:grid-cols-2">
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4 md:col-span-2">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">School / Account Name <span className="text-rose-600">*</span></div>
                <input value={name} onChange={(e) => { setName(e.target.value); setError(''); }} placeholder="Example: New School Name (District)" className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>

              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">IRM</div>
                <input value={irm} onChange={(e) => setIrm(e.target.value)} placeholder="Optional" className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>

              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Address</div>
                <input value={address} onChange={(e) => setAddress(e.target.value)} placeholder="Street address" className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>

              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">City</div>
                <input value={city} onChange={(e) => setCity(e.target.value)} placeholder="City" className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>

              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">State / Zip</div>
                <input value={stateZip} onChange={(e) => setStateZip(e.target.value)} placeholder="NY 12345" className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
            </div>

            <div className="grid gap-4 md:grid-cols-2">
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Contact First Name</div>
                <input value={contactFirst} onChange={(e) => setContactFirst(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Contact Last Name</div>
                <input value={contactLast} onChange={(e) => setContactLast(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Contact Phone</div>
                <input value={contactPhone} onChange={(e) => setContactPhone(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Contact Email</div>
                <input type="email" value={contactEmail} onChange={(e) => setContactEmail(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4 md:col-span-2">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Contact Title</div>
                <input value={contactTitle} onChange={(e) => setContactTitle(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
            </div>

            <div className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <div className="text-sm font-semibold text-zinc-800">Secondary Contact</div>
              <div className="mt-3 grid gap-4 md:grid-cols-2">
                <label>
                  <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">First Name</div>
                  <input value={secondaryContactFirst} onChange={(e) => setSecondaryContactFirst(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
                </label>
                <label>
                  <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Last Name</div>
                  <input value={secondaryContactLast} onChange={(e) => setSecondaryContactLast(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
                </label>
                <label>
                  <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Email</div>
                  <input type="email" value={secondaryContactEmail} onChange={(e) => setSecondaryContactEmail(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
                </label>
                <label>
                  <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Title</div>
                  <input value={secondaryContactTitle} onChange={(e) => setSecondaryContactTitle(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
                </label>
              </div>
            </div>

            <label className="block rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">School Notes</div>
              <textarea value={notes} onChange={(e) => setNotes(e.target.value)} rows={4} placeholder="Persistent notes about this school/account..." className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
            </label>
          </div>

          <div className="flex justify-end gap-2 border-t border-zinc-200 p-5">
            <button type="button" onClick={onClose} className="rounded-2xl border border-zinc-200 bg-white px-4 py-2 text-sm font-semibold text-zinc-700">Cancel</button>
            <button type="button" onClick={save} className="rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm">Save School</button>
          </div>
        </motion.div>
      </motion.div>
    </AnimatePresence>
  );
}

function CarrieView({ query, onClickEvent, photographers, assistants, events, onSchedule, schoolsList, setSchools, onSchoolAdded, canEdit = true }) {
  const schools = useMemo(() => getSchoolsToScheduleFromList(schoolsList, events), [schoolsList, events]);
  const availability = useMemo(() => getFall2026Availability(events, photographers), [events, photographers]);
  const [selectedSchool, setSelectedSchool] = useState(schools[0] || null);
  const [schedulingSchool, setSchedulingSchool] = useState(null);
  const [addingEvent, setAddingEvent] = useState(false);
  const [addingEventDefaultDate, setAddingEventDefaultDate] = useState(todayKey());
  const [addingSchool, setAddingSchool] = useState(false);
  const [noFallUndo, setNoFallUndo] = useState(null);

  const setNoFallScheduling = async (school, value) => {
    if (!school) return;
    const originalName = school.originalName || school.name;
    const nextSchool = { ...school, noFallSchedulingFall2026: value };

    setSchools?.(prev => (prev || []).map(item => (item.originalName || item.name) === originalName ? { ...item, noFallSchedulingFall2026: value } : item));
    setNoFallUndo(value ? { school: nextSchool, originalName } : null);

    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) return;

    const updatePayload = { no_fall_scheduling_fall_2026: value, updated_at: new Date().toISOString() };
    const { error } = school.id
      ? await supabase.from('schools').update(updatePayload).eq('id', school.id)
      : await supabase.from('schools').update(updatePayload).eq('original_name', originalName);

    if (error) {
      setSchools?.(prev => (prev || []).map(item => (item.originalName || item.name) === originalName ? { ...item, noFallSchedulingFall2026: !value } : item));
      setNoFallUndo(null);
      alert(`Could not update No Fall Scheduling: ${error.message}`);
    }
  };

  useEffect(() => {
    if (!schools.length) {
      setSelectedSchool(null);
      return;
    }
    if (!selectedSchool || !schools.some(school => school.name === selectedSchool.name)) {
      setSelectedSchool(schools[0]);
    }
  }, [schools, selectedSchool]);

  const q = query.trim().toLowerCase();
  const filteredSchools = q
    ? schools.filter(item => [item.name, item.displayName, item.notes, item.lastEvent?.title, item.lastEvent?.notes, ...(item.referencePhotographers || []), ...(item.lastEvent?.photographers || []), ...(item.lastEvent?.assistants || [])].filter(Boolean).join('\n').toLowerCase().includes(q))
    : schools;

  const saveSchool = async (schoolValues) => {
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      alert('Supabase is not connected, so this school cannot be saved yet.');
      return;
    }

    const row = schoolToSupabaseRow(schoolValues);
    const result = await runSchoolMutationWithColumnFallback(
      async (payload) => schoolValues?.id
        ? await supabase.from('schools').update(payload).eq('id', schoolValues.id).select().single()
        : await supabase.from('schools').upsert(payload, { onConflict: 'original_name' }).select().single(),
      row
    );

    const { data, error } = result;

    if (error) {
      alert(`Could not save school: ${error.message}`);
      return;
    }

    const savedSchool = supabaseRowToSchool(data);
    setSchools?.(prev => {
      const without = (prev || []).filter(school => {
        if (school.id && savedSchool.id) return school.id !== savedSchool.id;
        return (school.originalName || school.name) !== (savedSchool.originalName || savedSchool.name);
      });
      return [...without, savedSchool].sort((a, b) => a.name.localeCompare(b.name));
    });
    onSchoolAdded?.(savedSchool.name);
    setAddingSchool(false);
  };

  return (
    <div className="space-y-4">
      <div className="flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
        <div>
          <h2 className="text-lg font-semibold text-zinc-950">Carrie View</h2>
          <p className="mt-1 text-sm text-zinc-600">Scheduling workspace for schools, new events, and School List records.</p>
        </div>
        {canEdit ? (
          <div className="flex flex-wrap gap-2 sm:justify-end">
            <button type="button" onClick={() => setAddingEvent(true)} className="inline-flex min-h-11 items-center justify-center gap-2 rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5"><Plus size={16} /> Add Event</button>
            <button type="button" onClick={() => setAddingSchool(true)} className="inline-flex min-h-11 items-center justify-center gap-2 rounded-2xl border border-[#AEBB9E] bg-[#DDE8D2]/80 px-4 py-2 text-sm font-semibold text-zinc-900 shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2]"><Plus size={16} /> Add School</button>
          </div>
        ) : null}
      </div>
      <div className="grid gap-4 xl:grid-cols-[minmax(360px,0.95fr)_minmax(520px,1.25fr)]">
        <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm xl:flex xl:max-h-[680px] xl:flex-col xl:overflow-hidden">
          <div className="mb-5 flex flex-col gap-4 sm:flex-row sm:items-start sm:justify-between">
            <div className="max-w-xl">
              <h2 className="text-lg font-semibold text-zinc-950">To Be Scheduled <span className="text-zinc-500">[Fall 2026]</span></h2>
              <p className="mt-2 text-sm leading-6 text-zinc-600">Click a school to review it for Fall 2026 scheduling. Since Fall 2026 starts blank, this is the full working list until schools are saved.</p>
            </div>
            <div className="flex shrink-0 flex-col items-start gap-2 sm:items-end">
              <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">{filteredSchools.length} to schedule</Pill>
            </div>
          </div>
          <div className="space-y-2 xl:min-h-0 xl:flex-1 xl:overflow-auto xl:pr-1">
            {filteredSchools.map(item => (
              <div key={item.name} onClick={() => setSelectedSchool(item)} role="button" tabIndex={0} onKeyDown={(event) => { if (event.key === 'Enter' || event.key === ' ') setSelectedSchool(item); }} className={`w-full cursor-pointer rounded-2xl border p-3 text-left transition hover:-translate-y-0.5 hover:shadow-soft ${selectedSchool?.name === item.name ? 'border-[#AEBB9E] bg-[#DDE8D2]/70' : 'border-zinc-200 bg-cream/75'}`}>
                <div className="flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
                  <div>
                    <div className="text-sm font-semibold text-zinc-950">{item.displayName || item.name}</div>
                    <div className="mt-1 text-xs text-zinc-500">{item.lastEvent ? `2025 reference: ${formatDate(item.lastEvent.date)}` : 'No imported Fall 2025 event matched yet'}</div>
                  </div>
                  {item.irm ? <Pill className="border-zinc-200 bg-white text-zinc-700">IRM {item.irm}</Pill> : null}
                </div>
                <div className="mt-2 text-xs text-zinc-600">{item.lastEvent?.title || 'Needs historical matching/review'}</div>
                <div className="mt-3 flex items-center justify-between gap-2">
                  <div className="min-h-7">{item.lastEvent ? <div className="text-xs text-zinc-500">2025 Fall assigned: {item.referencePhotographers?.length ? item.referencePhotographers.join(', ') : '—'}</div> : null}</div>
                  {canEdit ? <button type="button" onClick={(event) => { event.stopPropagation(); setNoFallScheduling(item, true); }} className="shrink-0 rounded-full border border-slate-200 bg-white px-3 py-1.5 text-xs font-semibold text-slate-700 shadow-sm transition hover:border-slate-300 hover:bg-slate-50">No Fall Scheduling</button> : null}
                </div>
              </div>
            ))}
          </div>
        </section>

        <section className="space-y-3">
          <div className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm xl:max-h-[680px] xl:overflow-auto">
            <div className="mb-4 flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
              <div>
                <h2 className="text-lg font-semibold text-zinc-950">Selected School</h2>
                <p className="mt-1 text-sm text-zinc-600">Review history, contacts, notes, and prior assignments before scheduling.</p>
              </div>
              {selectedSchool && canEdit ? <button type="button" onClick={() => setSchedulingSchool(selectedSchool)} className="inline-flex min-h-11 items-center justify-center rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5">Schedule for Fall 2026</button> : null}
            </div>
            <SchoolHistoryPanel school={selectedSchool} onClickEvent={onClickEvent} />
          </div>
        </section>
      </div>

      <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
        <div className="mb-4">
          <h2 className="text-lg font-semibold text-zinc-950">Fall 2026 Date Availability</h2>
          <p className="mt-1 text-sm text-zinc-600">August through December, including weekends. Availability reflects booked events and weekly rollout capacity.</p>
        </div>
        <div className="grid max-h-[520px] gap-2 overflow-auto pr-1 md:grid-cols-2 xl:grid-cols-3">
          {availability.map(day => (
            <button key={day.date} type="button" onClick={() => { if (!canEdit) return; setAddingEventDefaultDate(day.date); setAddingEvent(true); }} className={`rounded-2xl border p-3 text-left transition ${canEdit ? 'cursor-pointer hover:-translate-y-0.5 hover:shadow-soft focus:outline-none focus:ring-4 focus:ring-[#AEBB9E]/30' : ''} ${day.capacity.className || 'border-zinc-200 bg-cream/75 text-zinc-800'}`} title={canEdit ? `Add an event on ${formatDate(day.date)}` : undefined}>
              <div className="flex items-start justify-between gap-3">
                <div className="min-w-0">
                  <div className="text-sm font-semibold">{formatDate(day.date)}</div>
                  <div className="mt-1 text-xs opacity-75">{day.scheduledCount ? `${day.scheduledCount} scheduled item${day.scheduledCount === 1 ? '' : 's'}` : 'No events scheduled yet'}</div>
                </div>
                <div className="flex shrink-0 flex-wrap justify-end gap-2">
                  <Pill className="border-current bg-white/60 text-current">Day: {day.dayRollouts} rollout{day.dayRollouts === 1 ? '' : 's'}</Pill>
                  <Pill className="border-current bg-white/60 text-current">Week: {day.weekRollouts} / {WEEKLY_ROLLOUT_CAPACITY}</Pill>
                </div>
              </div>
              <div className="mt-3 h-2 overflow-hidden rounded-full bg-white/70">
                <div className={`${day.capacity.barClassName || 'bg-emerald-500'} h-full rounded-full`} style={{ width: `${Math.min(100, Math.round((day.weekRollouts / WEEKLY_ROLLOUT_CAPACITY) * 100))}%` }} />
              </div>
              <div className="mt-3 text-xs leading-relaxed opacity-70">Currently Booked: {day.scheduled.map(event => event.title).join(', ') || '—'}</div>
            </button>
          ))}
        </div>
      </section>
      {canEdit ? <SchedulingModal school={schedulingSchool} photographers={photographers} assistants={assistants} events={events} onClose={() => setSchedulingSchool(null)} onSave={onSchedule} defaultDate={addingEventDefaultDate} /> : null}
      {canEdit && noFallUndo ? (
        <div className="fixed bottom-24 left-1/2 z-50 w-[min(92vw,520px)] -translate-x-1/2 rounded-2xl border border-slate-200 bg-zinc-950 px-4 py-3 text-sm text-white shadow-2xl sm:bottom-6">
          <div className="flex items-center justify-between gap-3">
            <div><span className="font-semibold">{noFallUndo.school?.displayName || noFallUndo.school?.name}</span> marked No Fall Scheduling.</div>
            <button type="button" onClick={() => setNoFallScheduling(noFallUndo.school, false)} className="rounded-full bg-white px-3 py-1.5 text-xs font-semibold text-zinc-950">Undo</button>
          </div>
        </div>
      ) : null}
      {canEdit && addingEvent && <AddEventModal photographers={photographers} assistants={assistants} events={events} schools={schoolsList} onClose={() => setAddingEvent(false)} onSave={onSchedule} defaultDate={addingEventDefaultDate} sourceLabel="Carrie View" />}
      {canEdit && addingSchool && <AddSchoolModal onClose={() => setAddingSchool(false)} onSave={saveSchool} />}
    </div>
  );
}


function EditSchoolModal({ school, onClose, onSave }) {
  const [name, setName] = useState(school?.name || '');
  const [irm, setIrm] = useState(school?.irm ?? '');
  const [address, setAddress] = useState(school?.address || '');
  const [city, setCity] = useState(school?.city || '');
  const [stateZip, setStateZip] = useState(school?.stateZip || '');
  const [contactFirst, setContactFirst] = useState(school?.contactFirst || '');
  const [contactLast, setContactLast] = useState(school?.contactLast || '');
  const [contactPhone, setContactPhone] = useState(school?.contactPhone || '');
  const [contactEmail, setContactEmail] = useState(school?.contactEmail || '');
  const [contactTitle, setContactTitle] = useState(school?.contactTitle || '');
  const [secondaryContactFirst, setSecondaryContactFirst] = useState(school?.secondaryContactFirst || '');
  const [secondaryContactLast, setSecondaryContactLast] = useState(school?.secondaryContactLast || '');
  const [secondaryContactEmail, setSecondaryContactEmail] = useState(school?.secondaryContactEmail || '');
  const [secondaryContactTitle, setSecondaryContactTitle] = useState(school?.secondaryContactTitle || '');
  const [newNote, setNewNote] = useState('');
  const [saving, setSaving] = useState(false);
  const [saveStatus, setSaveStatus] = useState('');
  const [referenceImages, setReferenceImages] = useState(school?.referenceImages || []);
  const [noFallSchedulingFall2026, setNoFallSchedulingFall2026] = useState(Boolean(school?.noFallSchedulingFall2026));

  useEffect(() => {
    setName(school?.name || '');
    setIrm(school?.irm ?? '');
    setAddress(school?.address || '');
    setCity(school?.city || '');
    setStateZip(school?.stateZip || '');
    setContactFirst(school?.contactFirst || '');
    setContactLast(school?.contactLast || '');
    setContactPhone(school?.contactPhone || '');
    setContactEmail(school?.contactEmail || '');
    setContactTitle(school?.contactTitle || '');
    setSecondaryContactFirst(school?.secondaryContactFirst || '');
    setSecondaryContactLast(school?.secondaryContactLast || '');
    setSecondaryContactEmail(school?.secondaryContactEmail || '');
    setSecondaryContactTitle(school?.secondaryContactTitle || '');
    setNewNote('');
    setSaveStatus('');
    setSaving(false);
    setReferenceImages(school?.referenceImages || []);
    setNoFallSchedulingFall2026(Boolean(school?.noFallSchedulingFall2026));
  }, [school]);

  if (!school) return null;

  const handleImageUpload = (event) => {
    const files = Array.from(event.target.files || []);
    files.forEach((file) => {
      if (!file.type.startsWith('image/')) return;
      const reader = new FileReader();
      reader.onload = () => {
        setReferenceImages(prev => [
          ...prev,
          {
            id: `${Date.now()}-${file.name}`,
            src: reader.result,
            caption: file.name.replace(/\.[^/.]+$/, '')
          }
        ]);
      };
      reader.readAsDataURL(file);
    });
    event.target.value = '';
  };

  const updateImageCaption = (id, caption) => {
    setReferenceImages(prev => prev.map(image => image.id === id ? { ...image, caption } : image));
  };

  const removeImage = (id) => {
    setReferenceImages(prev => prev.filter(image => image.id !== id));
  };

  const handleSave = async () => {
    const cleanName = name.trim();
    if (!cleanName || saving) return;
    setSaving(true);
    setSaveStatus('Saving school changes…');
    try {
      const result = await onSave(school.originalName || school.name, {
        id: school.id,
        originalName: school.originalName || school.name,
        name: cleanName,
        irm: irm === '' ? null : Number(irm),
        address,
        city,
        stateZip,
        contactFirst,
        contactLast,
        contactPhone,
        contactEmail,
        contactTitle,
        secondaryContactFirst,
        secondaryContactLast,
        secondaryContactEmail,
        secondaryContactTitle,
        notes: school.notes || '',
        newNote: newNote.trim(),
        referenceImages,
        noFallSchedulingFall2026
      });
      if (result === false) {
        setSaveStatus('Save failed. Check the message on the School List page.');
        setSaving(false);
        return;
      }
      setSaveStatus('Saved.');
    } catch (error) {
      const message = error?.message || 'Unknown save error.';
      setSaveStatus(`Save failed: ${message}`);
      if (typeof window !== 'undefined') window.alert(`Could not save school: ${message}`);
      setSaving(false);
    }
  };

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/25 p-4 backdrop-blur-sm" onClick={onClose}>
      <motion.div initial={{ y: 20, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 20, opacity: 0 }} onClick={(e) => e.stopPropagation()} className="mx-auto mt-2 max-h-[95vh] max-w-2xl overflow-auto rounded-[2rem] bg-cream p-4 shadow-2xl sm:mt-6 sm:p-5">
        <div className="flex items-start justify-between gap-4">
          <div>
            <h2 className="text-xl font-semibold text-zinc-950">Edit School</h2>
            <p className="mt-1 text-sm text-zinc-600">Edits save to Supabase. School Notes should remain attached to this school record.</p>
          </div>
          <button onClick={onClose} className="rounded-full bg-white p-2 text-zinc-500 hover:text-zinc-900"><X size={18} /></button>
        </div>
        <div className="mt-5 grid gap-4">
          <label className="text-sm font-medium text-zinc-700">School Name
            <input value={name} onChange={(e) => setName(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
          </label>
          <label className="text-sm font-medium text-zinc-700">IRM
            <input type="number" value={irm ?? ''} onChange={(e) => setIrm(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
          </label>
          <div className="grid gap-4 sm:grid-cols-3">
            <label className="text-sm font-medium text-zinc-700 sm:col-span-3">Address
              <input value={address} onChange={(e) => setAddress(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
            </label>
            <label className="text-sm font-medium text-zinc-700 sm:col-span-2">City
              <input value={city} onChange={(e) => setCity(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
            </label>
            <label className="text-sm font-medium text-zinc-700">State Zip
              <input value={stateZip} onChange={(e) => setStateZip(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
            </label>
          </div>
          <div className="grid gap-4 sm:grid-cols-2">
            <label className="text-sm font-medium text-zinc-700">Contact First
              <input value={contactFirst} onChange={(e) => setContactFirst(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
            </label>
            <label className="text-sm font-medium text-zinc-700">Contact Last
              <input value={contactLast} onChange={(e) => setContactLast(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
            </label>
            <label className="text-sm font-medium text-zinc-700">Contact Phone
              <input value={contactPhone} onChange={(e) => setContactPhone(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
            </label>
            <label className="text-sm font-medium text-zinc-700">Contact Email
              <input value={contactEmail} onChange={(e) => setContactEmail(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
            </label>
            <label className="text-sm font-medium text-zinc-700 sm:col-span-2">Contact Title
              <input value={contactTitle} onChange={(e) => setContactTitle(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
            </label>
          </div>
          <section className="rounded-2xl border border-zinc-200 bg-white/70 p-3">
            <div className="text-sm font-semibold text-zinc-800">Secondary Contact</div>
            <div className="mt-3 grid gap-4 sm:grid-cols-2">
              <label className="text-sm font-medium text-zinc-700">First
                <input value={secondaryContactFirst} onChange={(e) => setSecondaryContactFirst(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
              </label>
              <label className="text-sm font-medium text-zinc-700">Last
                <input value={secondaryContactLast} onChange={(e) => setSecondaryContactLast(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
              </label>
              <label className="text-sm font-medium text-zinc-700">Email
                <input value={secondaryContactEmail} onChange={(e) => setSecondaryContactEmail(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
              </label>
              <label className="text-sm font-medium text-zinc-700">Title
                <input value={secondaryContactTitle} onChange={(e) => setSecondaryContactTitle(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
              </label>
            </div>
          </section>
          <section className="rounded-2xl border border-zinc-200 bg-white/70 p-3">
            <div className="text-sm font-semibold text-zinc-800">School Notes ({getNoteHistory(school.noteAttribution).length})</div>
            <div className="mt-3"><NoteHistoryList entries={getNoteHistory(school.noteAttribution)} /></div>
            {school.notes ? (
              <div className="mt-4 rounded-2xl border border-zinc-200 bg-cream/70 p-3">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Stored School Notes</div>
                <div className="mt-2 whitespace-pre-wrap text-sm leading-6 text-zinc-700">{school.notes}</div>
              </div>
            ) : null}
          </section>
          <label className="text-sm font-medium text-zinc-700">Add New Note
            <textarea value={newNote} onChange={(e) => setNewNote(e.target.value)} rows={5} placeholder="Add a new school note. Existing note history cannot be edited." className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm leading-6 outline-none focus:border-[#AEBB9E]" />
          </label>
          <label className="flex items-start gap-3 rounded-2xl border border-slate-200 bg-slate-50/80 p-3 text-sm text-zinc-700">
            <input type="checkbox" checked={noFallSchedulingFall2026} onChange={(e) => setNoFallSchedulingFall2026(e.target.checked)} className="mt-1 h-4 w-4 rounded border-zinc-300 text-zinc-900" />
            <span>
              <span className="font-semibold text-zinc-900">No Fall Scheduling</span>
              <span className="mt-1 block text-xs leading-5 text-zinc-500">Hide this school from Carrie View’s Fall 2026 To Be Scheduled list. This is reversible.</span>
            </span>
          </label>
        </div>
        {saveStatus ? <div className="mt-4 rounded-2xl border border-[#AEBB9E] bg-[#DDE8D2]/50 px-3 py-2 text-sm font-semibold text-zinc-800">{saveStatus}</div> : null}
        <div className="mt-5 flex justify-end gap-2">
          <button type="button" onClick={onClose} disabled={saving} className="rounded-full border border-zinc-200 bg-white px-4 py-2 text-sm font-semibold text-zinc-700 hover:bg-zinc-50 disabled:cursor-not-allowed disabled:opacity-60">Cancel</button>
          <button type="button" onClick={handleSave} disabled={saving} className="rounded-full bg-zinc-950 px-4 py-2 text-sm font-semibold text-white hover:bg-zinc-800 disabled:cursor-not-allowed disabled:opacity-60">{saving ? 'Saving…' : 'Save Changes'}</button>
        </div>
      </motion.div>
    </motion.div>
  );
}

function MergeSchoolModal({ sourceSchool, schools, onClose, onMerge }) {
  const targets = schools.filter(school => school.originalName !== sourceSchool?.originalName);
  const [targetName, setTargetName] = useState(targets[0]?.originalName || '');

  useEffect(() => {
    const nextTargets = schools.filter(school => school.originalName !== sourceSchool?.originalName);
    setTargetName(nextTargets[0]?.originalName || '');
  }, [sourceSchool, schools]);

  if (!sourceSchool) return null;
  const target = schools.find(school => school.originalName === targetName);

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/25 p-4 backdrop-blur-sm" onClick={onClose}>
      <motion.div initial={{ y: 20, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 20, opacity: 0 }} onClick={(e) => e.stopPropagation()} className="mx-auto mt-2 max-h-[95vh] max-w-2xl overflow-auto rounded-[2rem] bg-cream p-4 shadow-2xl sm:mt-10 sm:p-5">
        <div className="flex items-start justify-between gap-4">
          <div>
            <h2 className="text-xl font-semibold text-zinc-950">Merge School</h2>
            <p className="mt-1 text-sm text-zinc-600">Merge duplicate accounts so their notes and history appear on one School List page.</p>
          </div>
          <button onClick={onClose} className="rounded-full bg-white p-2 text-zinc-500 hover:text-zinc-900"><X size={18} /></button>
        </div>
        <div className="mt-5 rounded-2xl border border-zinc-200 bg-white/70 p-4 text-sm text-zinc-700">
          <div><span className="font-semibold">Merge from:</span> {sourceSchool.name}</div>
          <label className="mt-4 block font-medium text-zinc-700">Merge into
            <select value={targetName} onChange={(e) => setTargetName(e.target.value)} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]">
              {targets.map(school => <option key={school.originalName} value={school.originalName}>{school.name}</option>)}
            </select>
          </label>
          {target ? <p className="mt-3 text-xs text-zinc-500">After merging, {sourceSchool.name} will be hidden from the main list, and its imported records will show under {target.name}. Existing notes are appended to the target notes.</p> : null}
        </div>
        <div className="mt-5 flex justify-end gap-2">
          <button onClick={onClose} className="rounded-full border border-zinc-200 bg-white px-4 py-2 text-sm font-semibold text-zinc-700 hover:bg-zinc-50">Cancel</button>
          <button disabled={!targetName} onClick={() => onMerge(sourceSchool.originalName, targetName)} className="rounded-xl bg-zinc-950 px-4 py-2 text-sm font-semibold text-white hover:bg-zinc-800 disabled:opacity-40">Merge</button>
        </div>
      </motion.div>
    </motion.div>
  );
}


function MobileSchoolDetail({ school, onBack, onClickEvent, onEdit, onMerge }) {
  if (!school) return null;

  const addressLine = [school.address, [school.city, school.stateZip].filter(Boolean).join(', ')].filter(Boolean).join('\n');
  const schoolNoteHistory = getNoteHistory(school.noteAttribution);
  const visiblePlainSchoolNotes = getVisiblePlainSchoolNotes(school.notes);
  const plainSchoolNoteCount = countPlainSchoolNoteBlocks(visiblePlainSchoolNotes);
  const totalSchoolNoteCount = schoolNoteHistory.length + plainSchoolNoteCount;
  const grouped = (school.history || []).reduce((acc, event) => {
    if (!event || !event.date) return acc;
    const season = getSeasonLabel(event.date);
    acc[season] ||= [];
    acc[season].push(event);
    return acc;
  }, {});
  const seasons = ['Fall 2026', 'Spring 2026', 'Fall 2025', 'Spring 2025'];
  const allHistory = (school.history || []).slice().sort((a, b) => String(b.date || '').localeCompare(String(a.date || '')));
  const pictureInfoHistory = getPictureDayInfoHistory(school.history || []);
  const photographerHistory = getSchoolPhotographerHistory(school.history || []);
  const primaryName = [school.contactFirst, school.contactLast].filter(Boolean).join(' ');
  const secondaryName = [school.secondaryContactFirst, school.secondaryContactLast].filter(Boolean).join(' ');

  return (
    <section className="flex h-[calc(100dvh-4.75rem)] min-h-[520px] max-w-full flex-col overflow-hidden rounded-[1.35rem] border border-zinc-200 bg-white/90 shadow-sm">
      <div className="sticky top-0 z-10 border-b border-zinc-200 bg-white/95 px-3 py-2.5 backdrop-blur">
        <button type="button" onClick={onBack} className="mb-2 inline-flex items-center gap-1 rounded-full border border-zinc-200 bg-cream/80 px-3 py-1.5 text-xs font-black text-zinc-700">
          <ChevronLeft size={14} /> Back to Schools
        </button>
        <div className="flex items-start justify-between gap-2">
          <div className="min-w-0">
            <h2 className="text-base font-black leading-tight text-zinc-950">{school.name}</h2>
            <div className="mt-1 flex flex-wrap gap-1.5">
              {school.irm ? <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-[10px] text-zinc-800">IRM {school.irm}</Pill> : <Pill className="border-zinc-200 bg-white text-[10px] text-zinc-600">No IRM</Pill>}
              <Pill className="border-zinc-200 bg-white text-[10px] text-zinc-600">{(school.history || []).length} record{(school.history || []).length === 1 ? '' : 's'}</Pill>
              {school.noFallSchedulingFall2026 ? <Pill className="border-slate-200 bg-slate-50 text-[10px] text-slate-700">No Fall Scheduling</Pill> : null}
            </div>
          </div>
          {(onEdit || onMerge) ? (
            <div className="flex shrink-0 gap-1.5">
              {onEdit ? <button type="button" onClick={() => onEdit(school)} className="rounded-full bg-zinc-950 px-3 py-1.5 text-xs font-black text-white">Edit</button> : null}
              {onMerge ? <button type="button" onClick={() => onMerge(school)} className="rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/80 px-3 py-1.5 text-xs font-black text-zinc-900">Merge</button> : null}
            </div>
          ) : null}
        </div>
      </div>

      <div className="min-h-0 flex-1 overflow-y-auto px-3 py-3">
        <div className="grid gap-2">
          <div className="rounded-2xl border border-zinc-200 bg-cream/80 p-3">
            <div className="flex items-center justify-between gap-2">
              <div className="text-xs font-black uppercase tracking-wide text-zinc-500">Address</div>
              {school.address ? <a href={`https://www.google.com/maps/search/?api=1&query=${encodeURIComponent([school.address, school.city, school.stateZip].filter(Boolean).join('\n'))}`} target="_blank" rel="noreferrer" className="rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/80 px-2.5 py-1 text-[11px] font-black text-zinc-900">Maps</a> : null}
            </div>
            <div className="mt-1 whitespace-pre-wrap text-sm font-semibold leading-5 text-zinc-800">{addressLine || '—'}</div>
          </div>

          <div className="grid gap-2">
            <div className="rounded-2xl border border-zinc-200 bg-white/80 p-3">
              <div className="text-xs font-black uppercase tracking-wide text-zinc-500">Primary Contact</div>
              <div className="mt-1 text-sm font-black text-zinc-900">{primaryName || '—'}</div>
              {school.contactTitle ? <div className="text-xs font-semibold text-zinc-500">{school.contactTitle}</div> : null}
              {school.contactPhone ? <div className="mt-1 text-sm font-semibold text-zinc-700">{school.contactPhone}</div> : null}
              {school.contactEmail ? <div className="break-words text-xs font-semibold text-zinc-600">{school.contactEmail}</div> : null}
              <div className="mt-2 flex flex-wrap gap-1.5">
                {school.contactPhone ? <a href={`tel:${school.contactPhone}`} className="rounded-full border border-zinc-200 bg-cream/80 px-3 py-1.5 text-xs font-black text-zinc-800">Call</a> : null}
                {school.contactEmail ? <a href={`mailto:${school.contactEmail}`} className="rounded-full border border-zinc-200 bg-cream/80 px-3 py-1.5 text-xs font-black text-zinc-800">Email</a> : null}
              </div>
            </div>

            {[school.secondaryContactFirst, school.secondaryContactLast, school.secondaryContactEmail, school.secondaryContactTitle].some(Boolean) ? (
              <div className="rounded-2xl border border-zinc-200 bg-white/80 p-3">
                <div className="text-xs font-black uppercase tracking-wide text-zinc-500">Secondary Contact</div>
                <div className="mt-1 text-sm font-black text-zinc-900">{secondaryName || '—'}</div>
                {school.secondaryContactTitle ? <div className="text-xs font-semibold text-zinc-500">{school.secondaryContactTitle}</div> : null}
                {school.secondaryContactEmail ? <div className="break-words text-xs font-semibold text-zinc-600">{school.secondaryContactEmail}</div> : null}
                {school.secondaryContactEmail ? <a href={`mailto:${school.secondaryContactEmail}`} className="mt-2 inline-flex rounded-full border border-zinc-200 bg-cream/80 px-3 py-1.5 text-xs font-black text-zinc-800">Email</a> : null}
              </div>
            ) : null}
          </div>

          <div className="rounded-2xl border border-zinc-200 bg-white/80 p-3">
            <div className="flex items-center justify-between gap-2">
              <div className="text-xs font-black uppercase tracking-wide text-zinc-500">School Notes ({totalSchoolNoteCount})</div>
              {onEdit ? <button type="button" onClick={() => onEdit(school)} className="rounded-full border border-zinc-200 bg-cream/80 px-2.5 py-1 text-[11px] font-black text-zinc-800">Add Note</button> : null}
            </div>
            <div className="mt-2 max-h-56 overflow-y-auto rounded-2xl border border-zinc-100 bg-cream/60 p-2">
              <NoteHistoryList entries={schoolNoteHistory} />
              {visiblePlainSchoolNotes ? (
                <div className="mt-2 whitespace-pre-wrap text-xs leading-5 text-zinc-700">
                  <div className="mb-1 font-black uppercase tracking-wide text-zinc-500">{getPlainSchoolNoteLabel(visiblePlainSchoolNotes)}</div>
                  {visiblePlainSchoolNotes}
                </div>
              ) : schoolNoteHistory.length ? null : <div className="text-xs font-semibold text-zinc-400">No notes yet.</div>}
            </div>
          </div>

          <div className="rounded-2xl border border-zinc-200 bg-white/80 p-3">
            <div className="text-xs font-black uppercase tracking-wide text-zinc-500">Recent / Upcoming History</div>
            <div className="mt-2 max-h-72 space-y-1.5 overflow-y-auto pr-1">
              {allHistory.length ? allHistory.slice(0, 18).map(event => (
                <button key={`mobile-history-${event.id}`} type="button" onClick={() => onClickEvent(event)} className="w-full rounded-xl border border-zinc-200 bg-cream/70 p-2 text-left">
                  <div className="flex items-start justify-between gap-2">
                    <div className="min-w-0">
                      <div className="text-[11px] font-black text-zinc-500">{formatDate(event.date)} · {event.season || getSeasonLabel(event.date)}</div>
                      <div className="mt-0.5 truncate text-sm font-black text-zinc-950">{event.title}</div>
                      <div className="mt-0.5 truncate text-[11px] font-semibold text-zinc-500">Assigned: {event.photographers?.length ? event.photographers.join(', ') : '—'}</div>
                    </div>
                    <Pill className={`${TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'} shrink-0 text-[9px]`}>{event.type}</Pill>
                  </div>
                </button>
              )) : <div className="rounded-xl border border-dashed border-zinc-200 bg-cream/60 p-3 text-xs font-semibold text-zinc-400">No imported records yet.</div>}
            </div>
          </div>

          <div className="rounded-2xl border border-zinc-200 bg-white/80 p-3">
            <div className="text-xs font-black uppercase tracking-wide text-zinc-500">Season Snapshot</div>
            <div className="mt-2 grid grid-cols-2 gap-2">
              {seasons.map(season => {
                const seasonEvents = grouped[season] || [];
                return (
                  <div key={`mobile-season-${season}`} className="rounded-xl border border-zinc-200 bg-cream/70 p-2">
                    <div className="text-xs font-black text-zinc-800">{season}</div>
                    <div className="mt-1 text-[11px] font-semibold text-zinc-500">{seasonEvents.length} record{seasonEvents.length === 1 ? '' : 's'}</div>
                  </div>
                );
              })}
            </div>
          </div>

          <div className="rounded-2xl border border-zinc-200 bg-white/80 p-3">
            <div className="flex items-center gap-2 text-xs font-black uppercase tracking-wide text-zinc-500"><History size={14} /> Photographer History</div>
            <div className="mt-2 grid grid-cols-2 gap-2">
              {photographerHistory.length ? photographerHistory.slice(0, 8).map(item => (
                <div key={`mobile-photo-history-${item.name}`} className="rounded-xl border border-zinc-100 bg-cream/70 p-2">
                  <div className="truncate text-sm font-black text-zinc-950">{item.name}</div>
                  <div className="text-[11px] font-semibold text-zinc-500">{item.count} assignment{item.count === 1 ? '' : 's'}</div>
                  {item.lastDate ? <div className="mt-1 truncate text-[11px] text-zinc-600">Last: {shortDate(item.lastDate)}</div> : null}
                </div>
              )) : <div className="col-span-2 text-xs font-semibold text-zinc-400">No photographer history imported yet.</div>}
            </div>
          </div>

          <div className="rounded-2xl border border-zinc-200 bg-white/80 p-3">
            <div className="flex items-center gap-2 text-xs font-black uppercase tracking-wide text-zinc-500"><Pencil size={14} /> Picture Day Info</div>
            <div className="mt-2 max-h-72 space-y-1.5 overflow-y-auto pr-1">
              {pictureInfoHistory.length ? pictureInfoHistory.map(event => (
                <button key={`mobile-picture-info-${event.id}`} type="button" onClick={() => onClickEvent(event)} className="w-full rounded-xl border border-zinc-200 bg-cream/70 p-2 text-left">
                  <div className="text-[11px] font-black text-zinc-500">{event.season} · {shortDate(event.date)}</div>
                  <div className="mt-0.5 truncate text-xs font-black text-zinc-900">{event.title}</div>
                  {event.notes ? <div className="mt-1 line-clamp-3 whitespace-pre-wrap text-[11px] leading-4 text-zinc-600">{event.notes}</div> : null}
                </button>
              )) : <div className="text-xs font-semibold text-zinc-400">No picture day info imported yet.</div>}
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}



function splitStateZip(value = '') {
  const trimmed = String(value || '').trim();
  const parts = trimmed.split(/\s+/);
  if (parts.length >= 2 && /^[A-Z]{2}$/i.test(parts[0])) {
    return { state: parts[0].toUpperCase(), zip: parts.slice(1).join(' ') };
  }
  return { state: '', zip: trimmed };
}

function joinStateZip(state, zip, fallback = '') {
  const joined = [state, zip].filter(Boolean).join('\n').trim();
  return joined || fallback || '';
}

function schoolToSupabaseRow(school = {}) {
  const parsedStateZip = splitStateZip(school.stateZip || joinStateZip(school.state, school.zip));
  const state = school.state || parsedStateZip.state || null;
  const zip = school.zip || parsedStateZip.zip || null;
  return {
    original_name: school.originalName || school.original_name || school.name,
    name: school.name || school.originalName || school.original_name,
    district: school.district || null,
    irm: school.irm === '' || school.irm === undefined || school.irm === null ? null : Number(school.irm),
    address: school.address || null,
    city: school.city || null,
    state,
    zip,
    state_zip: school.stateZip || joinStateZip(state, zip) || null,
    notes: school.notes || null,
    school_notes_attribution: school.noteAttribution || school.school_notes_attribution || school.note_attribution || null,
    contact_first: school.contactFirst || null,
    contact_last: school.contactLast || null,
    contact_phone: school.contactPhone || null,
    contact_email: school.contactEmail || null,
    contact_title: school.contactTitle || null,
    secondary_contact_first: school.secondaryContactFirst || null,
    secondary_contact_last: school.secondaryContactLast || null,
    secondary_contact_email: school.secondaryContactEmail || null,
    secondary_contact_title: school.secondaryContactTitle || null,
    reference_images: school.referenceImages || school.reference_images || [],
    merged_into: school.mergedInto || null,
    active: school.active !== false,
    updated_at: new Date().toISOString(),
    no_fall_scheduling_fall_2026: Boolean(school.noFallSchedulingFall2026 || school.no_fall_scheduling_fall_2026)
  };
}

function supabaseRowToSchool(row = {}) {
  return {
    id: row.id,
    originalName: row.originalName || row.original_name || row.name,
    name: row.name,
    district: row.district || '',
    irm: row.irm ?? '',
    address: row.address || '',
    city: row.city || '',
    state: row.state || '',
    zip: row.zip || '',
    stateZip: row.stateZip || row.state_zip || joinStateZip(row.state, row.zip),
    notes: row.notes || '',
    noteAttribution: normalizeAttribution(row.noteAttribution || row.school_notes_attribution || row.note_attribution),
    contactFirst: row.contactFirst || row.contact_first || '',
    contactLast: row.contactLast || row.contact_last || '',
    contactPhone: row.contactPhone || row.contact_phone || '',
    contactEmail: row.contactEmail || row.contact_email || '',
    contactTitle: row.contactTitle || row.contact_title || '',
    secondaryContactFirst: row.secondaryContactFirst || row.secondary_contact_first || '',
    secondaryContactLast: row.secondaryContactLast || row.secondary_contact_last || '',
    secondaryContactEmail: row.secondaryContactEmail || row.secondary_contact_email || '',
    secondaryContactTitle: row.secondaryContactTitle || row.secondary_contact_title || '',
    referenceImages: row.referenceImages || row.reference_images || [],
    mergedInto: row.mergedInto || row.merged_into || null,
    active: row.active !== false,
    noFallSchedulingFall2026: Boolean(row.noFallSchedulingFall2026 || row.no_fall_scheduling_fall_2026),
    createdAt: row.createdAt || row.created_at || '',
    updatedAt: row.updatedAt || row.updated_at || ''
  };
}


function getMissingSupabaseColumn(error) {
  const message = String(error?.message || '');
  const match = message.match(/Could not find the '([^']+)' column/i) || message.match(/column ["']?([^"'\s]+)["']? .*does not exist/i);
  return match?.[1] || null;
}

function getSchoolCompletenessScore(school = {}) {
  return [school.name, school.address, school.city, school.stateZip, school.notes, school.contactFirst, school.contactLast, school.contactPhone, school.contactEmail, school.contactTitle, school.secondaryContactFirst, school.secondaryContactLast, school.secondaryContactEmail, school.secondaryContactTitle]
    .reduce((score, value) => score + (String(value || '').trim() ? 1 : 0), 0);
}

function schoolSortTimestamp(school = {}) {
  const raw = school.updatedAt || school.updated_at || school.createdAt || school.created_at || '';
  const value = Date.parse(raw);
  return Number.isFinite(value) ? value : 0;
}

function dedupeLoadedSchools(rows = []) {
  const byKey = new Map();
  (rows || []).map(supabaseRowToSchool).forEach((school) => {
    const key = normalizeSchoolMatchKey(school.originalName || school.name);
    if (!key) return;
    const current = byKey.get(key);
    if (!current) {
      byKey.set(key, school);
      return;
    }
    const schoolTime = schoolSortTimestamp(school);
    const currentTime = schoolSortTimestamp(current);
    const schoolScore = getSchoolCompletenessScore(school);
    const currentScore = getSchoolCompletenessScore(current);
    if (schoolTime > currentTime || (schoolTime === currentTime && schoolScore >= currentScore)) {
      byKey.set(key, school);
    }
  });
  return Array.from(byKey.values()).sort((a, b) => a.name.localeCompare(b.name));
}

async function runSchoolMutationWithColumnFallback(buildMutation, row, maxRetries = 6) {
  let payload = { ...(row || {}) };
  const removedColumns = [];
  for (let attempt = 0; attempt <= maxRetries; attempt += 1) {
    const result = await buildMutation(payload);
    if (!result?.error) {
      return { ...result, removedColumns };
    }
    const missingColumn = getMissingSupabaseColumn(result.error);
    if (!missingColumn || !(missingColumn in payload)) {
      return { ...result, removedColumns };
    }
    removedColumns.push(missingColumn);
    const { [missingColumn]: _discard, ...nextPayload } = payload;
    payload = nextPayload;
  }
  return { data: null, error: { message: `Could not save school after removing unavailable columns: ${removedColumns.join(', ')}` }, removedColumns };
}


function importedEventToSupabaseRow(event = {}) {
  return eventToSupabaseRow({
    ...event,
    id: `imported-${event.id}`,
    source: 'imported_code_baseline',
    sourceEventId: event.id,
    active: true
  });
}



function normalizeEventTypeName(value = '') {
  const clean = String(value || '').trim();
  if (clean.toLowerCase() === 'headshots' || clean.toLowerCase() === 'headshot') return 'Special Event';
  return clean || 'Special Event';
}

function normalizeImportedEventType(row = {}) {
  const rawType = normalizeEventTypeName(row.event_type);
  const title = String(row.title || '').toLowerCase();
  const date = String(row.date || '');
  const isGoogleImport = row.source === 'google_calendar_import';
  if (!isGoogleImport) return rawType || 'Special Event';
  if (title.includes('rain date') || /\brain\b/.test(title)) return 'Rain Date';
  if (title.includes('makeup') || title.includes('make up') || title.includes('retake') || rawType === 'makeup/retake') return 'Makeup Day';
  if (title.includes('sports') || rawType === 'sports') return 'Sports';
  if (title.includes('photo booth') || title.includes('photobooth') || rawType === 'photo booth') return 'Photo Booth';
  if (title.includes('headshot')) return 'Special Event';
  if (title.includes('senior') && !title.includes('underclass') && !title.includes('graduation') && !title.includes('pano')) return 'Seniors';
  if (title.includes('spring') || rawType === 'spring picture day') {
    if (!title.includes('grad') && !title.includes('graduation') && !title.includes('pano')) return 'Spring Picture Day';
  }
  const isFallWindow = date >= '2026-09-01' && date <= '2026-11-30';
  const schoolish = ['school','elem','elementary','academy','preschool','pre-k','prek','ms/hs','middle','high','upk','nursery','kindercare','learning garden','consortium','christian','jcc','boces','tsl','wildwood','heatly','pooh','savior','wonderland','little','tesago','skano','okte','arongen','karigon','shatekon','chango','craig','glencliff','rosendale','duanesburg','waterford','northville','hoosic','cohoes','green tech','gordon creek','malta','milton terrace','wood road'];
  const nonShoot = ['meeting','out of town','wedding','interview','training','jury','birthday','party','townhouse','branding','quarterly','monthly','staff meeting','workshop'];
  if (nonShoot.some(term => title.includes(term))) return title.includes('meeting') || title.includes('training') || title.includes('workshop') ? 'Call or Meeting' : 'Special Event';
  if (isFallWindow && (rawType === 'picture day' || rawType === 'review' || rawType === 'graduation/pano' || rawType === 'senior portraits' || rawType === 'internal/non-shoot review' || schoolish.some(term => title.includes(term)) || title.includes('first day') || title.includes('fall photos'))) return 'Fall Picture Day';
  if (rawType === 'picture day') return ['01','02','03','04','05','06'].includes(date.slice(5,7)) ? 'Spring Picture Day' : 'Fall Picture Day';
  if (rawType === 'senior portraits') return 'Seniors';
  if (rawType === 'internal/non-shoot review') return 'Call or Meeting';
  if (rawType === 'graduation/pano' || rawType === 'review') return 'Special Event';
  return rawType || 'Special Event';
}

function normalizeImportedCanonicalSchool(row = {}) {
  const current = String(row.canonical_school || '').trim();
  if (row.school_id || row.source !== 'google_calendar_import' || !current) return current;
  const clean = current
    .replace(/^HOLD\s+/i, '')
    .replace(/^NEW\s+/i, '')
    .replace(/\b(Fall|Spring|Picture|Photos?|Day|Makeups?|Makeup|Rain|Date|Seniors?|Senior|Underclass|Outdoor|Indoor|FULL DAY|ALL)\b/gi, '')
    .replace(/\s*\([^)]*\)\s*/g, ' ')
    .replace(/\s+/g, ' ')
    .trim();
  const lower = `${clean} ${row.title || ''}`.toLowerCase();
  const aliasPairs = [
    ['gordon creek', 'Gordon Creek Elementary School (Ballston Spa School District)'], ['malta', 'Malta Avenue Elementary School (Ballston Spa School District)'], ['milton terrace', 'Milton Terrace Elementary School (Ballston Spa School District)'], ['wood road', 'Wood Road Elementary School (Ballston Spa School District)'],
    ['rosendale', 'Rosendale Elementary School (Niskayuna School District)'], ['craig', 'Craig Elementary School (Niskayuna School District)'], ['glencliff', 'Glencliff Elementary School (Niskayuna School District)'],
    ['skano', 'Skano Elementary School (Shenendehowa School District)'], ['arongen', 'Arongen Elementary School (Shenendehowa School District)'], ['karigon', 'Karigon Elementary School (Shenendehowa School District)'], ['okte', 'Okte Elementary School (Shenendehowa School District)'], ['shatekon', 'Shatekon Elementary School (Shenendehowa School District)'], ['tesago', 'Tesago Elementary School (Shenendehowa School District)'], ['chango', 'Chango Elementary School (Shenendehowa School District)'],
    ['jefferson', 'Jefferson Elementary School (Schalmont School District)'], ['waterford halfmoon elementary', 'Waterford Halfmoon Elem'], ['waterford halfmoon ms', 'Waterford MS/HS'], ['waterford halfmoon', 'Waterford MS/HS'],
    ['duanesburg elementary', "D'burg Elementary"], ['duanesburg ms', "D'burg MS/HS"], ['green tech', 'Green Tech MS/HS'], ['hoosic valley ms', 'Hoosic Valley MS/HS'], ['hoosic ms', 'Hoosic Valley MS/HS'], ['hudson valley consortium', 'Hudson Valley Consortium'],
    ['albany academy', 'The Academies (AA/G)'], ['academy', 'The Academies (AA/G)'], ['northville', 'Northville'], ['loudonville christian', 'Loudonville Christian'], ['little achiever', 'Little Achievers'], ['pooh', 'Poohs Corner'], ['heatly', 'Heatly School'], ['learning garden latham', 'Learning Garden Latham'], ['learning garden slingerlands', 'Learning Garden Slingerlands'], ['wildwood', 'Wildwood']
  ];
  const found = aliasPairs.find(([needle]) => lower.includes(needle));
  if (found) return found[1];
  const exact = SCHOOLS.find(school => school.name.toLowerCase() === clean.toLowerCase());
  return exact?.name || current;
}

function eventToSupabaseRow(event = {}) {
  return {
    client_event_id: event.id || `event-${Date.now()}`,
    title: event.title || 'Untitled Event',
    date: event.date,
    end_date: event.endDate || null,
    time: event.time || null,
    arrival_time: event.arrivalTime || null,
    event_type: normalizeEventTypeName(event.type || event.eventType || 'Special Event'),
    status: event.status || 'Scheduled',
    season: event.season || getSeasonLabel(event.date || ''),
    picture_day_info: event.notes || null,
    picture_day_info_attribution: event.noteAttribution || event.picture_day_info_attribution || null,
    canonical_school: event.canonicalSchool || null,
    school_id: event.schoolId || event.school_id || null,
    photographers: event.photographers || [],
    assistants: event.assistants || [],
    no_assistant: Boolean(event.noAssistant),
    required_photographers: getRequiredPhotographerCount(event),
    required_assistants: getRequiredAssistantCount(event),
    schedule_live_day_assignments: event.scheduleLiveDayAssignments || event.schedule_live_day_assignments || null,
    irm: event.irm === '' || event.irm === undefined || event.irm === null ? null : Number(event.irm),
    rain_info: event.rainInfo || null,
    history: event.history || null,
    source: event.source || 'app',
    source_event_id: event.sourceEventId || null,
    active: event.active !== false,
    updated_at: new Date().toISOString()
  };
}

function supabaseRowToEvent(row = {}) {
  return {
    id: row.client_event_id || row.id,
    supabaseId: row.id,
    source: row.source || '',
    sourceEventId: row.source_event_id || null,
    date: row.date,
    endDate: row.end_date || null,
    title: row.title,
    canonicalSchool: normalizeImportedCanonicalSchool(row),
    schoolId: row.school_id || null,
    type: normalizeImportedEventType(row),
    status: row.status || 'Scheduled',
    photographers: row.photographers || [],
    assistants: row.assistants || [],
    noAssistant: Boolean(row.no_assistant),
    requiredPhotographers: row.required_photographers ?? null,
    requiredAssistants: row.required_assistants ?? null,
    scheduleLiveDayAssignments: row.schedule_live_day_assignments || {},
    features: [],
    irm: row.irm ?? null,
    time: row.time || 'TBD',
    arrivalTime: row.arrival_time || '',
    notes: row.picture_day_info || '',
    noteAttribution: normalizeAttribution(row.picture_day_info_attribution),
    rainInfo: row.rain_info || '',
    history: row.history || '',
    source: row.source || 'supabase',
    sourceEventId: row.source_event_id || null,
    createdAt: row.created_at || null,
    updatedAt: row.updated_at || row.created_at || null,
    active: row.active !== false,
    noFallSchedulingFall2026: Boolean(row.no_fall_scheduling_fall_2026)
  };
}

function SchoolPages({ query, onClickEvent, events, selectedName, setSelectedName, schools, setSchools, reloadSchools, schoolsMessage, authEmail, canEditSchools = true, canMergeSchools = true }) {
  const [schoolListQuery, setSchoolListQuery] = useState('');
  const q = (schoolListQuery || query).trim().toLowerCase();
  const [editingSchool, setEditingSchool] = useState(null);
  const [mergingSchool, setMergingSchool] = useState(null);
  const [addingSchool, setAddingSchool] = useState(false);
  const [message, setMessage] = useState('');
  const [mobileSchoolOpen, setMobileSchoolOpen] = useState(false);

  useEffect(() => {
    if (selectedName) setMobileSchoolOpen(true);
  }, [selectedName]);

  const mergedSourcesByTarget = useMemo(() => {
    const map = {};
    (schools || []).forEach((school) => {
      if (school?.mergedInto) {
        map[school.mergedInto] ||= [];
        map[school.mergedInto].push(school.originalName || school.name);
      }
    });
    return map;
  }, [schools]);

  const activeSchools = useMemo(() => (schools || [])
    .filter(school => school.active !== false && !school.mergedInto)
    .map(school => {
      const mergedFrom = mergedSourcesByTarget[school.originalName || school.name] || [];
      const mergedSourceSchools = mergedFrom.map(name => (schools || []).find(item => (item.originalName || item.name) === name)).filter(Boolean);
      const mergedNotes = mergedSourceSchools.map(item => item.notes).filter(Boolean);
      const mergedImages = mergedSourceSchools.flatMap(item => item.referenceImages || []);
      const notes = [school.notes, ...mergedNotes.map((note, index) => `Merged from ${mergedSourceSchools[index]?.name || mergedFrom[index]}:\n${note}`)].filter(Boolean).join('\n\n');

      return {
        ...school,
        notes,
        referenceImages: [...(school.referenceImages || []), ...mergedImages],
        mergedFrom: mergedSourceSchools.map(item => item.name),
        history: getSchoolHistoryForSchool(school, mergedSourceSchools, events)
      };
    })
    .sort((a, b) => a.name.localeCompare(b.name)), [events, schools, mergedSourcesByTarget]);

  const filtered = q ? activeSchools.filter(school => [school.name, school.notes, school.address, school.city, school.contactFirst, school.contactLast, school.contactEmail, school.secondaryContactFirst, school.secondaryContactLast, school.secondaryContactEmail, ...school.history.map(e => `${e.title} ${e.notes}`)].join(' ').toLowerCase().includes(q)) : activeSchools;
  const selected = activeSchools.find(school => school.name === selectedName || school.originalName === selectedName) || resolveSchoolListMatch(selectedName, activeSchools) || filtered[0] || null;

  const saveSchool = async (originalName, values) => {
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      const msg = 'Supabase is not connected yet. School edits cannot be saved.';
      setMessage(msg);
      if (typeof window !== 'undefined') window.alert(msg);
      return false;
    }

    try {
      const previous = (schools || []).find(school =>
        (values?.id && school.id === values.id) ||
        (school.originalName || school.name) === originalName
      ) || {};
    const newNote = String(values.newNote || '').trim();
    const { newNote: _discardNewNote, ...cleanValues } = values;
    const nextSchool = {
      ...previous,
      ...cleanValues,
      originalName,
      // v1.06: School List notes now persist to the existing Supabase `notes` column.
      // This preserves any imported School Log notes and appends new user notes instead of
      // relying only on noteAttribution, which made notes vulnerable to appearing missing.
      notes: newNote ? appendPlainSchoolNote(previous.notes || cleanValues.notes || '', authEmail, newNote) : (cleanValues.notes ?? previous.notes ?? ''),
      noteAttribution: newNote ? appendNoteHistory(previous.noteAttribution || cleanValues.noteAttribution, authEmail, newNote) : (previous.noteAttribution || cleanValues.noteAttribution || null)
    };
    const row = schoolToSupabaseRow(nextSchool);

    // Save School List edits back to the exact Supabase row when an id exists.
    // This is intentionally id-first so renamed schools keep updating the same
    // canonical row instead of creating a duplicate with the old imported name.
    const result = await runSchoolMutationWithColumnFallback(
      async (payload) => previous.id
        ? await supabase.from('schools').update(payload).eq('id', previous.id).select().single()
        : await supabase.from('schools').upsert(payload, { onConflict: 'original_name' }).select().single(),
      row
    );

    const { data, error, removedColumns } = result;

    if (error) {
      const msg = `Could not save school: ${error.message}`;
      setMessage(msg);
      if (typeof window !== 'undefined') window.alert(msg);
      return false;
    }

    const savedSchool = supabaseRowToSchool(data);
    setSchools(prev => {
      const without = (prev || []).filter(school => {
        if (savedSchool.id && school.id) return school.id !== savedSchool.id;
        return (school.originalName || school.name) !== originalName;
      });
      return [...without, savedSchool].sort((a, b) => a.name.localeCompare(b.name));
    });
    setSelectedName(savedSchool.name || originalName);
    setEditingSchool(null);
    setMessage(removedColumns?.length ? `School changes saved to Supabase. Skipped unavailable column${removedColumns.length === 1 ? '' : 's'}: ${removedColumns.join(', ')}.` : 'School changes saved to Supabase.');
    return true;
    } catch (error) {
      const msg = `Could not save school: ${error?.message || 'Unknown error'}`;
      setMessage(msg);
      if (typeof window !== 'undefined') window.alert(msg);
      return false;
    }
  };

  const mergeSchool = async (sourceOriginalName, targetOriginalName) => {
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setMessage('Supabase is not connected yet. School merges cannot be saved.');
      return;
    }

    const source = (schools || []).find(school => (school.originalName || school.name) === sourceOriginalName);
    if (!source) {
      setMessage('Could not find the source school to merge.');
      return;
    }

    const mergePayload = { merged_into: targetOriginalName, active: false, updated_at: new Date().toISOString() };
    const { data, error, removedColumns } = await runSchoolMutationWithColumnFallback(
      async (payload) => source.id
        ? await supabase.from('schools').update(payload).eq('id', source.id).select().single()
        : await supabase.from('schools').update(payload).eq('original_name', sourceOriginalName).select().single(),
      mergePayload
    );

    if (error) {
      setMessage(`Could not merge school: ${error.message}`);
      return;
    }

    const savedSource = supabaseRowToSchool(data);
    setSchools(prev => (prev || []).map(school => (school.originalName || school.name) === sourceOriginalName ? savedSource : school));
    const target = activeSchools.find(school => (school.originalName || school.name) === targetOriginalName);
    setSelectedName(target?.name || targetOriginalName);
    setMergingSchool(null);
    setMessage(`${source.name} merged into ${target?.name || targetOriginalName}.${removedColumns?.length ? ` Skipped unavailable column${removedColumns.length === 1 ? '' : 's'}: ${removedColumns.join(', ')}.` : ''}`);
  };

  return (
    <div className="max-w-full overflow-x-hidden space-y-3">
      {(schoolsMessage || message) ? (
        <div className="rounded-3xl border border-[#AEBB9E] bg-[#DDE8D2]/55 p-3 text-sm text-zinc-700 shadow-sm">
          {schoolsMessage ? <div>{schoolsMessage}</div> : null}
          {message ? <div>{message}</div> : null}
        </div>
      ) : null}
      <div className="md:hidden">
        {mobileSchoolOpen && selected ? (
          <MobileSchoolDetail
            school={selected}
            onBack={() => setMobileSchoolOpen(false)}
            onClickEvent={onClickEvent}
            onEdit={canEditSchools ? setEditingSchool : null}
            onMerge={canMergeSchools ? setMergingSchool : null}
          />
        ) : (
          <section className="flex h-[calc(100dvh-4.75rem)] min-h-[520px] max-w-full flex-col overflow-hidden rounded-[1.35rem] border border-zinc-200 bg-white/90 p-3 shadow-sm">
            <div className="flex items-center justify-between gap-3">
              <div>
                <h2 className="text-base font-black text-zinc-950">Schools</h2>
              </div>
              <div className="flex items-center gap-2">
                {canEditSchools ? (
                  <button type="button" onClick={() => setAddingSchool(true)} className="inline-flex items-center justify-center gap-1 rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/80 px-3 py-1.5 text-xs font-black text-zinc-900 shadow-sm">
                    <Plus size={14} /> Add
                  </button>
                ) : null}
                <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">{filtered.length}</Pill>
              </div>
            </div>
            <div className="mt-3">
              <input
                type="text"
                value={schoolListQuery}
                onChange={(event) => setSchoolListQuery(event.target.value)}
                placeholder="Search schools, contacts, notes, history..."
                className="w-full rounded-2xl border border-zinc-200 bg-white/95 px-4 py-3 text-base font-semibold text-zinc-800 shadow-sm outline-none ring-sage/30 placeholder:text-zinc-400 focus:ring-4"
              />
            </div>
            <div className="mt-3 min-h-0 flex-1 space-y-2 overflow-y-auto pr-1 pb-3">
              {filtered.map(school => (
                <button
                  key={school.originalName || school.name}
                  type="button"
                  onClick={() => { setSelectedName(school.name); setMobileSchoolOpen(true); }}
                  className="w-full rounded-2xl border border-zinc-200 bg-cream/80 p-3 text-left shadow-sm transition active:scale-[0.99]"
                >
                  <div className="flex items-start justify-between gap-2">
                    <div className="min-w-0">
                      <div className="truncate text-sm font-black text-zinc-950">{school.name}</div>
                      <div className="mt-1 truncate text-xs font-semibold text-zinc-500">{[school.contactFirst, school.contactLast].filter(Boolean).join(' ') || school.city || 'School List record'}</div>
                    </div>
                    <ChevronRight size={16} className="mt-0.5 shrink-0 text-zinc-400" />
                  </div>
                  <div className="mt-2 flex flex-wrap gap-1.5">
                    <Pill className="border-zinc-200 bg-white text-[10px] text-zinc-600">{school.history.length} record{school.history.length === 1 ? '' : 's'}</Pill>
                    {school.irm ? <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-[10px] text-zinc-800">IRM {school.irm}</Pill> : null}
                    {school.mergedFrom?.length ? <Pill className="border-zinc-200 bg-white text-[10px] text-zinc-600">{school.mergedFrom.length} merged</Pill> : null}
                  </div>
                </button>
              ))}
              {!filtered.length ? <div className="rounded-2xl border border-dashed border-zinc-200 bg-cream/70 p-5 text-center text-sm font-semibold text-zinc-500">No schools match that search.</div> : null}
            </div>
          </section>
        )}
      </div>

      <div className="hidden gap-4 md:grid xl:grid-cols-[340px_1fr]">
        <section className="flex max-h-[calc(100vh-2rem)] min-h-0 flex-col overflow-hidden rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm xl:sticky xl:top-4">
          <div className="flex items-center justify-between gap-3">
            <h2 className="text-lg font-semibold text-zinc-950">School List</h2>
            <div className="flex items-center gap-2">
              {canEditSchools ? (
                <button type="button" onClick={() => setAddingSchool(true)} className="inline-flex items-center justify-center gap-1 rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/80 px-3 py-1.5 text-xs font-semibold text-zinc-900 shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2]">
                  <Plus size={14} /> Add School
                </button>
              ) : null}
              <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">{filtered.length}</Pill>
            </div>
          </div>
          <p className="mt-1 text-sm text-zinc-600">Click a school to view imported schedule history. Edits now save to Supabase.</p>
          <div className="mt-4">
            <input
              type="text"
              value={schoolListQuery}
              onChange={(event) => setSchoolListQuery(event.target.value)}
              placeholder="Search this school list..."
              className="w-full rounded-2xl border border-zinc-200 bg-white/90 px-4 py-3 text-sm text-zinc-700 shadow-sm outline-none ring-sage/30 placeholder:text-zinc-400 focus:ring-4"
            />
          </div>

          <div className="mt-3 min-h-0 flex-1 space-y-2 overflow-auto pr-1 pb-3">
            {filtered.map(school => (
              <button key={school.originalName || school.name} onClick={() => setSelectedName(school.name)} className={`w-full rounded-2xl border p-3 text-left text-sm transition hover:bg-white ${selected?.originalName === school.originalName ? 'border-[#AEBB9E] bg-[#DDE8D2]/70' : 'border-zinc-200 bg-cream/75'}`}>
                <div className="font-semibold text-zinc-900">{school.name}</div>
                <div className="mt-1 text-xs text-zinc-500">{school.history.length} imported record{school.history.length === 1 ? '' : 's'}{school.irm ? ` · IRM ${school.irm}` : ''}{school.mergedFrom?.length ? ` · ${school.mergedFrom.length} merged` : ''}</div>
              </button>
            ))}
          </div>
        </section>
        <SchoolHistoryPanel school={selected} onClickEvent={onClickEvent} onEdit={canEditSchools ? setEditingSchool : null} onMerge={canMergeSchools ? setMergingSchool : null} />
      </div>
      <AnimatePresence>
        {editingSchool && <EditSchoolModal school={editingSchool} onClose={() => setEditingSchool(null)} onSave={saveSchool} />}
        {addingSchool && <AddSchoolModal onClose={() => setAddingSchool(false)} onSave={async (schoolValues) => {
          const saved = await saveSchool(schoolValues.originalName || schoolValues.name, schoolValues);
          if (saved !== false) setAddingSchool(false);
        }} />}
        {mergingSchool && <MergeSchoolModal sourceSchool={mergingSchool} schools={activeSchools} onClose={() => setMergingSchool(null)} onMerge={mergeSchool} />}
      </AnimatePresence>
    </div>
  );
}

function CalendarNavigator({ viewMode, month, setMonth, selectedDate, setSelectedDate, showKey = false }) {
  const goToday = () => {
    const today = todayKey();
    setSelectedDate(today);
    setMonth(monthKey(today));
  };
  const move = (delta) => {
    if (viewMode === 'Month') {
      const nextMonth = addMonths(month, delta);
      setMonth(nextMonth);
      setSelectedDate(`${nextMonth}-01`);
      return;
    }
    const nextDate = addDays(selectedDate, viewMode === 'Week' ? delta * 7 : delta);
    setSelectedDate(nextDate);
    setMonth(monthKey(nextDate));
  };
  const { start, end } = weekBounds(selectedDate);
  const label = viewMode === 'Month' ? monthLabel(month) : viewMode === 'Week' ? `${shortDate(start)} – ${shortDate(end)}` : formatDate(selectedDate);
  return (
    <div className="mb-4 flex flex-col items-center justify-center gap-3">
      <div className="grid w-full grid-cols-[44px_minmax(0,1fr)_44px] items-center gap-2 sm:flex sm:w-auto sm:justify-center">
        <button type="button" onClick={() => move(-1)} className="inline-flex h-11 w-11 items-center justify-center rounded-full border border-zinc-200 bg-white/85 text-zinc-700 shadow-sm transition hover:-translate-y-0.5 hover:bg-white hover:shadow-soft" aria-label="Previous"><ChevronLeft size={20} /></button>
        <div className="min-w-0 rounded-full border border-zinc-200 bg-white/90 px-4 py-2 text-center text-sm font-semibold text-zinc-900 shadow-sm sm:min-w-[280px] sm:px-6 sm:text-base">{label}</div>
        <button type="button" onClick={() => move(1)} className="inline-flex h-11 w-11 items-center justify-center rounded-full border border-zinc-200 bg-white/85 text-zinc-700 shadow-sm transition hover:-translate-y-0.5 hover:bg-white hover:shadow-soft" aria-label="Next"><ChevronRight size={20} /></button>
        <button type="button" onClick={goToday} className="col-span-3 mx-auto rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/80 px-4 py-2 text-sm font-semibold text-zinc-900 shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2] sm:col-span-1 sm:mx-0">Today</button>
      </div>
      {showKey ? <CalendarColorKey /> : null}
    </div>
  );
}


function MobileView({ events, photographers, assistants = [], selectedDate, setSelectedDate, onClick }) {
  const fieldPhotographers = ['Stephanie', 'Matt', 'Molly', 'Beth', 'Andrew', 'Erin'];
  const staffOptions = Array.from(new Set([
    ...fieldPhotographers,
    ...uniqueCanonicalPhotographers(photographers || []),
    ...(assistants || []).filter(Boolean)
  ])).filter(Boolean).sort((a, b) => a.localeCompare(b));
  const [selectedStaff, setSelectedStaff] = useState('Stephanie');
  const [viewMode, setViewMode] = useState('Day');
  const [plainViewMode, setPlainViewMode] = useState('Week');

  const today = todayKey();
  const allActiveEvents = useMemo(() => (events || []).filter(event => event?.active !== false), [events]);
  const productionEvents = useMemo(() => allActiveEvents
    .filter(event => event.type !== 'Call or Meeting' && event.type !== 'Edit Day'), [allActiveEvents]);

  const todayEvents = productionEvents
    .filter(event => isDateInEventRange(event, today))
    .sort((a, b) => String(a.time || '').localeCompare(String(b.time || '')));

  const visibleEvents = useMemo(() => {
    const selected = String(selectedStaff || '').trim();
    const canonical = canonicalPhotographerName(selected);
    const assigned = productionEvents.filter(event => {
      const photogMatch = uniqueCanonicalPhotographers(event.photographers || []).includes(canonical);
      const assistantMatch = (event.assistants || []).map(name => String(name || '').trim()).includes(selected);
      return photogMatch || assistantMatch;
    });
    if (viewMode === 'Month') {
      const key = monthKey(selectedDate);
      return assigned.filter(event => monthKey(event.date) <= key && monthKey(event.endDate || event.date) >= key);
    }
    if (viewMode === 'Week') {
      const { start, end } = weekBounds(selectedDate);
      return assigned.filter(event => event.date <= end && (event.endDate || event.date) >= start);
    }
    return assigned.filter(event => isDateInEventRange(event, selectedDate));
  }, [productionEvents, selectedStaff, selectedDate, viewMode]);

  const move = (delta) => {
    if (viewMode === 'Month') setSelectedDate(addDays(selectedDate, delta * 30));
    else if (viewMode === 'Week') setSelectedDate(addDays(selectedDate, delta * 7));
    else setSelectedDate(addDays(selectedDate, delta));
  };

  const movePlainView = (delta) => {
    if (plainViewMode === 'Month') setSelectedDate(addDays(selectedDate, delta * 30));
    else if (plainViewMode === 'Week') setSelectedDate(addDays(selectedDate, delta * 7));
    else setSelectedDate(addDays(selectedDate, delta));
  };

  const plainViewEvents = useMemo(() => {
    if (plainViewMode === 'Month') {
      const key = monthKey(selectedDate);
      const { start, end } = getMonthDateRange(key);
      return allActiveEvents.flatMap(event => getEventDateKeysInRange(event, start, end).map(instanceDate => ({ ...event, instanceDate })));
    }
    if (plainViewMode === 'Week') {
      const { start, end } = weekBounds(selectedDate);
      return allActiveEvents.flatMap(event => getEventDateKeysInRange(event, start, end).map(instanceDate => ({ ...event, instanceDate })));
    }
    return allActiveEvents.filter(event => isDateInEventRange(event, selectedDate)).map(event => ({ ...event, instanceDate: selectedDate }));
  }, [allActiveEvents, selectedDate, plainViewMode]);

  const sortedPlainViewEvents = useMemo(() => (plainViewEvents || [])
    .slice()
    .sort((a, b) => String(a.instanceDate || a.date || '').localeCompare(String(b.instanceDate || b.date || '')) || String(a.time || '').localeCompare(String(b.time || '')) || String(a.title || '').localeCompare(String(b.title || ''))), [plainViewEvents]);

  const groupedPlainViewEvents = useMemo(() => {
    const map = new Map();
    sortedPlainViewEvents.forEach(event => {
      const key = event.instanceDate || event.date || todayKey();
      if (!map.has(key)) map.set(key, []);
      map.get(key).push(event);
    });
    return Array.from(map.entries());
  }, [sortedPlainViewEvents]);

  const plainViewLabel = plainViewMode === 'Month' ? monthLabel(monthKey(selectedDate)) : plainViewMode === 'Week' ? `${shortDate(weekBounds(selectedDate).start)} – ${shortDate(weekBounds(selectedDate).end)}` : formatDate(selectedDate);
  return (
    <div className="mx-auto max-w-md space-y-3 sm:max-w-2xl">
      <section className="rounded-[1.5rem] border border-[#AEBB9E] bg-[#DDE8D2]/55 p-3 shadow-sm sm:rounded-[2rem] sm:p-4">
        <div className="flex items-start justify-between gap-3">
          <div>
            <div className="text-xs font-black uppercase tracking-[0.18em] text-zinc-600">What We're Photographing Today</div>
            <div className="mt-0.5 text-sm font-black text-zinc-950 sm:text-lg">{formatDate(today)}</div>
          </div>
          <div className="rounded-full border border-white/80 bg-white/70 px-2.5 py-1 text-[11px] font-black text-zinc-600">{todayEvents.length}</div>
        </div>
        <div className="mt-2 space-y-1.5">
          {todayEvents.length ? todayEvents.map(event => (
            <button key={event.id} type="button" onClick={() => onClick(event)} className="w-full rounded-xl border border-white/70 bg-white/80 p-2 text-left shadow-sm sm:rounded-2xl sm:p-3">
              <div className="truncate text-sm font-bold text-zinc-950">{event.title}</div>
              <div className="mt-0.5 text-xs text-zinc-600">{getEventTimeLabel(event)}</div>
              <div className="mt-0.5 truncate text-[11px] font-semibold text-zinc-500">{compactCrewList(event).join(', ') || 'Staff TBD'}</div>
            </button>
          )) : <div className="rounded-xl border border-dashed border-white/80 bg-white/60 p-3 text-sm text-zinc-500">Nothing scheduled for today.</div>}
        </div>
      </section>

      <section className="rounded-[1.5rem] border border-zinc-200 bg-white/80 p-3 shadow-sm sm:rounded-[2rem] sm:p-4">
        <div className="text-xs font-black uppercase tracking-[0.18em] text-zinc-500">Staff Schedule</div>
        <select value={selectedStaff} onChange={(e) => setSelectedStaff(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-4 py-2.5 text-sm font-bold text-zinc-900 outline-none sm:py-3 sm:text-base">
          {staffOptions.map(name => <option key={name} value={name}>{name}</option>)}
        </select>
        <div className="mt-3 grid grid-cols-3 rounded-2xl border border-zinc-200 bg-cream/80 p-1">
          {['Month', 'Week', 'Day'].map(mode => <button key={mode} type="button" onClick={() => setViewMode(mode)} className={`rounded-xl px-3 py-1.5 text-xs font-bold sm:py-2 sm:text-sm ${viewMode === mode ? 'bg-zinc-900 text-white' : 'text-zinc-600'}`}>{mode}</button>)}
        </div>
        <div className="mt-3 flex items-center justify-between gap-2">
          <button type="button" onClick={() => move(-1)} className="rounded-full border border-zinc-200 bg-white px-3 py-1.5 text-xs font-bold sm:py-2 sm:text-sm">Prev</button>
          <button type="button" onClick={() => setSelectedDate(todayKey())} className="rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/80 px-3 py-1.5 text-xs font-black text-zinc-900 sm:py-2 sm:text-sm">Today</button>
          <div className="min-w-0 flex-1 text-center text-xs font-bold text-zinc-900 sm:text-sm">{viewMode === 'Month' ? monthLabel(monthKey(selectedDate)) : viewMode === 'Week' ? `${shortDate(weekBounds(selectedDate).start)} – ${shortDate(weekBounds(selectedDate).end)}` : formatDate(selectedDate)}</div>
          <button type="button" onClick={() => move(1)} className="rounded-full border border-zinc-200 bg-white px-3 py-1.5 text-xs font-bold sm:py-2 sm:text-sm">Next</button>
        </div>
        <div className="mt-3 space-y-1.5">
          {visibleEvents.length ? visibleEvents.slice().sort((a,b) => String(a.date).localeCompare(String(b.date)) || String(a.time || '').localeCompare(String(b.time || ''))).map(event => (
            <button key={event.id} type="button" onClick={() => onClick(event)} className="w-full rounded-xl border border-zinc-200 bg-white p-2 text-left shadow-sm sm:rounded-2xl sm:p-3">
              <div className="flex items-start justify-between gap-2">
                <div className="min-w-0">
                  <div className="text-[10px] font-bold uppercase tracking-wide text-zinc-400 sm:text-xs">{getEventDateLabel(event)}</div>
                  <div className="mt-0.5 truncate text-sm font-black text-zinc-950 sm:text-base">{event.title}</div>
                  <div className="mt-0.5 text-xs text-zinc-600 sm:text-sm">{getEventTimeLabel(event)}</div>
                  {event.assistants?.length ? <div className="mt-0.5 text-[11px] font-semibold text-zinc-500">Assistant: {event.assistants.join(', ')}</div> : null}
                </div>
                <Pill className={`${TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'} text-[10px]`}>{event.type}</Pill>
              </div>
            </button>
          )) : <div className="rounded-xl border border-dashed border-zinc-200 bg-cream/70 p-3 text-center text-sm text-zinc-500">No {viewMode.toLowerCase()} events for {selectedStaff}.</div>}
        </div>
      </section>

      <section className="rounded-[2rem] border border-zinc-200 bg-white/90 p-3 shadow-sm">
        <div className="flex items-start justify-between gap-3">
          <div>
            <div className="text-xs font-black uppercase tracking-[0.18em] text-zinc-500">Plain View</div>
            <div className="mt-1 text-sm font-semibold text-zinc-600">Spreadsheet-style production schedule.</div>
          </div>
          <div className="rounded-full border border-zinc-200 bg-cream/80 px-2.5 py-1 text-[11px] font-black text-zinc-500">{sortedPlainViewEvents.length}</div>
        </div>

        <div className="mt-3 grid grid-cols-3 rounded-2xl border border-zinc-200 bg-cream/80 p-1">
          {['Day', 'Week', 'Month'].map(mode => <button key={mode} type="button" onClick={() => setPlainViewMode(mode)} className={`rounded-xl px-2 py-1.5 text-xs font-black ${plainViewMode === mode ? 'bg-zinc-900 text-white' : 'text-zinc-600'}`}>{mode}</button>)}
        </div>
        <div className="mt-3 flex items-center justify-between gap-2">
          <button type="button" onClick={() => movePlainView(-1)} className="rounded-full border border-zinc-200 bg-white px-3 py-1.5 text-xs font-black">Prev</button>
          <button type="button" onClick={() => setSelectedDate(todayKey())} className="rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/80 px-3 py-1.5 text-xs font-black text-zinc-900">Today</button>
          <div className="min-w-0 flex-1 text-center text-xs font-black text-zinc-900">{plainViewLabel}</div>
          <button type="button" onClick={() => movePlainView(1)} className="rounded-full border border-zinc-200 bg-white px-3 py-1.5 text-xs font-black">Next</button>
        </div>

        <div className="mt-3 overflow-hidden rounded-2xl border border-zinc-200 bg-white">
          <div className="grid grid-cols-[64px_1.8fr_1fr_1fr] border-b border-zinc-200 bg-zinc-50 text-[10px] font-black uppercase tracking-wide text-zinc-500">
            <div className="px-2 py-2">Date</div>
            <div className="px-2 py-2">Event</div>
            <div className="px-2 py-2">Photog</div>
            <div className="px-2 py-2">Assistant</div>
          </div>
          <div className="max-h-[520px] overflow-y-auto">
            {groupedPlainViewEvents.length ? groupedPlainViewEvents.map(([date, dayEvents]) => (
              <div key={date}>
                {plainViewMode !== 'Day' ? <div className="border-b border-zinc-100 bg-cream/80 px-2 py-1 text-[11px] font-black uppercase tracking-wide text-zinc-500">{formatDate(date)}</div> : null}
                {dayEvents.map(event => {
                  const photogs = uniqueCanonicalPhotographers(event.photographers || []).join(', ') || 'TBD';
                  const assistantsLabel = (event.assistants || []).filter(Boolean).join(', ') || '—';
                  return (
                    <button key={event.id} type="button" onClick={() => onClick(event)} className="grid w-full grid-cols-[64px_1.8fr_1fr_1fr] border-b border-zinc-100 text-left text-xs transition hover:bg-[#DDE8D2]/45">
                      <div className="px-2 py-1.5 font-semibold italic text-zinc-600">{shortDate(event.instanceDate || date || event.date)}</div>
                      <div className="min-w-0 px-2 py-1.5">
                        <div className="truncate font-black text-zinc-950">{event.title}</div>
                      </div>
                      <div className="px-2 py-1.5 font-semibold text-zinc-800">{photogs}</div>
                      <div className="px-2 py-1.5 font-semibold text-zinc-800">{assistantsLabel}</div>
                    </button>
                  );
                })}
              </div>
            )) : <div className="p-4 text-center text-sm font-semibold text-zinc-500">No events in this {plainViewMode.toLowerCase()} view.</div>}
          </div>
        </div>
      </section>
    </div>
  );
}

function CalendarView({ viewMode, setViewMode, events, month, setMonth, selectedDate, setSelectedDate, onClick, onAddEvent, canEdit = true }) {
  return (
    <div className="space-y-4">
      <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
        <div>
          <h2 className="text-lg font-semibold text-zinc-950">Calendar View</h2>
          <p className="mt-1 text-sm text-zinc-600">Switch between month, week, and day layouts while staying on one clean calendar page.</p>
        </div>
        <div className="flex flex-row items-center justify-between gap-2 sm:flex-col sm:items-end">
          <div className="grid w-full grid-cols-3 rounded-2xl border border-zinc-200 bg-white/80 p-1 shadow-sm sm:inline-flex sm:w-auto">
            {['Month', 'Week', 'Day'].map(mode => (
              <button key={mode} type="button" onClick={() => setViewMode(mode)} className={`rounded-xl px-4 py-2 text-sm font-medium transition ${viewMode === mode ? 'bg-zinc-900 text-white shadow-sm' : 'text-zinc-700 hover:bg-white'}`}>{mode}</button>
            ))}
          </div>
          {canEdit ? <button type="button" onClick={() => onAddEvent?.()} className="inline-flex shrink-0 items-center justify-center gap-1.5 rounded-xl bg-zinc-900 px-3 py-2 text-xs font-semibold text-white shadow-sm transition hover:-translate-y-0.5 sm:gap-2 sm:rounded-2xl sm:px-4 sm:text-sm"><Plus size={14} className="sm:hidden" /><Plus size={16} className="hidden sm:block" /> <span className="sm:inline">Add</span><span className="hidden sm:inline"> Event</span></button> : null}
        </div>
      </div>
      <CalendarNavigator viewMode={viewMode} month={month} setMonth={setMonth} selectedDate={selectedDate} setSelectedDate={setSelectedDate} showKey />
      {viewMode === 'Month' && <MonthView events={events} month={month} onClick={onClick} selectedDate={selectedDate} setSelectedDate={setSelectedDate} setViewMode={setViewMode} onAddEvent={canEdit ? onAddEvent : null} />}
      {viewMode === 'Week' && <WeekView events={events} selectedDate={selectedDate} onClick={onClick} />}
      {viewMode === 'Day' && <DayView events={events} selectedDate={selectedDate} onClick={onClick} />}
    </div>
  );
}


function normalizeMemberName(value) {
  return value.trim().replace(/\s+/g, ' ');
}

const STAFF_ROLE_OPTIONS = [
  { value: 'photographer', label: 'Photographer' },
  { value: 'assistant', label: 'Assistant' },
  { value: 'admin', label: 'Admin' }
];

function displayStaffRole(role) {
  const clean = String(role || '').trim().toLowerCase();
  if (clean === 'photographer') return 'Photographer';
  if (clean === 'assistant') return 'Assistant';
  if (clean === 'admin') return 'Admin';
  return role || 'Staff';
}

function normalizeStaffKey(name = '') {
  return String(name || '').trim().toLowerCase().replace(/\s+/g, ' ');
}

function groupStaffMembers(members = []) {
  const map = new Map();
  (members || []).forEach(member => {
    const name = normalizeMemberName(member.name || '');
    if (!name) return;
    const key = normalizeStaffKey(name);
    const existing = map.get(key) || {
      id: `staff-${key}`,
      name,
      title: '',
      email: '',
      phone: '',
      active: false,
      roles: [],
      roleRows: {},
      originalRows: []
    };
    const role = String(member.role || '').trim().toLowerCase() || 'staff';
    existing.name = existing.name || name;
    existing.title = existing.title || member.title || '';
    existing.email = existing.email || member.email || '';
    existing.phone = existing.phone || member.phone || member.cell || '';
    existing.active = existing.active || member.active !== false;
    if (role && !existing.roles.includes(role)) existing.roles.push(role);
    existing.roleRows[role] = member;
    existing.originalRows.push(member);
    map.set(key, existing);
  });
  return Array.from(map.values()).map(member => ({
    ...member,
    roles: member.roles.sort((a, b) => {
      const order = { photographer: 1, assistant: 2, admin: 3 };
      return (order[a] || 99) - (order[b] || 99);
    })
  })).sort((a, b) => String(a.name || '').localeCompare(String(b.name || '')));
}

function displayStaffRoles(member = {}) {
  const roles = member.roles?.length ? member.roles : [member.role].filter(Boolean);
  const activeRoles = roles.filter(role => !member.roleRows?.[role] || member.roleRows?.[role]?.active !== false);
  return (activeRoles.length ? activeRoles : roles).map(displayStaffRole).join(', ') || 'Staff';
}

function builtInStaffMembers() {
  const rows = [
    ...uniqueCanonicalPhotographers(PHOTOGRAPHERS).map(name => ({ id: `builtin-photographer-${name}`, name, role: 'photographer', active: true })),
    ...ASSISTANTS.map(name => ({ id: `builtin-assistant-${name}`, name, role: 'assistant', active: true }))
  ];
  return rows.sort((a, b) => String(a.name || '').localeCompare(String(b.name || '')));
}

function StaffDirectoryRow({ member }) {
  const phone = member.phone || member.cell || '';
  const email = member.email || '';
  return (
    <tr className={`${member.active === false ? 'bg-zinc-50 text-zinc-400' : 'text-zinc-900'}`}>
      <td className="whitespace-nowrap px-3 py-1.5 text-sm font-black">{member.name || 'Unnamed Staff Member'}</td>
      <td className="whitespace-nowrap px-3 py-1.5 text-xs">{phone ? <a href={`tel:${phone}`} className="font-semibold text-zinc-800 hover:underline">{phone}</a> : <span className="text-zinc-400">—</span>}</td>
      <td className="px-3 py-1.5 text-xs">{email ? <a href={`mailto:${email}`} className="font-semibold text-zinc-800 hover:underline">{email}</a> : <span className="text-zinc-400">—</span>}</td>
      <td className="px-3 py-1.5 text-xs font-bold text-zinc-600">{displayStaffRoles(member)}</td>
    </tr>
  );
}

function TeamMemberEditor({ title, description, members, value, setValue, role, saving, onSaveMember, onDeactivateMember }) {
  return (
    <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
      <div className="mb-4">
        <h2 className="text-lg font-semibold text-zinc-950">{title}</h2>
        <p className="mt-1 text-sm text-zinc-600">{description}</p>
      </div>
      <form
        className="flex gap-2"
        onSubmit={(e) => {
          e.preventDefault();
          onSaveMember(role, value);
        }}
      >
        <input
          value={value}
          onChange={(e) => setValue(e.target.value)}
          placeholder={`Add ${role === 'photographer' ? 'photographer' : 'assistant'}...`}
          className="min-w-0 flex-1 rounded-2xl border border-zinc-200 bg-white/85 px-4 py-3 text-sm outline-none ring-sage/30 transition focus:ring-4"
        />
        <button type="submit" disabled={saving} className="inline-flex items-center gap-2 rounded-2xl bg-zinc-900 px-4 py-3 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5 disabled:cursor-not-allowed disabled:bg-zinc-400">
          <Plus size={16} /> Add
        </button>
      </form>
      <div className="mt-4 grid gap-2 sm:grid-cols-2">
        {members.map(name => (
          <div key={name} className="flex items-center justify-between gap-3 rounded-2xl border border-zinc-200 bg-cream/80 px-3 py-2">
            <span className="text-sm font-medium text-zinc-900">{name}</span>
            <button type="button" disabled={saving} onClick={() => onDeactivateMember(role, name)} className="rounded-full p-2 text-zinc-400 transition hover:bg-white hover:text-rose-600 disabled:cursor-not-allowed disabled:opacity-50" aria-label={`Deactivate ${name}`} title="Deactivate, do not delete">
              <Trash2 size={16} />
            </button>
          </div>
        ))}
        {!members.length ? (
          <div className="rounded-2xl border border-dashed border-zinc-200 bg-white/60 p-3 text-sm text-zinc-500">No active {role === 'photographer' ? 'photographers' : 'assistants'} yet.</div>
        ) : null}
      </div>
    </section>
  );
}

function TeamMembers({ photographers, assistants, staffMembers = [], setPhotographers, setAssistants, reloadTeamMembers, teamMembersMessage }) {
  const [photographerInput, setPhotographerInput] = useState('');
  const [assistantInput, setAssistantInput] = useState('');
  const [saving, setSaving] = useState(false);
  const [message, setMessage] = useState('');
  const [mobileSchoolOpen, setMobileSchoolOpen] = useState(false);

  useEffect(() => {
    if (selectedName) setMobileSchoolOpen(true);
  }, [selectedName]);
  const [directoryQuery, setDirectoryQuery] = useState('');

  const activeStaffMembers = useMemo(() => {
    const rows = groupStaffMembers(staffMembers?.length ? staffMembers : builtInStaffMembers());
    return rows.filter(member => member.active !== false);
  }, [staffMembers]);

  const filteredStaffMembers = useMemo(() => {
    const q = directoryQuery.trim().toLowerCase();
    if (!q) return activeStaffMembers;
    return activeStaffMembers.filter(member => [member.name, member.email, member.phone, displayStaffRoles(member)].filter(Boolean).join('\n').toLowerCase().includes(q));
  }, [activeStaffMembers, directoryQuery]);


  const saveMember = async (role, value) => {
    const name = normalizeMemberName(value);
    if (!name) return;

    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setMessage('Supabase is not connected yet. Team members cannot be saved to the database.');
      return;
    }

    setSaving(true);
    setMessage('');

    const { data: existing, error: lookupError } = await supabase
      .from('staff_members')
      .select('id')
      .eq('role', role)
      .eq('name', name)
      .limit(1);

    if (lookupError) {
      setSaving(false);
      setMessage(`Could not check team member: ${lookupError.message}`);
      return;
    }

    let error = null;

    if (existing?.length) {
      const result = await supabase
        .from('staff_members')
        .update({ active: true, updated_at: new Date().toISOString() })
        .eq('id', existing[0].id);
      error = result.error;
    } else {
      const result = await supabase
        .from('staff_members')
        .insert({ name, role, active: true });
      error = result.error;
    }

    setSaving(false);

    if (error) {
      setMessage(`Could not save team member: ${error.message}`);
      return;
    }

    if (role === 'photographer') setPhotographerInput('');
    else setAssistantInput('');

    await reloadTeamMembers?.();
    setMessage(`${name} is active as a ${role}.`);
  };

  const deactivateMember = async (role, name) => {
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setMessage('Supabase is not connected yet. Team members cannot be deactivated.');
      return;
    }

    setSaving(true);
    setMessage('');

    const { error } = await supabase
      .from('staff_members')
      .update({ active: false, updated_at: new Date().toISOString() })
      .eq('role', role)
      .eq('name', name);

    setSaving(false);

    if (error) {
      setMessage(`Could not deactivate team member: ${error.message}`);
      return;
    }

    if (role === 'photographer') setPhotographers(prev => prev.filter(item => item !== name));
    else setAssistants(prev => prev.filter(item => item !== name));

    await reloadTeamMembers?.();
    setMessage(`${name} was deactivated, not deleted. Historical assignments can still remain intact.`);
  };

  return (
    <div className="space-y-4">
      <section className="rounded-3xl border border-[#AEBB9E] bg-[#DDE8D2]/60 p-4 shadow-sm">
        <h2 className="text-lg font-semibold text-zinc-950">Team Members</h2>
        <p className="mt-1 text-sm text-zinc-700">Internal staff directory for quick phone, email, and scheduling-role lookup. Edit contact details from the Admin page.</p>
        {teamMembersMessage ? <p className="mt-3 rounded-2xl border border-zinc-200 bg-white/70 p-3 text-sm text-zinc-700">{teamMembersMessage}</p> : null}
        {message ? <p className="mt-3 rounded-2xl border border-zinc-200 bg-white/70 p-3 text-sm text-zinc-700">{message}</p> : null}
      </section>

      <section className="rounded-[2rem] border border-zinc-200 bg-white/70 p-4 shadow-sm">
        <div className="flex flex-col gap-3 md:flex-row md:items-center md:justify-between">
          <div>
            <h3 className="text-lg font-black text-zinc-950">Staff Directory</h3>
            <p className="mt-1 text-sm text-zinc-600">Compact contact list for quick phone, email, and role lookup.</p>
          </div>
          <input value={directoryQuery} onChange={event => setDirectoryQuery(event.target.value)} placeholder="Search staff..." className="rounded-2xl border border-zinc-200 bg-white px-4 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
        </div>
        <div className="mt-3 overflow-hidden rounded-2xl border border-zinc-200 bg-white/80">
          <div className="max-h-[420px] overflow-auto">
            <table className="w-full min-w-[780px] text-left">
              <thead className="sticky top-0 z-10 bg-zinc-50 text-[11px] font-bold uppercase tracking-wide text-zinc-500">
                <tr><th className="px-3 py-2">Name</th><th className="px-3 py-2">Phone</th><th className="px-3 py-2">Email</th><th className="px-3 py-2">Roles</th></tr>
              </thead>
              <tbody className="divide-y divide-zinc-100">
                {filteredStaffMembers.map(member => <StaffDirectoryRow key={member.id || member.name} member={member} />)}
              </tbody>
            </table>
          </div>
          {!filteredStaffMembers.length ? <div className="border-t border-zinc-200 bg-cream/70 p-4 text-sm text-zinc-500">No active staff matched that search.</div> : null}
        </div>
      </section>

      <div className="grid gap-4 lg:grid-cols-2">
        <TeamMemberEditor title="Photographers" description="Active photographers available for future scheduling." members={photographers} value={photographerInput} setValue={setPhotographerInput} role="photographer" saving={saving} onSaveMember={saveMember} onDeactivateMember={deactivateMember} />
        <TeamMemberEditor title="Assistants" description="Active assistants available for future scheduling." members={assistants} value={assistantInput} setValue={setAssistantInput} role="assistant" saving={saving} onSaveMember={saveMember} onDeactivateMember={deactivateMember} />
      </div>
    </div>
  );
}

function RecentlyAddedEventsModule({ events, onClick }) {
  const recentEvents = useMemo(() => {
    const cutoff = Date.now() - (7 * 24 * 60 * 60 * 1000);
    return (events || [])
      .filter(event => {
        if (!event?.createdAt) return false;
        const createdTime = new Date(event.createdAt).getTime();
        const isRecent = Number.isFinite(createdTime) && createdTime >= cutoff;
        const isManual = event.source === 'manual_app' || event.source === 'app' || String(event.id || '').startsWith('custom-');
        return isRecent && isManual && event.active !== false;
      })
      .sort((a, b) => new Date(b.createdAt).getTime() - new Date(a.createdAt).getTime())
      ;
  }, [events]);

  return (
    <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
      <div className="flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
        <div>
          <h2 className="text-lg font-semibold text-zinc-950">Recently Added Events</h2>
          <p className="mt-1 text-sm text-zinc-600">Manual events added to the calendar in the last 7 days.</p>
        </div>
        <Pill className="border-zinc-200 bg-white text-zinc-600">{recentEvents.length} recent</Pill>
      </div>

      <div className="mt-4 space-y-2 md:max-h-[504px] md:overflow-y-auto md:pr-1">
        {recentEvents.length ? recentEvents.map(event => (
          <button key={event.supabaseId || event.id} type="button" onClick={() => onClick?.(event)} className="block w-full rounded-2xl border border-zinc-200 bg-cream/75 p-3 text-left transition hover:bg-white hover:shadow-sm">
            <div className="flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
              <div className="min-w-0">
                <div className="truncate text-sm font-semibold text-zinc-950">{event.title}</div>
                <div className="mt-1 text-xs text-zinc-500">{formatDate(event.date)} · {event.time || 'TBD'}{event.canonicalSchool ? ` · ${event.canonicalSchool}` : ''}</div>
                <div className="mt-1 text-xs font-semibold text-zinc-600">Added {formatEventMetaDateTime((getEventAddedMeta(event) || {}).addedAt || event.createdAt) || 'recently'} by {(getEventAddedMeta(event) || {}).name || 'Before We Began Tracking'}</div>
              </div>
              <Pill className={TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}>{event.type}</Pill>
            </div>
          </button>
        )) : (
          <div className="rounded-2xl border border-dashed border-zinc-200 bg-white/60 p-4 text-center text-sm text-zinc-500">No manual events added in the last 7 days.</div>
        )}
      </div>
    </section>
  );
}


function getRecentlyModifiedSortTime(event = {}) {
  const edited = getEventLastEditedMeta(event);
  const modifiedValue = edited?.editedAt || event.updatedAt || '';
  const modifiedTime = new Date(modifiedValue).getTime();
  return Number.isFinite(modifiedTime) ? modifiedTime : 0;
}

function RecentlyModifiedEventsModule({ events, onClick }) {
  const modifiedEvents = useMemo(() => {
    const cutoff = Date.now() - (7 * 24 * 60 * 60 * 1000);
    return (events || [])
      .filter(event => {
        if (event.active === false) return false;
        const modifiedTime = getRecentlyModifiedSortTime(event);
        const createdTime = event.createdAt ? new Date(event.createdAt).getTime() : 0;
        const isRecent = modifiedTime >= cutoff;
        const notJustCreated = !Number.isFinite(createdTime) || Math.abs(modifiedTime - createdTime) > 60000;
        return isRecent && notJustCreated;
      })
      .sort((a, b) => getRecentlyModifiedSortTime(b) - getRecentlyModifiedSortTime(a))
      ;
  }, [events]);

  return (
    <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
      <div className="flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
        <div>
          <h2 className="text-lg font-semibold text-zinc-950">Recently Modified Events</h2>
          <p className="mt-1 text-sm text-zinc-600">Events changed in the last 7 days. Use this to confirm edits hit the live Scheduler.</p>
        </div>
        <Pill className="border-zinc-200 bg-white text-zinc-600">{modifiedEvents.length} modified</Pill>
      </div>

      <div className="mt-4 space-y-2 md:max-h-[504px] md:overflow-y-auto md:pr-1">
        {modifiedEvents.length ? modifiedEvents.map(event => {
          const edited = getEventLastEditedMeta(event);
          const editedAt = edited?.editedAt || event.updatedAt;
          const editedName = (edited?.name || '').trim();
          const shouldShowEditor = editedName && editedName !== 'Before We Began Tracking';
          return (
            <button key={event.supabaseId || event.id} type="button" onClick={() => onClick?.(event)} className="block w-full rounded-2xl border border-zinc-200 bg-cream/75 p-3 text-left transition hover:bg-white hover:shadow-sm">
              <div className="flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
                <div className="min-w-0">
                  <div className="truncate text-sm font-semibold text-zinc-950">{event.title}</div>
                  <div className="mt-1 text-xs text-zinc-500">{formatDate(event.date)} · {event.time || 'TBD'}{event.canonicalSchool ? ` · ${event.canonicalSchool}` : ''}</div>
                  <div className="mt-1 text-xs font-semibold text-zinc-600">Modified {formatEventMetaDateTime(editedAt) || 'recently'}{shouldShowEditor ? ` by ${editedName}` : ''}</div>
                </div>
                <Pill className={TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}>{event.type}</Pill>
              </div>
            </button>
          );
        }) : (
          <div className="rounded-2xl border border-dashed border-zinc-200 bg-white/60 p-4 text-center text-sm text-zinc-500">No events modified in the last 7 days.</div>
        )}
      </div>
    </section>
  );
}

function RemovedEventsModule({ events, onRestore, onPermanentDelete, canRestore = true, canPermanentDelete = false }) {
  const sortedRemovedEvents = useMemo(() => {
    return [...(events || [])].sort((a, b) => {
      const aTime = new Date(a.updatedAt || a.createdAt || a.date || 0).getTime();
      const bTime = new Date(b.updatedAt || b.createdAt || b.date || 0).getTime();
      return (Number.isFinite(bTime) ? bTime : 0) - (Number.isFinite(aTime) ? aTime : 0);
    });
  }, [events]);

  return (
    <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
      <div className="flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
        <div>
          <h2 className="text-lg font-semibold text-zinc-950">Removed Events</h2>
          <p className="mt-1 text-sm text-zinc-600">A safety net for events removed from the calendar. Restore them here if needed.</p>
        </div>
        <Pill className="border-zinc-200 bg-white text-zinc-600">{sortedRemovedEvents.length} removed</Pill>
      </div>

      <div className="mt-4 space-y-2">
        {sortedRemovedEvents.length ? sortedRemovedEvents.slice(0, 8).map(event => (
          <div key={event.supabaseId || event.id} className="rounded-2xl border border-zinc-200 bg-cream/75 p-3">
            <div className="flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
              <div className="min-w-0">
                <div className="flex flex-wrap gap-2">
                  <Pill className={TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}>{event.type}</Pill>
                  {event.noAssistant ? <Pill className="border-zinc-200 bg-white text-zinc-700">No Assistant</Pill> : null}
                </div>
                <div className="mt-2 truncate text-sm font-semibold text-zinc-950">{event.title}</div>
                <div className="mt-1 text-xs text-zinc-500">{formatDate(event.date)} · {event.time || 'TBD'}{event.canonicalSchool ? ` · ${event.canonicalSchool}` : ''}</div>
              </div>
              <div className="flex shrink-0 flex-wrap gap-2">
                {canRestore ? <button type="button" onClick={() => onRestore(event)} className="rounded-2xl border border-[#AEBB9E] bg-[#DDE8D2]/80 px-4 py-2 text-sm font-semibold text-zinc-900 shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2]">Restore</button> : null}
                {canPermanentDelete ? <button type="button" onClick={() => onPermanentDelete?.(event)} className="rounded-2xl border border-rose-200 bg-rose-50 px-4 py-2 text-sm font-semibold text-rose-700 shadow-sm transition hover:-translate-y-0.5 hover:bg-rose-100">Permanent Delete</button> : null}
              </div>
            </div>
          </div>
        )) : (
          <div className="rounded-2xl border border-dashed border-zinc-200 bg-white/60 p-4 text-center text-sm text-zinc-500">No removed events.</div>
        )}
      </div>

      {sortedRemovedEvents.length > 8 ? <div className="mt-3 text-xs text-zinc-500">Showing 8 most recently removed events.</div> : null}
    </section>
  );
}

function Drawer({ event, onClose, onViewSchool, onEditEvent, onDuplicateEvent, onRemoveEvent, canRemove = true, canEdit = true, canEditNotes = false }) {
  if (!event) return null;
  const addedMeta = getEventAddedMeta(event);
  const editedMeta = getEventLastEditedMeta(event);
  const createdByLabel = `${addedMeta.name}${addedMeta.addedAt ? ` · ${formatEventMetaDateTime(addedMeta.addedAt)}` : ''}`;
  const editedLabel = editedMeta ? `${editedMeta.name}${editedMeta.editedAt ? ` · ${formatEventMetaDateTime(editedMeta.editedAt)}` : ''}` : '';

  return <AnimatePresence>{event && <motion.aside initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/25 p-1.5 backdrop-blur-sm sm:p-4" onClick={onClose}><motion.div initial={{ x: 420 }} animate={{ x: 0 }} exit={{ x: 420 }} transition={{ type: 'spring', damping: 28, stiffness: 260 }} onClick={(e) => e.stopPropagation()} className="ml-auto flex h-full max-w-xl flex-col overflow-hidden rounded-[1.35rem] bg-cream shadow-2xl sm:rounded-[2rem]"><div className="border-b border-zinc-200 p-3 sm:p-5"><div className="flex items-start justify-between gap-2 sm:gap-4"><div><div className="flex flex-wrap gap-2"><Pill className={TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}>{event.type}</Pill>{getEventIrm(event) ? <Pill className="border-amber-200 bg-amber-50 text-amber-900">IRM {getEventIrm(event)}</Pill> : null}{!event.supabaseId ? <Pill className="border-zinc-200 bg-white text-zinc-500">Historical Event</Pill> : null}</div><h2 className="mt-2 text-lg font-semibold leading-tight text-zinc-950 sm:mt-3 sm:text-2xl">{event.title}</h2><p className="mt-1 text-xs text-zinc-500 sm:text-sm">{getEventDateLabel(event)} · {getEventTimeLabel(event)}</p><div className="mt-2 grid gap-0.5 text-[11px] leading-4 text-zinc-500 sm:mt-3 sm:gap-1 sm:text-xs sm:leading-5"><div><span className="font-semibold text-zinc-700">Created By:</span> {createdByLabel}</div>{editedLabel ? <div><span className="font-semibold text-zinc-700">Last Edited By:</span> {editedLabel}</div> : null}</div></div><button onClick={onClose} className="rounded-full bg-white p-2 text-zinc-500 hover:text-zinc-900"><X size={18} /></button></div></div><div className="space-y-3 overflow-auto p-3 sm:space-y-4 sm:p-5">{event.supabaseId && canEdit ? <button type="button" onClick={() => onEditEvent(event)} className="w-full rounded-2xl bg-zinc-900 px-4 py-3 text-left text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5">Edit Event</button> : null}{event.supabaseId && canEdit ? <button type="button" onClick={() => onDuplicateEvent(event)} className="w-full rounded-2xl border border-[#AEBB9E] bg-white/80 px-4 py-3 text-left text-sm font-semibold text-zinc-900 shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2]/70">Duplicate Event</button> : null}{event.canonicalSchool ? <button type="button" onClick={() => onViewSchool(event.canonicalSchool)} className="w-full rounded-2xl border border-[#AEBB9E] bg-[#DDE8D2]/70 px-4 py-3 text-left text-sm font-semibold text-zinc-900 transition hover:-translate-y-0.5 hover:bg-[#DDE8D2] hover:shadow-soft">View {event.canonicalSchool} in School List →</button> : null}<div className="grid gap-3 sm:grid-cols-2"><Info icon={CalendarDays} title="Date Range" value={getEventDateLabel(event)} /><Info icon={Clock} title="Arrival / Start" value={getEventTimeLabel(event)} /></div><div className="grid gap-3 sm:grid-cols-2"><Info icon={UserRoundCheck} title="Photographers" value={displayPhotographerAssignment(event)} /><Info icon={Users} title="Assistants" value={displayAssistants(event)} /></div><div className="rounded-3xl border border-zinc-200 bg-white/70 p-4"><div className="flex items-center justify-between gap-3"><div className="flex items-center gap-2 text-xs font-semibold uppercase tracking-wide text-zinc-500"><Pencil size={14} />Picture Day Notes ({getNoteHistory(event.noteAttribution).length})</div>{canEditNotes && canEdit ? <button type="button" onClick={() => onEditEvent(event)} className="rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/70 px-3 py-1 text-[11px] font-semibold text-zinc-800 transition hover:bg-[#DDE8D2]">Edit Picture Day Notes</button> : null}</div><div className="mt-3"><NoteHistoryList entries={getNoteHistory(event.noteAttribution)} /></div>{event.notes ? <div className="mt-3 whitespace-pre-wrap text-sm leading-6 text-zinc-800">{event.notes}</div> : null}</div>{event.supabaseId && canRemove ? <button type="button" onClick={() => { const ok = window.confirm(`Remove event: ${event.title}?\n\nThis will move it to Removed Events so it can be restored later.`); if (ok) onRemoveEvent(event); }} className="inline-flex w-auto items-center rounded-xl border border-rose-200 bg-rose-50 px-3 py-2 text-left text-xs font-semibold text-rose-700 shadow-sm transition hover:-translate-y-0.5 hover:bg-rose-100">Remove Event</button> : null}</div></motion.div></motion.aside>}</AnimatePresence>;
}

function Info({ icon: Icon, title, value, large = false }) {
  return <div className="rounded-3xl border border-zinc-200 bg-white/70 p-4"><div className="flex items-center gap-2 text-xs font-semibold uppercase tracking-wide text-zinc-500"><Icon size={14} />{title}</div><div className={`mt-2 whitespace-pre-wrap text-zinc-800 ${large ? 'text-sm leading-6' : 'text-sm font-medium'}`}>{value}</div></div>;
}


function GlobalSearchResults({ query, schools = SCHOOLS, events, onSelectEvent, onSelectSchool }) {
  const q = query.trim().toLowerCase();
  if (!q) return null;

  const normalizedQuery = normalizeSchoolLookupKey(query);
  const allSchoolMatches = (schools || []).filter(school => school.active !== false && !school.mergedInto && [
    school.name, school.notes, school.address, school.city, school.contactFirst, school.contactLast, school.contactEmail, school.contactPhone, school.secondaryContactFirst, school.secondaryContactLast, school.secondaryContactEmail
  ].filter(Boolean).join('\n').toLowerCase().includes(q));
  const schoolMatches = allSchoolMatches.slice(0, 6);

  const matchedSchoolKeys = new Set(allSchoolMatches.map(school => normalizeSchoolLookupKey(school.name)).filter(Boolean));
  const matchesLinkedSchool = (event) => {
    const eventSchoolKey = normalizeSchoolLookupKey(event?.canonicalSchool || '');
    if (!eventSchoolKey) return false;
    if (matchedSchoolKeys.has(eventSchoolKey)) return true;
    for (const schoolKey of matchedSchoolKeys) {
      if (schoolKey && (eventSchoolKey.includes(schoolKey) || schoolKey.includes(eventSchoolKey))) return true;
    }
    return false;
  };

  const today = todayKey();
  const eventMatches = (events || [])
    .filter(event => {
      if (!event || event.active === false) return false;
      const textMatch = [event.title, event.canonicalSchool, event.type, event.notes, event.history, ...(event.photographers || []), ...(event.assistants || [])]
        .filter(Boolean)
        .join(' ')
        .toLowerCase()
        .includes(q);
      const titleKey = normalizeSchoolLookupKey(event.title || '');
      const looseTitleMatch = normalizedQuery && titleKey.includes(normalizedQuery);
      return textMatch || looseTitleMatch || matchesLinkedSchool(event);
    })
    .sort((a, b) => {
      const aFuture = String(a.date || '') >= today;
      const bFuture = String(b.date || '') >= today;
      if (aFuture !== bFuture) return aFuture ? -1 : 1;
      if (aFuture && bFuture) return String(a.date || '').localeCompare(String(b.date || ''));
      return String(b.date || '').localeCompare(String(a.date || ''));
    });

  const visibleEventMatches = eventMatches.slice(0, 24);
  if (!schoolMatches.length && !visibleEventMatches.length) return null;
  return (
    <section className="rounded-[2rem] border border-[#AEBB9E] bg-[#DDE8D2]/45 p-4 shadow-sm">
      <div className="flex items-center justify-between gap-3">
        <div>
          <h2 className="text-sm font-semibold text-zinc-950">Global Search Results</h2>
          <p className="mt-1 text-xs text-zinc-600">Searching schools, contacts, notes, photographers, assistants, imported events, and school-linked events.</p>
        </div>
        <Pill className="border-zinc-200 bg-white/80 text-zinc-700">{schoolMatches.length + visibleEventMatches.length} shown</Pill>
      </div>
      <div className="mt-3 grid gap-3 lg:grid-cols-2">
        <div className="rounded-3xl border border-zinc-200 bg-white/75 p-3">
          <div className="mb-2 text-xs font-semibold uppercase tracking-wide text-zinc-500">Schools</div>
          <div className="space-y-2">
            {schoolMatches.length ? schoolMatches.map(school => (
              <button key={school.name} onClick={() => onSelectSchool(school.name)} className="w-full rounded-2xl border border-zinc-100 bg-cream/70 p-3 text-left transition hover:bg-white hover:shadow-sm">
                <div className="text-sm font-semibold text-zinc-900">{school.name}</div>
                <div className="mt-1 text-xs text-zinc-500">{[school.contactFirst, school.contactLast].filter(Boolean).join('\n') || school.city || 'School List match'}{school.irm ? ` · IRM ${school.irm}` : ''}</div>
              </button>
            )) : <div className="text-xs text-zinc-400">No school matches.</div>}
          </div>
        </div>
        <div className="rounded-3xl border border-zinc-200 bg-white/75 p-3">
          <div className="mb-2 flex items-center justify-between gap-2">
            <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Events + Assignments</div>
            {eventMatches.length > visibleEventMatches.length ? <div className="text-[11px] text-zinc-400">Showing first {visibleEventMatches.length} of {eventMatches.length}</div> : null}
          </div>
          <div className="max-h-[34rem] space-y-2 overflow-auto pr-1">
            {visibleEventMatches.length ? visibleEventMatches.map(event => (
              <button key={event.id} onClick={() => onSelectEvent(event)} className="w-full rounded-2xl border border-zinc-100 bg-cream/70 p-3 text-left transition hover:bg-white hover:shadow-sm">
                <div className="text-sm font-semibold text-zinc-900">{event.title}</div>
                <div className="mt-1 text-xs text-zinc-500">{shortDate(event.date)} · {event.type} · {displayPhotographerAssignment(event)}</div>
              </button>
            )) : <div className="text-xs text-zinc-400">No event matches.</div>}
          </div>
        </div>
      </div>
    </section>
  );
}


function csvEscape(value) {
  const text = value === null || value === undefined ? '' : Array.isArray(value) || typeof value === 'object' ? JSON.stringify(value) : String(value);
  return `"${text.replace(/"/g, '""')}"`;
}

function downloadTextFile(filename, content, type = 'text/plain;charset=utf-8') {
  if (typeof window === 'undefined') return;
  const blob = new Blob([content], { type });
  const url = URL.createObjectURL(blob);
  const a = document.createElement('a');
  a.href = url;
  a.download = filename;
  document.body.appendChild(a);
  a.click();
  a.remove();
  URL.revokeObjectURL(url);
}

function toCsv(rows = []) {
  const allKeys = Array.from(new Set(rows.flatMap(row => Object.keys(row || {}))));
  if (!allKeys.length) return '';
  return [allKeys.map(csvEscape).join(','), ...rows.map(row => allKeys.map(key => csvEscape(row?.[key])).join(','))].join('\n');
}

function stripHtmlForIcs(value = '') {
  return String(value || '')
    .replace(/<br\s*\/?>/gi, '\n')
    .replace(/<\/p>/gi, '\n')
    .replace(/<\/div>/gi, '\n')
    .replace(/<\/li>/gi, '\n')
    .replace(/<[^>]+>/g, '')
    .replace(/&nbsp;/gi, ' ')
    .replace(/&amp;/gi, '&')
    .replace(/&lt;/gi, '<')
    .replace(/&gt;/gi, '>')
    .replace(/&quot;/gi, '"')
    .replace(/&#39;/gi, "'")
    .replace(/\n{3,}/g, '\n\n')
    .trim();
}

function escapeIcsText(value = '') {
  return stripHtmlForIcs(value)
    .replace(/\\/g, '\\\\')
    .replace(/;/g, '\\;')
    .replace(/,/g, '\\,')
    .replace(/\r?\n/g, '\\n');
}

function foldIcsLine(line = '') {
  const text = String(line || '');
  const parts = [];
  let remaining = text;
  while (remaining.length > 73) {
    parts.push(remaining.slice(0, 73));
    remaining = ' ' + remaining.slice(73);
  }
  parts.push(remaining);
  return parts.join('\r\n');
}

function icsDate(value) {
  return String(value || '').replace(/-/g, '').slice(0, 8);
}

function makeIcsUid(event = {}) {
  const raw = String(event.sourceEventId || event.supabaseId || event.id || `${event.title}-${event.date}` || `event-${Date.now()}`);
  return `${raw.replace(/[^a-zA-Z0-9._-]/g, '-') }@ismile-scheduler`;
}

function eventToIcsBlock(event = {}, index = 0) {
  const startDate = icsDate(event.date || todayKey());
  const endDate = icsDate(addDays(event.endDate || event.date || todayKey(), 1));
  const stamp = new Date().toISOString().replace(/[-:]/g, '').replace(/\.\d{3}Z$/, 'Z');
  const lines = [
    'BEGIN:VEVENT',
    `DTSTART;VALUE=DATE:${startDate}`,
    `DTEND;VALUE=DATE:${endDate}`,
    `DTSTAMP:${stamp}`,
    `UID:${escapeIcsText(makeIcsUid(event) || `ismile-${index}@ismile-scheduler`)}`,
    `CREATED:${stamp}`,
    event.notes ? `DESCRIPTION:${escapeIcsText(event.notes)}` : '',
    event.updatedAt ? `LAST-MODIFIED:${new Date(event.updatedAt).toISOString().replace(/[-:]/g, '').replace(/\.\d{3}Z$/, 'Z')}` : `LAST-MODIFIED:${stamp}`,
    event.canonicalSchool || event.address ? `LOCATION:${escapeIcsText(event.address || event.canonicalSchool || '')}` : '',
    'SEQUENCE:0',
    'STATUS:CONFIRMED',
    `SUMMARY:${escapeIcsText(event.title || 'Untitled Event')}`,
    'TRANSP:TRANSPARENT',
    'END:VEVENT'
  ].filter(Boolean);
  return lines.map(foldIcsLine).join('\r\n');
}

function eventsToIcs(events = [], calendarName = 'iSmile Scheduler Events') {
  const blocks = (events || [])
    .filter(event => event && event.active !== false && event.date && event.title)
    .sort((a, b) => String(a.date || '').localeCompare(String(b.date || '')) || String(a.title || '').localeCompare(String(b.title || '')))
    .map(eventToIcsBlock);
  return [
    'BEGIN:VCALENDAR',
    'VERSION:2.0',
    'PRODID:-//iSmile Studios//iSmile Scheduler//EN',
    'CALSCALE:GREGORIAN',
    'METHOD:PUBLISH',
    `X-WR-CALNAME:${escapeIcsText(calendarName)}`,
    ...blocks,
    'END:VCALENDAR'
  ].map(foldIcsLine).join('\r\n');
}

function crc32Bytes(bytes = new Uint8Array()) {
  let crc = -1;
  for (let i = 0; i < bytes.length; i += 1) {
    crc ^= bytes[i];
    for (let j = 0; j < 8; j += 1) {
      crc = (crc >>> 1) ^ (0xedb88320 & -(crc & 1));
    }
  }
  return (crc ^ -1) >>> 0;
}

function stringToBytes(text = '') {
  return new TextEncoder().encode(text);
}

function writeUint16(bytes, offset, value) {
  bytes[offset] = value & 255;
  bytes[offset + 1] = (value >>> 8) & 255;
}

function writeUint32(bytes, offset, value) {
  bytes[offset] = value & 255;
  bytes[offset + 1] = (value >>> 8) & 255;
  bytes[offset + 2] = (value >>> 16) & 255;
  bytes[offset + 3] = (value >>> 24) & 255;
}

function downloadZipFile(filename, files = []) {
  if (typeof window === 'undefined') return;
  const localParts = [];
  const centralParts = [];
  let offset = 0;
  files.forEach(file => {
    const nameBytes = stringToBytes(file.name);
    const dataBytes = stringToBytes(file.content || '');
    const crc = crc32Bytes(dataBytes);
    const local = new Uint8Array(30 + nameBytes.length);
    writeUint32(local, 0, 0x04034b50);
    writeUint16(local, 4, 20);
    writeUint16(local, 6, 0x0800);
    writeUint16(local, 8, 0);
    writeUint16(local, 10, 0);
    writeUint16(local, 12, 0);
    writeUint32(local, 14, crc);
    writeUint32(local, 18, dataBytes.length);
    writeUint32(local, 22, dataBytes.length);
    writeUint16(local, 26, nameBytes.length);
    writeUint16(local, 28, 0);
    local.set(nameBytes, 30);
    localParts.push(local, dataBytes);

    const central = new Uint8Array(46 + nameBytes.length);
    writeUint32(central, 0, 0x02014b50);
    writeUint16(central, 4, 20);
    writeUint16(central, 6, 20);
    writeUint16(central, 8, 0x0800);
    writeUint16(central, 10, 0);
    writeUint16(central, 12, 0);
    writeUint16(central, 14, 0);
    writeUint32(central, 16, crc);
    writeUint32(central, 20, dataBytes.length);
    writeUint32(central, 24, dataBytes.length);
    writeUint16(central, 28, nameBytes.length);
    writeUint16(central, 30, 0);
    writeUint16(central, 32, 0);
    writeUint16(central, 34, 0);
    writeUint16(central, 36, 0);
    writeUint32(central, 38, 0);
    writeUint32(central, 42, offset);
    central.set(nameBytes, 46);
    centralParts.push(central);
    offset += local.length + dataBytes.length;
  });
  const centralSize = centralParts.reduce((sum, part) => sum + part.length, 0);
  const end = new Uint8Array(22);
  writeUint32(end, 0, 0x06054b50);
  writeUint16(end, 4, 0);
  writeUint16(end, 6, 0);
  writeUint16(end, 8, files.length);
  writeUint16(end, 10, files.length);
  writeUint32(end, 12, centralSize);
  writeUint32(end, 16, offset);
  writeUint16(end, 20, 0);
  const blob = new Blob([...localParts, ...centralParts, end], { type: 'application/zip' });
  const url = URL.createObjectURL(blob);
  const a = document.createElement('a');
  a.href = url;
  a.download = filename;
  document.body.appendChild(a);
  a.click();
  a.remove();
  URL.revokeObjectURL(url);
}


function makeBackupFilename(label, extension) {
  const stamp = new Date().toISOString().replace(/[:.]/g, '-');
  return `ismile-scheduler-${label}-${stamp}.${extension}`;
}

function AdminPage({ events, schools, photographers, assistants, staffMembers = [], eventsMessage, schoolsMessage, reloadEvents, reloadSchools, reloadTeamMembers, authEmail }) {
  const activeEvents = (events || []).filter(event => event.active !== false);
  const removedEvents = (events || []).filter(event => event.active === false);
  const googleImported = activeEvents.filter(event => event.source === 'google_calendar_import');
  const manualEvents = activeEvents.filter(event => event.source !== 'google_calendar_import');
  const fall2026 = activeEvents.filter(event => event.date >= '2026-09-01' && event.date <= '2026-11-30');
  const schoolLinked = activeEvents.filter(event => event.schoolId);
  const unlinked = activeEvents.filter(event => !event.schoolId && event.supabaseId);
  const activeSchools = (schools || []).filter(school => school.active !== false);
  const inactiveSchools = (schools || []).filter(school => school.active === false || school.mergedInto);
  const [adminUsers, setAdminUsers] = useState([]);
  const [adminUsersMessage, setAdminUsersMessage] = useState('Loading users and permissions...');
  const [adminUsersSaving, setAdminUsersSaving] = useState(false);
  const [newUser, setNewUser] = useState({ name: '', email: '', role: 'photographer' });
  const [staffSaving, setStaffSaving] = useState(false);
  const [staffMessage, setStaffMessage] = useState('');
  const [newStaff, setNewStaff] = useState({ name: '', email: '', phone: '', roles: ['photographer'] });
  const [unlinkedSearch, setUnlinkedSearch] = useState('');
  const [manualSchoolSelections, setManualSchoolSelections] = useState({});
  const [linkingEventId, setLinkingEventId] = useState('');
  const [unlinkedMessage, setUnlinkedMessage] = useState('');
  const [skippedUnlinkedEventIds, setSkippedUnlinkedEventIds] = useState(() => {
    if (typeof window === 'undefined') return [];
    try { return JSON.parse(window.localStorage.getItem('schedulerSkippedUnlinkedEventIds') || '[]'); } catch { return []; }
  });

  const skipUnlinkedEvent = (event) => {
    const id = event?.supabaseId || event?.id;
    if (!id) return;
    setSkippedUnlinkedEventIds(prev => {
      const next = Array.from(new Set([...(prev || []), id]));
      if (typeof window !== 'undefined') window.localStorage.setItem('schedulerSkippedUnlinkedEventIds', JSON.stringify(next));
      return next;
    });
    setUnlinkedMessage(`Skipped ${event.title}. It will stay unlinked and hidden from this repair list on this browser.`);
  };

  const restoreSkippedUnlinkedEvents = () => {
    setSkippedUnlinkedEventIds([]);
    if (typeof window !== 'undefined') window.localStorage.removeItem('schedulerSkippedUnlinkedEventIds');
    setUnlinkedMessage('Skipped unlinked events are showing again.');
  };

  const activeStaffMembers = useMemo(() => groupStaffMembers(staffMembers?.length ? staffMembers : builtInStaffMembers()), [staffMembers]);

  const activeVisibleSchools = useMemo(() => (schools || []).filter(school => school && school.active !== false && !school.mergedInto), [schools]);

  const unlinkedEventCandidates = useMemo(() => {
    const search = unlinkedSearch.trim().toLowerCase();
    const seen = new Set();
    return (unlinked || [])
      .filter(event => event && event.supabaseId && event.active !== false)
      .filter(event => !skippedUnlinkedEventIds.includes(event.supabaseId || event.id))
      .filter(event => {
        if (!search) return true;
        const text = [event.title, event.canonicalSchool, event.type, event.date].filter(Boolean).join(' ').toLowerCase();
        return text.includes(search);
      })
      .map(event => {
        const suggestion = resolveSchoolListMatch(event.canonicalSchool || event.title || '', activeVisibleSchools) || resolveSchoolListMatch(event.title || '', activeVisibleSchools);
        return { event, suggestion };
      })
      .filter(({ event }) => {
        const key = `${event.date || ''}|${event.title || ''}|${event.canonicalSchool || ''}`.toLowerCase();
        if (seen.has(key)) return false;
        seen.add(key);
        return true;
      })
      .sort((a, b) => String(b.event.date || '').localeCompare(String(a.event.date || '')) || String(a.event.title || '').localeCompare(String(b.event.title || '')))
      .slice(0, 75);
  }, [unlinked, activeVisibleSchools, unlinkedSearch, skippedUnlinkedEventIds]);

  const linkUnlinkedEventToSchool = async (event, schoolId) => {
    const selectedSchool = activeVisibleSchools.find(school => school.id === schoolId);
    if (!event?.supabaseId || !selectedSchool?.id) {
      setUnlinkedMessage('Choose a school before linking this event.');
      return;
    }
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setUnlinkedMessage('Supabase is not connected yet, so this event could not be linked.');
      return;
    }
    const ok = window.confirm(`Link this event to ${selectedSchool.name}?\n\n${event.title}\n${formatDate(event.date)}\n\nThis only updates this event record. It does not rename or delete anything.`);
    if (!ok) return;
    setLinkingEventId(event.supabaseId);
    setUnlinkedMessage('Linking event...');
    const { error } = await supabase
      .from('events')
      .update({
        school_id: selectedSchool.id,
        canonical_school: selectedSchool.name,
        updated_at: new Date().toISOString()
      })
      .eq('id', event.supabaseId);
    setLinkingEventId('');
    if (error) {
      setUnlinkedMessage(`Could not link event: ${error.message}`);
      return;
    }
    setManualSchoolSelections(prev => {
      const next = { ...prev };
      delete next[event.supabaseId];
      return next;
    });
    await reloadEvents?.();
    setUnlinkedMessage(`Linked ${event.title} to ${selectedSchool.name}.`);
  };

  const saveStaffMember = async (event) => {
    event?.preventDefault?.();
    const name = normalizeMemberName(newStaff.name || '');
    if (!name) {
      setStaffMessage('Enter a staff member name.');
      return;
    }
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setStaffMessage('Supabase is not connected yet.');
      return;
    }
    setStaffSaving(true);
    const selectedRoles = newStaff.roles?.length ? newStaff.roles : ['photographer'];
    const rows = selectedRoles.map(role => ({
      name,
      title: null,
      email: newStaff.email.trim().toLowerCase() || null,
      phone: newStaff.phone.trim() || null,
      role,
      active: true,
      updated_at: new Date().toISOString()
    }));
    const { error } = await supabase
      .from('staff_members')
      .upsert(rows, { onConflict: 'name,role' });
    setStaffSaving(false);
    if (error) {
      setStaffMessage(`Could not save staff contact: ${error.message}. If this mentions the title column, run supabase/staff_directory_migration.sql once.`);
      return;
    }
    setNewStaff({ name: '', email: '', phone: '', roles: ['photographer'] });
    await reloadTeamMembers?.();
    setStaffMessage(`${name} was saved to the staff directory.`);
  };

  const updateStaffMember = async (member, patch) => {
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setStaffMessage('Supabase is not connected yet.');
      return;
    }
    if (!member?.id || String(member.id).startsWith('builtin-')) {
      setStaffMessage('This built-in staff member needs to be saved to Supabase before editing contact details.');
      return;
    }
    setStaffSaving(true);
    const { error } = await supabase
      .from('staff_members')
      .update({ ...patch, updated_at: new Date().toISOString() })
      .eq('id', member.id);
    setStaffSaving(false);
    if (error) {
      setStaffMessage(`Could not update staff contact: ${error.message}. If this mentions the title column, run supabase/staff_directory_migration.sql once.`);
      return;
    }
    await reloadTeamMembers?.();
    setStaffMessage(`${member.name || 'Staff member'} was updated.`);
  };


  const updateStaffGroup = async (member, patch) => {
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setStaffMessage('Supabase is not connected yet.');
      return;
    }
    const editableRows = (member.originalRows || []).filter(row => row?.id && !String(row.id).startsWith('builtin-'));
    if (!editableRows.length) {
      setStaffMessage('This built-in staff member needs to be saved to Supabase before editing contact details.');
      return;
    }
    setStaffSaving(true);
    const updates = await Promise.all(editableRows.map(row => supabase
      .from('staff_members')
      .update({ ...patch, updated_at: new Date().toISOString() })
      .eq('id', row.id)));
    setStaffSaving(false);
    const failed = updates.find(result => result.error);
    if (failed?.error) {
      setStaffMessage(`Could not update staff contact: ${failed.error.message}.`);
      return;
    }
    await reloadTeamMembers?.();
    setStaffMessage(`${member.name || 'Staff member'} was updated.`);
  };

  const setStaffRoleActive = async (member, role, active) => {
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setStaffMessage('Supabase is not connected yet.');
      return;
    }
    const existingRow = member.roleRows?.[role];
    if (existingRow?.id && !String(existingRow.id).startsWith('builtin-')) {
      setStaffSaving(true);
      const { error } = await supabase
        .from('staff_members')
        .update({ active, updated_at: new Date().toISOString() })
        .eq('id', existingRow.id);
      setStaffSaving(false);
      if (error) {
        setStaffMessage(`Could not update role: ${error.message}`);
        return;
      }
    } else if (active) {
      setStaffSaving(true);
      const { error } = await supabase
        .from('staff_members')
        .upsert({
          name: member.name,
          title: member.title || null,
          email: member.email || null,
          phone: member.phone || null,
          role,
          active: true,
          updated_at: new Date().toISOString()
        }, { onConflict: 'name,role' });
      setStaffSaving(false);
      if (error) {
        setStaffMessage(`Could not add role: ${error.message}`);
        return;
      }
    }
    await reloadTeamMembers?.();
    setStaffMessage(`${member.name || 'Staff member'} roles updated.`);
  };

  const setStaffGroupActive = async (member, active) => {
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setStaffMessage('Supabase is not connected yet.');
      return;
    }
    const editableRows = (member.originalRows || []).filter(row => row?.id && !String(row.id).startsWith('builtin-'));
    if (!editableRows.length) {
      setStaffMessage('This built-in staff member needs to be saved to Supabase before changing active status.');
      return;
    }
    setStaffSaving(true);
    const updates = await Promise.all(editableRows.map(row => supabase
      .from('staff_members')
      .update({ active, updated_at: new Date().toISOString() })
      .eq('id', row.id)));
    setStaffSaving(false);
    const failed = updates.find(result => result.error);
    if (failed?.error) {
      setStaffMessage(`Could not update staff status: ${failed.error.message}.`);
      return;
    }
    await reloadTeamMembers?.();
    setStaffMessage(`${member.name || 'Staff member'} was marked ${active ? 'active' : 'inactive'}.`);
  };

  const loadAdminUsers = async () => {
    if (!hasSupabaseEnv()) {
      setAdminUsersMessage('Supabase is not connected yet. Users and permissions require Supabase.');
      return;
    }
    const supabase = createClient();
    if (!supabase) {
      setAdminUsersMessage('Supabase client was not available.');
      return;
    }
    const { data, error } = await supabase
      .from('app_users')
      .select('id, name, email, role, active, created_at, updated_at')
      .order('active', { ascending: false })
      .order('name', { ascending: true });
    if (error) {
      setAdminUsersMessage(`Users table is not ready yet: ${error.message}. Run supabase/admin_auth_users_sync_migration.sql once, then reload.`);
      return;
    }
    setAdminUsers(data || []);
    setAdminUsersMessage(`${data?.length || 0} user${data?.length === 1 ? '' : 's'} loaded.`);
  };

  useEffect(() => {
    loadAdminUsers();
  }, []);

  const saveAdminUser = async (event) => {
    event?.preventDefault?.();
    const email = newUser.email.trim().toLowerCase();
    const name = newUser.name.trim() || email;
    if (!email) {
      setAdminUsersMessage('Enter an email before adding a user.');
      return;
    }
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setAdminUsersMessage('Supabase is not connected yet.');
      return;
    }
    setAdminUsersSaving(true);
    const { error } = await supabase
      .from('app_users')
      .upsert({ name, email, role: newUser.role, active: true, updated_at: new Date().toISOString() }, { onConflict: 'email' });
    setAdminUsersSaving(false);
    if (error) {
      setAdminUsersMessage(`Could not save user: ${error.message}`);
      return;
    }
    setNewUser({ name: '', email: '', role: 'photographer' });
    await loadAdminUsers();
    setAdminUsersMessage(`${name} now has access as ${USER_PERMISSION_ROLE_LABELS[newUser.role] || newUser.role}.`);
  };

  const updateAdminUser = async (id, patch) => {
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setAdminUsersMessage('Supabase is not connected yet.');
      return;
    }
    setAdminUsersSaving(true);
    const { error } = await supabase
      .from('app_users')
      .update({ ...patch, updated_at: new Date().toISOString() })
      .eq('id', id);
    setAdminUsersSaving(false);
    if (error) {
      setAdminUsersMessage(`Could not update user: ${error.message}`);
      return;
    }
    await loadAdminUsers();
  };

  const exportPackage = () => {
    const payload = {
      exportedAt: new Date().toISOString(),
      app: 'iSmile Scheduler',
      counts: {
        activeEvents: activeEvents.length,
        removedEvents: removedEvents.length,
        schools: schools?.length || 0,
        activeSchools: activeSchools.length,
        inactiveOrMergedSchools: inactiveSchools.length
      },
      events: events || [],
      schools: schools || [],
      teamMembers: { photographers, assistants }
    };
    downloadTextFile(makeBackupFilename('full-backup', 'json'), JSON.stringify(payload, null, 2), 'application/json;charset=utf-8');
  };

  const exportEventsCsv = () => {
    const rows = (events || []).map(event => ({
      id: event.id,
      supabaseId: event.supabaseId,
      date: event.date,
      endDate: event.endDate || '',
      title: event.title,
      school: event.canonicalSchool || '',
      type: event.type,
      status: event.status,
      arrivalTime: event.arrivalTime || '',
      startTime: event.time || '',
      photographers: (event.photographers || []).join('; '),
      assistants: (event.assistants || []).join('; '),
      source: event.source || '',
      active: event.active !== false,
      notes: event.notes || '',
      noteAttribution: event.noteAttribution ? JSON.stringify(event.noteAttribution) : ''
    }));
    downloadTextFile(makeBackupFilename('events', 'csv'), toCsv(rows), 'text/csv;charset=utf-8');
  };

  const exportSchoolsCsv = () => {
    const rows = (schools || []).map(school => ({
      id: school.id,
      name: school.name,
      originalName: school.originalName || '',
      district: school.district || '',
      irm: school.irm || '',
      address: school.address || '',
      city: school.city || '',
      stateZip: school.stateZip || '',
      contactFirst: school.contactFirst || '',
      contactLast: school.contactLast || '',
      contactPhone: school.contactPhone || '',
      contactEmail: school.contactEmail || '',
      mergedInto: school.mergedInto || '',
      active: school.active !== false,
      notes: school.notes || '',
      noteAttribution: school.noteAttribution ? JSON.stringify(school.noteAttribution) : ''
    }));
    downloadTextFile(makeBackupFilename('schools', 'csv'), toCsv(rows), 'text/csv;charset=utf-8');
  };

  const exportIcsPackage = () => {
    const activeExportEvents = activeEvents.filter(event => event?.date && event?.title);
    const groups = [
      ['all_events.ics', activeExportEvents, 'iSmile Scheduler — All Events'],
      ['fall_picture_days.ics', activeExportEvents.filter(event => String(event.type || '').toLowerCase().includes('fall')), 'iSmile Scheduler — Fall Picture Days'],
      ['spring_picture_days.ics', activeExportEvents.filter(event => String(event.type || '').toLowerCase().includes('spring')), 'iSmile Scheduler — Spring Picture Days'],
      ['makeups.ics', activeExportEvents.filter(event => String(event.type || '').toLowerCase().includes('makeup')), 'iSmile Scheduler — Makeups'],
      ['sports.ics', activeExportEvents.filter(event => String(event.type || '').toLowerCase().includes('sport')), 'iSmile Scheduler — Sports'],
      ['special_events.ics', activeExportEvents.filter(event => String(event.type || '').toLowerCase().includes('special')), 'iSmile Scheduler — Special Events']
    ];
    const readme = [
      'iSmile Scheduler ICS Backup Package',
      `Exported: ${new Date().toISOString()}`,
      '',
      'Import these .ics files into Google Calendar if you ever need to rebuild calendar events from Scheduler.',
      'Picture Day Info from Scheduler is exported as the Google Calendar event description.',
      'Events are exported as all-day events to match the original school-calendar import style.',
      '',
      `Active events exported: ${activeExportEvents.length}`
    ].join('\n');
    downloadZipFile(makeBackupFilename('ics-package', 'zip'), [
      { name: 'README.txt', content: readme },
      ...groups.map(([name, groupEvents, calendarName]) => ({ name, content: eventsToIcs(groupEvents, calendarName) }))
    ]);
  };

  const copyBackupSql = async () => {
    const stamp = new Date().toISOString().slice(0, 10).replace(/-/g, '_');
    const sql = `create table if not exists events_backup_${stamp} as select * from public.events;\ncreate table if not exists schools_backup_${stamp} as select * from public.schools;`;
    try {
      await navigator.clipboard.writeText(sql);
      alert('Backup SQL copied. Paste it into Supabase SQL Editor before a risky update.');
    } catch {
      downloadTextFile(makeBackupFilename('backup-sql', 'sql'), sql, 'text/sql;charset=utf-8');
    }
  };

  const cards = [
    ['Active Events', activeEvents.length],
    ['Removed Events', removedEvents.length],
    ['Imported ICS Events', googleImported.length],
    ['Manual/App Events', manualEvents.length],
    ['Fall 2026 Events', fall2026.length],
    ['School-Linked Events', `${schoolLinked.length}/${activeEvents.length}`],
    ['Unlinked Events', unlinked.length],
    ['Active Schools', activeSchools.length],
    ['Merged/Hidden Schools', inactiveSchools.length]
  ];

  return (
    <div className="space-y-5">
      <div className="rounded-[2rem] border border-zinc-200 bg-white/70 p-5 shadow-sm">
        <div className="flex flex-col gap-3 md:flex-row md:items-start md:justify-between">
          <div>
            <h2 className="text-lg font-semibold text-zinc-950">Admin</h2>
            <p className="mt-1 max-w-2xl text-sm leading-6 text-zinc-600">Simple safety tools for backups, exports, and quick scheduler health checks. These buttons do not delete or change data.</p>
          </div>
          <div className="flex flex-wrap gap-2">
            <button type="button" onClick={reloadEvents} className="rounded-2xl border border-zinc-200 bg-white px-4 py-2 text-sm font-semibold text-zinc-900 shadow-sm hover:bg-zinc-50">Reload Events</button>
            <button type="button" onClick={reloadSchools} className="rounded-2xl border border-zinc-200 bg-white px-4 py-2 text-sm font-semibold text-zinc-900 shadow-sm hover:bg-zinc-50">Reload Schools</button>
          </div>
        </div>
      </div>

      <div className="grid gap-3 md:grid-cols-2 lg:grid-cols-4">
        <button type="button" onClick={exportPackage} className="rounded-3xl border border-[#AEBB9E] bg-[#DDE8D2]/70 p-5 text-left shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2]">
          <div className="text-sm font-bold text-zinc-950">Download Full Backup</div>
          <div className="mt-2 text-sm leading-6 text-zinc-600">JSON package with events, schools, team members, removed events, and counts.</div>
        </button>
        <button type="button" onClick={exportIcsPackage} className="rounded-3xl border border-sky-200 bg-sky-50/80 p-5 text-left shadow-sm transition hover:-translate-y-0.5 hover:bg-sky-100">
          <div className="text-sm font-bold text-zinc-950">Download ICS Package</div>
          <div className="mt-2 text-sm leading-6 text-zinc-600">Google Calendar-friendly .ics backup package. Picture Day Info becomes the calendar description.</div>
        </button>
        <button type="button" onClick={exportEventsCsv} className="rounded-3xl border border-zinc-200 bg-white/70 p-5 text-left shadow-sm transition hover:-translate-y-0.5 hover:bg-white">
          <div className="text-sm font-bold text-zinc-950">Download Events CSV</div>
          <div className="mt-2 text-sm leading-6 text-zinc-600">Spreadsheet-friendly export of active and removed event records.</div>
        </button>
        <button type="button" onClick={exportSchoolsCsv} className="rounded-3xl border border-zinc-200 bg-white/70 p-5 text-left shadow-sm transition hover:-translate-y-0.5 hover:bg-white">
          <div className="text-sm font-bold text-zinc-950">Download Schools CSV</div>
          <div className="mt-2 text-sm leading-6 text-zinc-600">Spreadsheet-friendly export of school records, contacts, IRM, and merge status.</div>
        </button>
      </div>

      <div className="rounded-[2rem] border border-amber-200 bg-amber-50/70 p-5 shadow-sm">
        <div className="flex flex-col gap-3 md:flex-row md:items-center md:justify-between">
          <div>
            <h3 className="font-semibold text-amber-950">Before risky SQL updates</h3>
            <p className="mt-1 text-sm leading-6 text-amber-900">Copy a quick Supabase backup-table command for events and schools. This is useful on the free Supabase plan where automatic backups are limited.</p>
          </div>
          <button type="button" onClick={copyBackupSql} className="rounded-2xl bg-amber-900 px-4 py-3 text-sm font-bold text-white shadow-sm hover:bg-amber-950">Copy Backup SQL</button>
        </div>
      </div>

      <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
        {cards.map(([label, value]) => (
          <div key={label} className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
            <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">{label}</div>
            <div className="mt-2 text-2xl font-black text-zinc-950">{value}</div>
          </div>
        ))}
      </div>

      <div className="rounded-[2rem] border border-zinc-200 bg-white/70 p-4 shadow-sm">
        <div className="flex flex-col gap-3 md:flex-row md:items-start md:justify-between">
          <div>
            <h3 className="font-semibold text-zinc-950">Unlinked Events</h3>{skippedUnlinkedEventIds.length ? <button type="button" onClick={restoreSkippedUnlinkedEvents} className="mt-2 rounded-full border border-zinc-200 bg-white px-3 py-1.5 text-xs font-bold text-zinc-600">Show skipped ({skippedUnlinkedEventIds.length})</button> : null}
            <p className="mt-1 max-w-2xl text-sm leading-6 text-zinc-600">Admin-only repair tool for events that do not have a true School List link yet. Suggestions use name matching; linking only updates the selected event record.</p>
          </div>
          <input value={unlinkedSearch} onChange={event => setUnlinkedSearch(event.target.value)} placeholder="Search unlinked events..." className="w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E] md:w-72" />
        </div>
        {unlinkedMessage ? <p className="mt-3 rounded-2xl border border-zinc-200 bg-cream/70 p-2 text-sm text-zinc-700">{unlinkedMessage}</p> : null}
        <div className="mt-3 overflow-hidden rounded-2xl border border-zinc-200 bg-white/80">
          <div className="max-h-[420px] overflow-auto">
            <table className="w-full min-w-[900px] text-left">
              <thead className="sticky top-0 z-10 bg-zinc-50 text-[11px] font-bold uppercase tracking-wide text-zinc-500">
                <tr><th className="px-3 py-2">Date</th><th className="px-3 py-2">Event</th><th className="px-3 py-2">Suggested School</th><th className="px-3 py-2">Link To</th><th className="px-3 py-2 text-right">Action</th></tr>
              </thead>
              <tbody className="divide-y divide-zinc-100">
                {unlinkedEventCandidates.length ? unlinkedEventCandidates.map(({ event, suggestion }) => {
                  const selectedSchoolId = manualSchoolSelections[event.supabaseId] || suggestion?.id || '';
                  return (
                    <tr key={event.supabaseId || event.id} className="text-zinc-900">
                      <td className="whitespace-nowrap px-3 py-2 text-sm font-semibold text-zinc-700">{formatDate(event.date)}</td>
                      <td className="px-3 py-2"><div className="text-sm font-semibold text-zinc-950">{event.title}</div><div className="mt-0.5 text-xs text-zinc-500">{event.type || 'Event'}{event.canonicalSchool ? ` · Current text: ${event.canonicalSchool}` : ''}</div></td>
                      <td className="px-3 py-2 text-sm text-zinc-700">{suggestion ? suggestion.name : <span className="text-zinc-400">No clear suggestion</span>}</td>
                      <td className="px-3 py-2">
                        <select value={selectedSchoolId} onChange={changeEvent => setManualSchoolSelections(prev => ({ ...prev, [event.supabaseId]: changeEvent.target.value }))} className="w-full rounded-xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]">
                          <option value="">Choose school...</option>
                          {activeVisibleSchools.map(school => <option key={school.id || school.name} value={school.id}>{school.name}</option>)}
                        </select>
                      </td>
                      <td className="px-3 py-2 text-right"><div className="flex flex-col items-end gap-1.5"><button type="button" disabled={!selectedSchoolId || linkingEventId === event.supabaseId} onClick={() => linkUnlinkedEventToSchool(event, selectedSchoolId)} className="rounded-xl bg-zinc-900 px-3 py-2 text-xs font-bold text-white shadow-sm hover:bg-zinc-800 disabled:bg-zinc-300">{linkingEventId === event.supabaseId ? 'Linking...' : 'Link Event'}</button><button type="button" onClick={() => skipUnlinkedEvent(event)} className="rounded-xl border border-zinc-200 bg-white px-3 py-1.5 text-xs font-bold text-zinc-600 hover:bg-zinc-50">Skip</button></div></td>
                    </tr>
                  );
                }) : <tr><td colSpan={5} className="px-3 py-6 text-center text-sm text-zinc-500">No unlinked events match this search.</td></tr>}
              </tbody>
            </table>
          </div>
        </div>
        <p className="mt-2 text-xs text-zinc-500">Showing up to 75 unique unlinked event/date combinations. This tool does not delete, rename, or bulk-link duplicate rows.</p>
      </div>

      <div className="rounded-[2rem] border border-zinc-200 bg-white/70 p-4 shadow-sm">
        <div className="flex flex-col gap-3 md:flex-row md:items-center md:justify-between">
          <div>
            <h3 className="font-semibold text-zinc-950">Staff Directory Manager</h3>
            <p className="mt-1 text-sm text-zinc-600">Compact editor for Team Members contact info.</p>
          </div>
          <button type="button" onClick={reloadTeamMembers} disabled={staffSaving} className="rounded-full border border-zinc-200 bg-white px-3 py-1.5 text-xs font-bold text-zinc-900 shadow-sm hover:bg-zinc-50 disabled:opacity-60">Reload</button>
        </div>

        <form onSubmit={saveStaffMember} className="mt-3 grid gap-2 lg:grid-cols-[1fr_1.2fr_1fr_150px_auto]">
          <input value={newStaff.name} onChange={event => setNewStaff(prev => ({ ...prev, name: event.target.value }))} placeholder="Name" className="rounded-xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
          <input value={newStaff.email} onChange={event => setNewStaff(prev => ({ ...prev, email: event.target.value }))} placeholder="Email" type="email" className="rounded-xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
          <input value={newStaff.phone} onChange={event => setNewStaff(prev => ({ ...prev, phone: event.target.value }))} placeholder="Phone" className="rounded-xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
          <div className="flex flex-wrap items-center gap-2 rounded-xl border border-zinc-200 bg-white px-3 py-2 text-xs font-bold text-zinc-700">
            {STAFF_ROLE_OPTIONS.map(option => (
              <label key={option.value} className="inline-flex items-center gap-1">
                <input type="checkbox" checked={newStaff.roles.includes(option.value)} onChange={event => setNewStaff(prev => ({ ...prev, roles: event.target.checked ? Array.from(new Set([...(prev.roles || []), option.value])) : (prev.roles || []).filter(role => role !== option.value) }))} />
                {option.label}
              </label>
            ))}
          </div>
          <button type="submit" disabled={staffSaving} className="rounded-xl bg-zinc-900 px-4 py-2 text-sm font-bold text-white shadow-sm hover:bg-zinc-800 disabled:bg-zinc-400">Add</button>
        </form>

        {staffMessage ? <p className="mt-3 rounded-2xl border border-zinc-200 bg-cream/70 p-2 text-sm text-zinc-700">{staffMessage}</p> : null}

        <div className="mt-3 overflow-hidden rounded-2xl border border-zinc-200 bg-white/80">
          <div className="max-h-[360px] overflow-auto">
            <table className="w-full min-w-[900px] text-left">
              <thead className="sticky top-0 z-10 bg-zinc-50 text-[11px] font-bold uppercase tracking-wide text-zinc-500">
                <tr><th className="px-3 py-2">Name</th><th className="px-3 py-2">Email</th><th className="px-3 py-2">Phone</th><th className="px-3 py-2">Roles</th><th className="px-3 py-2">Status</th><th className="px-3 py-2 text-right">Active</th></tr>
              </thead>
              <tbody className="divide-y divide-zinc-100">
                {activeStaffMembers.map(member => {
                  const builtin = (member.originalRows || []).every(row => String(row.id || '').startsWith('builtin-'));
                  return (
                    <tr key={member.id || member.name} className={`${member.active === false ? 'bg-zinc-50 text-zinc-400' : 'text-zinc-900'}`}>
                      <td className="px-3 py-1.5"><input defaultValue={member.name || ''} onBlur={event => event.target.value !== (member.name || '') ? updateStaffGroup(member, { name: normalizeMemberName(event.target.value) }) : null} disabled={staffSaving || builtin} className="w-full rounded-lg border border-zinc-200 bg-white px-2 py-1 text-sm font-semibold outline-none focus:border-[#AEBB9E] disabled:opacity-60" /></td>
                      <td className="px-3 py-1.5"><input defaultValue={member.email || ''} onBlur={event => event.target.value !== (member.email || '') ? updateStaffGroup(member, { email: event.target.value.trim().toLowerCase() || null }) : null} disabled={staffSaving || builtin} placeholder="Email" type="email" className="w-full rounded-lg border border-zinc-200 bg-white px-2 py-1 text-sm outline-none focus:border-[#AEBB9E] disabled:opacity-60" /></td>
                      <td className="px-3 py-1.5"><input defaultValue={member.phone || ''} onBlur={event => event.target.value !== (member.phone || '') ? updateStaffGroup(member, { phone: event.target.value.trim() || null }) : null} disabled={staffSaving || builtin} placeholder="Phone" className="w-full rounded-lg border border-zinc-200 bg-white px-2 py-1 text-sm outline-none focus:border-[#AEBB9E] disabled:opacity-60" /></td>
                      <td className="px-3 py-1.5">
                        <div className="flex flex-wrap gap-2 text-[11px] font-bold text-zinc-700">
                          {STAFF_ROLE_OPTIONS.map(option => (
                            <label key={option.value} className="inline-flex items-center gap-1 rounded-full border border-zinc-200 bg-white px-2 py-1">
                              <input type="checkbox" checked={member.roles.includes(option.value) && member.roleRows?.[option.value]?.active !== false} disabled={staffSaving || builtin} onChange={event => setStaffRoleActive(member, option.value, event.target.checked)} />
                              {option.label}
                            </label>
                          ))}
                        </div>
                      </td>
                      <td className="whitespace-nowrap px-3 py-1.5 text-xs font-bold text-zinc-600">{builtin ? 'Built-in' : member.active === false ? 'Inactive' : 'Active'}</td>
                      <td className="whitespace-nowrap px-3 py-1.5 text-right">{!builtin ? <button type="button" onClick={() => setStaffGroupActive(member, member.active === false)} disabled={staffSaving} className={`${member.active === false ? 'border-emerald-200 bg-emerald-50 text-emerald-800 hover:bg-emerald-100' : 'border-rose-200 bg-rose-50 text-rose-700 hover:bg-rose-100'} rounded-full border px-2.5 py-1 text-[11px] font-black disabled:opacity-60`}>{member.active === false ? 'Enable' : 'Deactivate'}</button> : <span className="text-[11px] text-zinc-400">—</span>}</td>
                    </tr>
                  );
                })}
                {!activeStaffMembers.length ? <tr><td colSpan="6" className="p-4 text-sm text-zinc-500">No staff members loaded yet.</td></tr> : null}
              </tbody>
            </table>
          </div>
        </div>
      </div>

      <div className="rounded-[2rem] border border-zinc-200 bg-white/70 p-5 shadow-sm">
        <div className="flex flex-col gap-3 md:flex-row md:items-start md:justify-between">
          <div>
            <h3 className="font-semibold text-zinc-950">Users & Permissions</h3>
            <p className="mt-1 text-sm leading-6 text-zinc-600">Synced access list for everyone who has created a Supabase account. Detailed permission enforcement can be tightened later.</p>
            {authEmail ? <p className="mt-2 text-xs font-semibold uppercase tracking-wide text-emerald-700">Signed in as {authEmail}</p> : null}
          </div>
          <button type="button" onClick={loadAdminUsers} disabled={adminUsersSaving} className="rounded-2xl border border-zinc-200 bg-white px-4 py-2 text-sm font-semibold text-zinc-900 shadow-sm hover:bg-zinc-50 disabled:cursor-not-allowed disabled:opacity-60">Reload Users</button>
        </div>

        <div className="mt-4 rounded-3xl border border-zinc-200 bg-cream/70 p-4">
          <h4 className="text-sm font-bold uppercase tracking-[0.16em] text-zinc-500">Role permissions</h4>
          <div className="mt-3 grid gap-2 text-sm text-zinc-700 md:grid-cols-2">
            <div className="rounded-2xl bg-white/70 px-3 py-2">Admin: full access</div>
            <div className="rounded-2xl bg-white/70 px-3 py-2">Photographer: can view and edit scheduling/details, but cannot access Admin, restore removed events, remove events, or merge schools</div>
            <div className="rounded-2xl bg-white/70 px-3 py-2">Assistant: view-only access; cannot add, edit, duplicate, assign, remove, restore, merge, or access Admin</div>
          </div>
          <p className="mt-3 text-xs text-zinc-500">Use Assistant for staff who should only view schedules and school information.</p>
        </div>

        <form onSubmit={saveAdminUser} className="mt-4 grid gap-2 md:grid-cols-[1fr_1.2fr_220px_auto]">
          <input value={newUser.name} onChange={event => setNewUser(prev => ({ ...prev, name: event.target.value }))} placeholder="Name" className="rounded-2xl border border-zinc-200 bg-white px-4 py-3 text-sm outline-none focus:border-[#AEBB9E]" />
          <input value={newUser.email} onChange={event => setNewUser(prev => ({ ...prev, email: event.target.value }))} placeholder="Email" type="email" className="rounded-2xl border border-zinc-200 bg-white px-4 py-3 text-sm outline-none focus:border-[#AEBB9E]" />
          <select value={newUser.role} onChange={event => setNewUser(prev => ({ ...prev, role: event.target.value }))} className="rounded-2xl border border-zinc-200 bg-white px-4 py-3 text-sm font-semibold outline-none focus:border-[#AEBB9E]">
            {USER_PERMISSION_ROLES.map(label => <option key={label} value={USER_PERMISSION_ROLE_VALUES[label]}>{label}</option>)}
          </select>
          <button type="submit" disabled={adminUsersSaving} className="rounded-2xl bg-zinc-900 px-5 py-3 text-sm font-bold text-white shadow-sm hover:bg-zinc-800 disabled:cursor-not-allowed disabled:bg-zinc-400">Add User</button>
        </form>

        {adminUsersMessage ? <p className="mt-3 rounded-2xl border border-zinc-200 bg-cream/70 p-3 text-sm text-zinc-700">{adminUsersMessage}</p> : null}

        <div className="mt-4 overflow-hidden rounded-3xl border border-zinc-200">
          <div className="grid grid-cols-[1.2fr_1.4fr_220px_140px] gap-3 bg-zinc-50 px-4 py-3 text-xs font-bold uppercase tracking-wide text-zinc-500 max-md:hidden">
            <div>Name</div><div>Email</div><div>Role</div><div>Status</div>
          </div>
          <div className="divide-y divide-zinc-200 bg-white/80">
            {adminUsers.map(user => (
              <div key={user.id || user.email} className={`grid gap-3 px-4 py-3 md:grid-cols-[1.2fr_1.4fr_220px_140px] md:items-center ${user.active === false ? 'bg-zinc-50 text-zinc-400' : 'text-zinc-900'}`}>
                <div>
                  <div className="font-semibold">{user.name || user.email}</div>
                  <div className="text-xs text-zinc-500 md:hidden">{user.email}</div>
                </div>
                <div className="text-sm text-zinc-600 max-md:hidden">{user.email}</div>
                <select value={normalizePermissionRole(user.role || 'photographer')} disabled={adminUsersSaving} onChange={event => updateAdminUser(user.id, { role: event.target.value })} className="rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm font-semibold outline-none focus:border-[#AEBB9E] disabled:opacity-60">
                  {USER_PERMISSION_ROLES.map(label => <option key={label} value={USER_PERMISSION_ROLE_VALUES[label]}>{label}</option>)}
                </select>
                <button type="button" disabled={adminUsersSaving} onClick={() => updateAdminUser(user.id, { active: user.active === false })} className={`rounded-2xl border px-3 py-2 text-sm font-bold transition disabled:opacity-60 ${user.active === false ? 'border-emerald-200 bg-emerald-50 text-emerald-800 hover:bg-emerald-100' : 'border-rose-200 bg-rose-50 text-rose-700 hover:bg-rose-100'}`}>
                  {user.active === false ? 'Enable' : 'Disable'}
                </button>
              </div>
            ))}
            {!adminUsers.length ? (
              <div className="p-4 text-sm text-zinc-500">No users loaded yet. Run the auth sync migration SQL, then reload users.</div>
            ) : null}
          </div>
        </div>
      </div>

      <div className="rounded-[2rem] border border-zinc-200 bg-white/70 p-5 shadow-sm">
        <h3 className="font-semibold text-zinc-950">Current load status</h3>
        <div className="mt-3 space-y-2 text-sm leading-6 text-zinc-600">
          <p><strong>Events:</strong> {eventsMessage || 'No event load message yet.'}</p>
          <p><strong>Schools:</strong> {schoolsMessage || 'No school load message yet.'}</p>
          <p><strong>Safety note:</strong> Removed events are soft-deleted, meaning they are hidden from the main calendar but still visible in recovery/export data.</p>
        </div>
      </div>
    </div>
  );
}

export default function SchedulerApp() {
  const [activeTab, setActiveTab] = useState('Calendar View');
  const [calendarMode, setCalendarMode] = useState('Month');
  const [overviewMode, setOverviewMode] = useState('Month');
  const [month, setMonth] = useState(monthKey(todayKey()));
  const [selectedDate, setSelectedDate] = useState(todayKey());
  const [query, setQuery] = useState('');
  const [selected, setSelected] = useState(null);
  const [editingEvent, setEditingEvent] = useState(null);
  const [duplicatingEvent, setDuplicatingEvent] = useState(null);
  const [quickAssignment, setQuickAssignment] = useState(null);
  const [photographers, setPhotographers] = useState(uniqueCanonicalPhotographers(PHOTOGRAPHERS));
  const [assistants, setAssistants] = useState(ASSISTANTS);
  const [teamMembersMessage, setTeamMembersMessage] = useState('Loading team members from Supabase...');
  const [staffMembers, setStaffMembers] = useState(builtInStaffMembers());
  const [supabaseEvents, setSupabaseEvents] = useState([]);
  const [localManualEvents, setLocalManualEvents] = useState([]);
  const [eventsMessage, setEventsMessage] = useState('Loading events from Supabase...');
  const [addingEvent, setAddingEvent] = useState(false);
  const [addingEventDefaultDate, setAddingEventDefaultDate] = useState(todayKey());
  const [selectedSchoolName, setSelectedSchoolName] = useState(SCHOOLS[0]?.name || '');
  const [schools, setSchools] = useState(SCHOOLS.map(school => ({ ...school, originalName: school.name, active: true })));
  const [schoolsMessage, setSchoolsMessage] = useState('Loading schools from Supabase...');
  const [authReady, setAuthReady] = useState(false);
  const [authEmail, setAuthEmail] = useState(null);
  const [currentUserRole, setCurrentUserRole] = useState('assistant');

  useEffect(() => {
    setLocalManualEvents(loadLocalManualEvents());
  }, []);

  useEffect(() => {
    let cancelled = false;
    async function loadCurrentUserRole() {
      if (!authEmail) {
        if (!cancelled) setCurrentUserRole('assistant');
        return;
      }
      const fallbackRole = fallbackPermissionRole(authEmail);
      if (!hasSupabaseEnv()) {
        if (!cancelled) setCurrentUserRole(fallbackRole);
        return;
      }
      const supabase = createClient();
      if (!supabase) {
        if (!cancelled) setCurrentUserRole(fallbackRole);
        return;
      }
      const { data, error } = await supabase
        .from('app_users')
        .select('role, active')
        .eq('email', authEmail.toLowerCase())
        .maybeSingle();
      if (cancelled) return;
      if (error || !data || data.active === false) {
        setCurrentUserRole(fallbackRole);
        return;
      }
      setCurrentUserRole(normalizePermissionRole(data.role));
    }
    loadCurrentUserRole();
    return () => { cancelled = true; };
  }, [authEmail]);

  const importHistoricalEventsToSupabase = async () => {
    // Safety fix: do not auto-insert bundled/code-baseline events on app load.
    // iSmile Scheduler now uses Supabase/ICS/manual events as the source of truth.
    // The old automatic seed path could make pre-existing calendar dates look duplicated.
    return { importedCount: 0, skipped: true };
  };

  const loadManualEventsFromSupabase = async (supabase) => {
    if (!supabase) return [];

    const { data, error } = await supabase
      .from('events')
      .select('*')
      .or('source.eq.manual_app,source.eq.app,client_event_id.like.custom-%')
      .order('created_at', { ascending: false });

    if (error) {
      console.warn('Could not explicitly load manual events from Supabase', error);
      return [];
    }

    return data || [];
  };

  const loadEventsFromSupabase = async () => {
    if (!hasSupabaseEnv()) {
      setEventsMessage('Supabase is not connected yet. New events will not be shared.');
      return;
    }

    const supabase = createClient();
    if (!supabase) {
      setEventsMessage('Supabase client was not available. New events will not be shared.');
      return;
    }

    const { data: sessionData } = await supabase.auth.getSession();
    if (!sessionData?.session) {
      const localBackup = loadLocalManualEvents();
      setLocalManualEvents(localBackup);
      setEventsMessage(`Waiting for login before loading Supabase events${localBackup.length ? ` (${localBackup.length} browser backup event${localBackup.length === 1 ? '' : 's'} visible)` : ''}.`);
      return;
    }

    const { data, error } = await supabase
      .from('events')
      .select('*')
      .order('date', { ascending: true });

    if (error) {
      console.warn('Could not load events from Supabase', error);
      setEventsMessage(`Could not load Supabase events: ${error.message}. Run supabase/events_migration.sql and refresh.`);
      return;
    }

    // ICS VISIBILITY FIX: explicitly read Google Calendar imported rows too.
    // Some earlier builds only confirmed manual rows in the UI even when the
    // imported rows were present in Supabase. Keeping this as a separate read
    // makes the imported calendar rows impossible to lose during merging.
    const { data: googleImportedRows, error: googleImportedError } = await supabase
      .from('events')
      .select('*')
      .eq('source', 'google_calendar_import')
      .order('date', { ascending: true });

    if (googleImportedError) {
      console.warn('Could not explicitly load Google Calendar imported events', googleImportedError);
    }

    const combinedInitialRowsById = new Map();
    [...(data || []), ...(googleImportedRows || [])].forEach(row => {
      if (row?.id) combinedInitialRowsById.set(row.id, row);
    });
    const initialRows = Array.from(combinedInitialRowsById.values());

    const importResult = await importHistoricalEventsToSupabase(supabase, initialRows || []);

    if (importResult.error) {
      setSupabaseEvents((data || []).map(supabaseRowToEvent));
      setEventsMessage(`Supabase events loaded, but historical import failed: ${importResult.error.message}. Run supabase/events_historical_import_migration.sql and refresh.`);
      return;
    }

    const manualRows = await loadManualEventsFromSupabase(supabase);

    const rowsById = new Map();
    [
      ...(initialRows || []),
      ...(importResult.importedCount ? (importResult.data || []) : []),
      ...manualRows
    ].forEach(row => {
      if (row?.id) rowsById.set(row.id, row);
    });

    const finalRows = Array.from(rowsById.values()).sort((a, b) => String(a.date || '').localeCompare(String(b.date || '')));

    const loadedEvents = finalRows.map(row => ({ ...supabaseRowToEvent(row), localBackupOnly: false }));
    setSupabaseEvents(loadedEvents);

    const localBackup = loadLocalManualEvents();
    const localOnlyBackup = localBackup.filter(localEvent => !loadedEvents.some(loaded => loaded.id === localEvent.id || loaded.supabaseId === localEvent.supabaseId));
    setLocalManualEvents(localOnlyBackup);

    const manualCount = finalRows.filter(row => row.source === 'manual_app' || row.source === 'app' || row.client_event_id?.startsWith('custom-')).length;
    const googleImportCount = finalRows.filter(row => row.source === 'google_calendar_import').length;
    const localOnlyCount = localOnlyBackup.length;
    setEventsMessage(importResult.importedCount ? `Imported ${importResult.importedCount} historical events into Supabase.` : `Loaded ${finalRows.length} Supabase events, including ${manualCount} manual event${manualCount === 1 ? '' : 's'} and ${googleImportCount} Google Calendar import event${googleImportCount === 1 ? '' : 's'}${localOnlyCount ? `, plus ${localOnlyCount} browser-only backup` : ''}.`);
  };

  const loadSchoolsFromSupabase = async () => {
    if (!hasSupabaseEnv()) {
      setSchoolsMessage('Supabase is not connected yet. Using the built-in school list.');
      return;
    }

    const supabase = createClient();
    if (!supabase) {
      setSchoolsMessage('Supabase client was not available. Using the built-in school list.');
      return;
    }

    const { data, error } = await supabase
      .from('schools')
      .select('*')
      .order('name', { ascending: true });

    if (error) {
      console.warn('Could not load schools from Supabase', error);
      setSchoolsMessage(`Could not load schools from Supabase: ${error.message}. Using the built-in list for now.`);
      return;
    }

    if (!data?.length) {
      const seedRows = SCHOOLS.map(school => schoolToSupabaseRow({ ...school, originalName: school.name, active: true }));
      const { data: seeded, error: seedError } = await supabase
        .from('schools')
        .upsert(seedRows, { onConflict: 'original_name' })
        .select();

      if (seedError) {
        console.warn('Could not seed schools into Supabase', seedError);
        setSchoolsMessage(`Supabase school table is empty, but seeding failed: ${seedError.message}. Run supabase/schools_migration.sql and refresh.`);
        return;
      }

      const seededSchools = dedupeLoadedSchools(seeded || []);
      setSchools(seededSchools.length ? seededSchools : SCHOOLS.map(school => ({ ...school, originalName: school.name, active: true })));
      setSchoolsMessage('Seeded the starter School List into Supabase.');
      return;
    }

    const loadedSchools = dedupeLoadedSchools(data || []);
    setSchools(loadedSchools);
    setSchoolsMessage('School List is loading from Supabase.');
  };

  const loadTeamMembersFromSupabase = async () => {
    if (!hasSupabaseEnv()) {
      setTeamMembersMessage('Supabase is not connected yet. Using the built-in team member list.');
      return;
    }

    const supabase = createClient();
    if (!supabase) {
      setTeamMembersMessage('Supabase client was not available. Using the built-in team member list.');
      return;
    }

    const { data, error } = await supabase
      .from('staff_members')
      .select('*')
      .order('name', { ascending: true });

    if (error) {
      console.warn('Could not load team members from Supabase', error);
      setTeamMembersMessage(`Could not load team members from Supabase: ${error.message}. Using the built-in list for now.`);
      return;
    }

    if (!data?.length) {
      const seedRows = [
        ...PHOTOGRAPHERS.map(name => ({ name, role: 'photographer', title: null, email: null, phone: null, active: true })),
        ...ASSISTANTS.map(name => ({ name, role: 'assistant', title: null, email: null, phone: null, active: true }))
      ];

      const { error: seedError } = await supabase.from('staff_members').insert(seedRows);

      if (seedError) {
        console.warn('Could not seed team members into Supabase', seedError);
        setTeamMembersMessage(`Supabase team member table is empty, but seeding failed: ${seedError.message}. Check staff_members permissions.`);
        return;
      }

      setStaffMembers(seedRows.map((row, index) => ({ ...row, id: `seeded-${index}` })).sort((a, b) => a.name.localeCompare(b.name)));
      setPhotographers(uniqueCanonicalPhotographers(PHOTOGRAPHERS).sort((a, b) => a.localeCompare(b)));
      setAssistants([...ASSISTANTS].sort((a, b) => a.localeCompare(b)));
      setTeamMembersMessage('Seeded the starter photographers and assistants into Supabase.');
      return;
    }

    const loadedStaffMembers = (data || []).map(member => ({
      id: member.id,
      name: member.name,
      title: member.title || '',
      email: member.email || '',
      phone: member.phone || '',
      role: member.role,
      active: member.active !== false,
      createdAt: member.created_at,
      updatedAt: member.updated_at
    })).sort((a, b) => String(a.name || '').localeCompare(String(b.name || '')));

    const activePhotographers = uniqueCanonicalPhotographers(loadedStaffMembers
      .filter(member => member.active && member.role === 'photographer')
      .map(member => member.name))
      .sort((a, b) => a.localeCompare(b));

    const activeAssistants = loadedStaffMembers
      .filter(member => member.active && member.role === 'assistant')
      .map(member => member.name)
      .sort((a, b) => a.localeCompare(b));

    setStaffMembers(loadedStaffMembers);
    setPhotographers(activePhotographers);
    setAssistants(activeAssistants);
    setTeamMembersMessage(`Loaded ${loadedStaffMembers.length} staff member${loadedStaffMembers.length === 1 ? '' : 's'} from Supabase.`);
  };

  useEffect(() => {
    const localBackup = loadLocalManualEvents();
    setLocalManualEvents(localBackup);

    if (!hasSupabaseEnv()) {
      setAuthReady(true);
      loadTeamMembersFromSupabase();
      loadSchoolsFromSupabase();
      loadEventsFromSupabase();
      return;
    }

    const supabase = createClient();
    if (!supabase) {
      setAuthReady(true);
      loadTeamMembersFromSupabase();
      loadSchoolsFromSupabase();
      loadEventsFromSupabase();
      return;
    }

    let cancelled = false;

    const loadAfterAuth = async (label = 'initial') => {
      const { data } = await supabase.auth.getSession();
      if (cancelled) return;

      setAuthReady(true);
      setAuthEmail(data.session?.user?.email || null);

      if (!data.session) {
        setEventsMessage(`Please log in to load shared Supabase events${localBackup.length ? ` (${localBackup.length} browser backup event${localBackup.length === 1 ? '' : 's'} visible)` : ''}.`);
        return;
      }

      await Promise.all([
        loadTeamMembersFromSupabase(),
        loadSchoolsFromSupabase(),
        loadEventsFromSupabase()
      ]);

      // One short follow-up read catches Supabase session hydration/readback timing races.
      window.setTimeout(() => {
        loadEventsFromSupabase();
      }, 750);
    };

    loadAfterAuth();

    const { data: listener } = supabase.auth.onAuthStateChange((event, session) => {
      if (cancelled) return;
      setAuthReady(true);
      setAuthEmail(session?.user?.email || null);
      if (session && ['SIGNED_IN', 'TOKEN_REFRESHED', 'INITIAL_SESSION'].includes(event)) {
        loadTeamMembersFromSupabase();
        loadSchoolsFromSupabase();
        loadEventsFromSupabase();
      }
    });

    return () => {
      cancelled = true;
      listener?.subscription?.unsubscribe();
    };
  }, []);

  const isValidEvent = (event) => event && typeof event.date === 'string' && event.date.length >= 10 && typeof event.title === 'string' && event.active !== false && event.source !== 'imported_code_baseline';
  const allEvents = useMemo(() => {
    if (hasSupabaseEnv() && authReady && !authEmail) return [];
    const baseEvents = supabaseEvents.length ? supabaseEvents.filter(event => event.active !== false) : EVENTS;
    return mergeEventsById(baseEvents, localManualEvents).filter(isValidEvent);
  }, [supabaseEvents, localManualEvents, authReady, authEmail]);
  const removedEvents = useMemo(() => {
    if (hasSupabaseEnv() && authReady && !authEmail) return [];
    return supabaseEvents.filter(event => event.active === false);
  }, [supabaseEvents, authReady, authEmail]);
  const handleScheduleEvent = async (event) => {
    if (!canEditScheduler) {
      setEventsMessage('Your account has view-only access. Ask an Admin or Photographer to make scheduling changes.');
      return false;
    }
    const previousEvent = [...(supabaseEvents || []), ...(localManualEvents || [])].find(item =>
      item.id === event.id ||
      item.supabaseId === event.supabaseId ||
      (event.supabaseId && item.supabaseId === event.supabaseId)
    );
    const notesChanged = String(previousEvent?.notes || '') !== String(event?.notes || '');
    const newNote = String(event?.newNote || '').trim();
    const isNewEvent = !event?.supabaseId && !previousEvent?.supabaseId;
    const existingHistory = event.history || previousEvent?.history || '';
    const isDuplicatedNewEvent = Boolean(event?.duplicatedFromEventId) && isNewEvent;
    const cleanExistingHistory = isDuplicatedNewEvent ? stripInternalEventMeta(existingHistory) : existingHistory;
    const historyWithCreator = isNewEvent && (isDuplicatedNewEvent || !/\[added_by_meta/.test(String(cleanExistingHistory || '')))
      ? [stripInternalEventMeta(cleanExistingHistory), makeEventAddedHistoryLine(authEmail)].filter(Boolean).join('\n')
      : cleanExistingHistory;
    const historyWithEdit = !isNewEvent
      ? [historyWithCreator, makeEventEditedHistoryLine(authEmail)].filter(Boolean).join('\n')
      : historyWithCreator;
    const eventWithId = {
      ...event,
      id: event.id || `custom-${Date.now()}`,
      notes: event.notes ?? previousEvent?.notes ?? '',
      history: historyWithEdit,
      noteAttribution: newNote
        ? appendNoteHistory(event.noteAttribution || previousEvent?.noteAttribution, authEmail, newNote)
        : (event.noteAttribution || (notesChanged ? makeNoteAttribution(authEmail) : (previousEvent?.noteAttribution || null)))
    };

    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setEventsMessage('Supabase is not connected, so this event could not be saved.');
      return false;
    }

    const row = eventToSupabaseRow({
      ...eventWithId,
      source: eventWithId.source || 'manual_app'
    });

    try {
      const query = supabase.from('events');

      const result = eventWithId.supabaseId
        ? await query.update(row).eq('id', eventWithId.supabaseId).select().single()
        : await query.insert(row).select().single();

      const { data, error } = result;

      if (error) {
        console.error('Event save failed', error, row);
        setEventsMessage(`Could not save event to Supabase: ${error.message}.`);
        return false;
      }

      const savedEvent = supabaseRowToEvent(data);

      const readbackResult = await supabase
        .from('events')
        .select('*')
        .eq('id', data.id)
        .single();

      const readbackConfirmed = !readbackResult.error && Boolean(readbackResult.data);
      const confirmedEvent = readbackConfirmed ? { ...supabaseRowToEvent(readbackResult.data), localBackupOnly: false } : { ...savedEvent, localBackupOnly: true };

      if (readbackConfirmed) {
        // Keep a non-warning browser backup too. Supabase is still the source of truth,
        // but this protects the UI if a later refresh happens before auth/session readback finishes.
        saveLocalManualEvent({ ...confirmedEvent, localBackupOnly: false });
      } else {
        saveLocalManualEvent(confirmedEvent);
        console.warn('Event save returned data, but readback verification failed', readbackResult.error);
      }

      setLocalManualEvents(loadLocalManualEvents());
      setSupabaseEvents(prev => {
        const without = (prev || []).filter(item => item.id !== confirmedEvent.id && item.supabaseId !== confirmedEvent.supabaseId);
        return [...without, confirmedEvent].sort((a, b) => a.date.localeCompare(b.date));
      });

      setSelected(null);
      setEditingEvent(null);
      setEventsMessage(
        readbackConfirmed
          ? (eventWithId.supabaseId ? 'Event changes saved and verified in Supabase.' : `Event saved and verified in Supabase for ${formatDate(confirmedEvent.date)}.`)
          : `Event appeared to save, but Supabase readback could not verify it: ${readbackResult.error?.message || 'unknown readback error'}. It is shown with a warning until verified.`
      );
      if (!eventWithId.supabaseId) {
        setMonth(monthKey(confirmedEvent.date));
        setSelectedDate(confirmedEvent.date);
        setActiveTab('Calendar View');
      } else if (activeTab === 'Calendar View') {
        setMonth(monthKey(confirmedEvent.date));
        setSelectedDate(confirmedEvent.date);
      }
      return confirmedEvent;
    } catch (unexpectedError) {
      console.error('Unexpected event save failure', unexpectedError, row);
      setEventsMessage(`Could not save event to Supabase: ${unexpectedError?.message || 'Unexpected error'}.`);
      return false;
    }
  };

  const handleRemoveEvent = async (event) => {
    if (!event?.supabaseId) {
      setEventsMessage('Imported historical events are read-only right now, so they cannot be removed yet.');
      return;
    }

    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setEventsMessage('Supabase is not connected, so this event could not be removed.');
      return;
    }

    const { data, error } = await supabase
      .from('events')
      .update({ active: false, updated_at: new Date().toISOString() })
      .eq('id', event.supabaseId)
      .select()
      .single();

    if (error) {
      setEventsMessage(`Could not remove event: ${error.message}`);
      return;
    }

    const removedEvent = supabaseRowToEvent(data);
    setSupabaseEvents(prev => (prev || []).map(item => item.supabaseId === removedEvent.supabaseId ? removedEvent : item));
    setSelected(null);
    setEventsMessage('Event moved to Removed Events.');
  };

  const handleRestoreEvent = async (event) => {
    if (!event?.supabaseId) return;

    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setEventsMessage('Supabase is not connected, so this event could not be restored.');
      return;
    }

    const { data, error } = await supabase
      .from('events')
      .update({ active: true, updated_at: new Date().toISOString() })
      .eq('id', event.supabaseId)
      .select()
      .single();

    if (error) {
      setEventsMessage(`Could not restore event: ${error.message}`);
      return;
    }

    const restoredEvent = supabaseRowToEvent(data);
    setSupabaseEvents(prev => (prev || []).map(item => item.supabaseId === restoredEvent.supabaseId ? restoredEvent : item));
    setEventsMessage('Event restored to the calendar.');
    setMonth(monthKey(restoredEvent.date));
    setSelectedDate(restoredEvent.date);
    setActiveTab('Calendar View');
  };

  const handlePermanentDeleteEvent = async (event) => {
    if (!event?.supabaseId || !isAdminUser) return;
    const ok = window.confirm(`Permanently delete this removed event?\n\n${event.title}\n\nThis cannot be undone. Only use this for true duplicates or junk records.`);
    if (!ok) return;

    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setEventsMessage('Supabase is not connected, so this event could not be permanently deleted.');
      return;
    }

    const { error } = await supabase
      .from('events')
      .delete()
      .eq('id', event.supabaseId)
      .eq('active', false);

    if (error) {
      setEventsMessage(`Could not permanently delete event: ${error.message}`);
      return;
    }

    setSupabaseEvents(prev => (prev || []).filter(item => item.supabaseId !== event.supabaseId));
    setEventsMessage('Removed event permanently deleted.');
  };

  const handleQuickAssignmentSave = async (event) => {
    const saved = await handleScheduleEvent(event);
    if (saved) {
      setQuickAssignment(null);
      setActiveTab('Overview');
    }
  };

  const openAddEvent = (date = selectedDate || todayKey()) => {
    if (!canEditScheduler) return;
    const safeDate = typeof date === 'string' && date.length >= 10 ? date : selectedDate || todayKey();
    setAddingEventDefaultDate(safeDate);
    setSelectedDate(safeDate);
    setAddingEvent(true);
  };

  const openDuplicateEvent = (event) => {
    if (!canEditScheduler) return;
    if (!event) return;
    const duplicate = {
      ...event,
      id: `custom-${Date.now()}`,
      supabaseId: undefined,
      source: 'manual_app',
      status: 'Needs Photographers Assigned',
      photographers: [],
      assistants: [],
      createdAt: null,
      updatedAt: null,
      duplicatedFromEventId: event.supabaseId || event.id || null,
      history: [stripInternalEventMeta(event.history || ''), `Duplicated from ${event.title || 'event'} on ${formatDate(todayKey())}.`].filter(Boolean).join('\n\n')
    };
    setDuplicatingEvent(duplicate);
    setSelected(null);
  };

  const queryFilteredEvents = useMemo(() => {
    const q = query.trim().toLowerCase();
    if (!q) return allEvents;
    return allEvents.filter(event => event && [event.title, event.canonicalSchool, event.type, event.status, event.notes, event.history, ...(event.photographers || []), ...(event.assistants || [])].filter(Boolean).join('\n').toLowerCase().includes(q));
  }, [query, allEvents]);

  const normalizedCurrentUserRole = normalizePermissionRole(currentUserRole);
  const isAdminUser = normalizedCurrentUserRole === 'admin';
  const isAssistantUser = normalizedCurrentUserRole === 'assistant';
  const canEditScheduler = isAdminUser || normalizedCurrentUserRole === 'photographer';
  const visibleTabs = useMemo(() => tabs.filter(tab => {
    if (tab === 'Admin') return isAdminUser;
    if (tab === 'Team Members') return Boolean(authEmail) && !isAssistantUser;
    if (tab === 'Schedule Live!') return !isAssistantUser;
    return true;
  }), [authEmail, isAdminUser, isAssistantUser]);

  useEffect(() => {
    if ((!isAdminUser && activeTab === 'Admin') || (!authEmail && activeTab === 'Team Members') || (isAssistantUser && ['Team Members', 'Schedule Live!'].includes(activeTab))) setActiveTab('Calendar View');
  }, [authEmail, isAdminUser, isAssistantUser, activeTab]);

  const overviewPeriodEvents = useMemo(() => {
    if (overviewMode === 'Month') return queryFilteredEvents.filter(event => event && monthKey(event.date) <= month && monthKey(event.endDate || event.date) >= month);
    if (overviewMode === 'Week') {
      const { start, end } = weekBounds(selectedDate);
      return queryFilteredEvents.filter(event => event && event.date >= start && event.date <= end);
    }
    return queryFilteredEvents.filter(event => isDateInEventRange(event, selectedDate));
  }, [queryFilteredEvents, overviewMode, month, selectedDate]);

  return (
    <main className="min-h-screen font-sans text-zinc-900">
      <style jsx global>{`
        @keyframes scheduleLiveLaunchShine {
          0% { box-shadow: 0 0 0 rgba(248,113,113,0.0), 0 12px 24px rgba(248,113,113,0.22); transform: translateY(0); }
          50% { box-shadow: 0 0 24px rgba(248,113,113,0.38), 0 16px 34px rgba(248,113,113,0.32); transform: translateY(-1px); }
          100% { box-shadow: 0 0 0 rgba(248,113,113,0.0), 0 12px 24px rgba(248,113,113,0.22); transform: translateY(0); }
        }
        .schedule-live-launch-button { animation: scheduleLiveLaunchShine 2.6s ease-in-out infinite; }
      `}</style>
      <Header query={query} setQuery={setQuery} activeTab={activeTab} setActiveTab={setActiveTab} visibleTabs={visibleTabs} />
      <div className={`${activeTab === 'Schedule Live!' ? 'mx-auto w-full max-w-[1800px]' : 'mx-auto max-w-7xl'} space-y-6 ${['Calendar View','Mobile View'].includes(activeTab) ? 'px-0 sm:px-6' : activeTab === 'Schedule Live!' ? 'px-1 sm:px-6' : 'px-3 sm:px-6'} pb-28 pt-4 sm:pb-6 sm:pt-6`}>
        <LoginRequiredNotice />
        {activeTab === 'Overview' ? <OperationalSummary events={allEvents} onClickEvent={setSelected} /> : null}
        {activeTab === 'Calendar View' && localManualEvents.some(event => event.localBackupOnly) ? <div className="rounded-3xl border border-amber-300 bg-amber-50 p-3 text-sm font-semibold text-amber-950 shadow-sm">Some manual events are being shown from this browser's safety backup because Supabase readback has not verified them yet. Run the verification SQL below if this appears unexpectedly.</div> : null}
        <GlobalSearchResults query={query} schools={schools} events={allEvents} onSelectEvent={setSelected} onSelectSchool={(schoolName) => { setSelectedSchoolName(schoolName); setActiveTab('School List'); }} />
        <section className={activeTab === 'Schedule Live!' ? 'rounded-none border-0 bg-transparent p-0 shadow-none' : `rounded-[2rem] border border-zinc-200/80 bg-white/35 ${['Calendar View','Mobile View'].includes(activeTab) ? 'p-1.5 sm:p-4' : 'p-3 sm:p-4'} shadow-soft`}>
          {activeTab === 'Overview' && <>
            {canEditScheduler ? (
              <div className="mb-4 rounded-[1.75rem] border border-red-200 bg-gradient-to-r from-red-100 via-white to-white p-4 shadow-soft">
                <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
                  <div>
                    <div className="text-xs font-black uppercase tracking-[0.2em] text-red-600"><span className="animate-pulse">🔴</span> Schedule Live!</div>
                    <div className="mt-1 text-lg font-black text-zinc-950">Open the live scheduling draft room</div>
                    <div className="mt-1 text-sm font-semibold text-zinc-600">Assign photographers week by week with live rollout counts, host control, Shelve, and commentary.</div>
                  </div>
                  <button type="button" onClick={() => setActiveTab('Schedule Live!')} className="schedule-live-launch-button inline-flex items-center justify-center gap-2 rounded-2xl border border-red-200 bg-white px-7 py-3 text-sm font-black uppercase tracking-wide text-zinc-950 shadow-lg shadow-red-200/60 transition hover:-translate-y-0.5 hover:scale-[1.02] hover:bg-red-50 active:translate-y-0">✨ Launch Schedule Live!</button>
                </div>
              </div>
            ) : null}
            <OverviewControls viewMode={overviewMode} setViewMode={setOverviewMode} month={month} setMonth={setMonth} selectedDate={selectedDate} setSelectedDate={setSelectedDate} />
            <PlanningBoard events={overviewPeriodEvents} onClick={setSelected} onAddEvent={() => openAddEvent(selectedDate)} onQuickAssign={(event, mode) => setQuickAssignment({ event, mode })} canEdit={canEditScheduler} />
            <div className="pt-6">
              <RecentlyAddedEventsModule events={allEvents} onClick={setSelected} />
            </div>
            <div className="pt-3">
              <RecentlyModifiedEventsModule events={allEvents} onClick={setSelected} />
            </div>
            <div className="pt-3">
              <RemovedEventsModule events={removedEvents} onRestore={handleRestoreEvent} onPermanentDelete={handlePermanentDeleteEvent} canRestore={isAdminUser} canPermanentDelete={isAdminUser} />
            </div>
          </>}
          {activeTab === 'Schedule Live!' && !isAssistantUser && <ScheduleLiveView events={allEvents} photographers={photographers} assistants={assistants} onClickEvent={setSelected} onSchedule={handleScheduleEvent} onAddEvent={openAddEvent} authEmail={authEmail} isAdminUser={isAdminUser} canEdit={canEditScheduler} reloadEvents={loadEventsFromSupabase} />}
          {activeTab === 'Calendar View' && <>
            <CalendarView viewMode={calendarMode} setViewMode={setCalendarMode} events={queryFilteredEvents} month={month} setMonth={setMonth} selectedDate={selectedDate} setSelectedDate={setSelectedDate} onClick={setSelected} onAddEvent={openAddEvent} canEdit={canEditScheduler} />
            <div className="mt-4 flex flex-col gap-2 rounded-3xl border border-[#AEBB9E] bg-[#DDE8D2]/40 p-3 text-sm text-zinc-700 shadow-sm sm:flex-row sm:items-center sm:justify-between">
              <div>{eventsMessage || 'Refresh the shared calendar data from Supabase when needed.'}</div>
              <button type="button" onClick={loadEventsFromSupabase} className="rounded-2xl border border-[#AEBB9E] bg-white/80 px-3 py-2 text-xs font-semibold text-zinc-900 shadow-sm transition hover:bg-white">Reload Supabase Events</button>
            </div>
          </>}
          {activeTab === 'Mobile View' && <MobileView events={queryFilteredEvents} photographers={photographers} assistants={assistants} selectedDate={selectedDate} setSelectedDate={setSelectedDate} onClick={setSelected} />}
          {activeTab === 'Carrie View' && <CarrieView query={query} onClickEvent={setSelected} photographers={photographers} assistants={assistants} events={allEvents} onSchedule={handleScheduleEvent} schoolsList={schools} setSchools={setSchools} onSchoolAdded={(schoolName) => { setSelectedSchoolName(schoolName); setActiveTab('School List'); }} canEdit={canEditScheduler} />}
          {activeTab === 'School List' && <SchoolPages query={query} onClickEvent={setSelected} events={allEvents} selectedName={selectedSchoolName} setSelectedName={setSelectedSchoolName} schools={schools} setSchools={setSchools} reloadSchools={loadSchoolsFromSupabase} schoolsMessage={schoolsMessage} authEmail={authEmail} canEditSchools={canEditScheduler} canMergeSchools={isAdminUser} />}
          {activeTab === 'Team Members' && authEmail && !isAssistantUser && <TeamMembers photographers={photographers} assistants={assistants} staffMembers={staffMembers} setPhotographers={setPhotographers} setAssistants={setAssistants} reloadTeamMembers={loadTeamMembersFromSupabase} teamMembersMessage={teamMembersMessage} />}
          {activeTab === 'Admin' && isAdminUser && <AdminPage events={allEvents} schools={schools} photographers={photographers} assistants={assistants} staffMembers={staffMembers} eventsMessage={eventsMessage} schoolsMessage={schoolsMessage} reloadEvents={loadEventsFromSupabase} reloadSchools={loadSchoolsFromSupabase} reloadTeamMembers={loadTeamMembersFromSupabase} authEmail={authEmail} />}
        </section>
        <section className="hidden gap-4 md:grid md:grid-cols-3">
          <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4"><h3 className="font-semibold">Photographers</h3><p className="mt-2 text-sm text-zinc-600">{photographers.join(', ')}</p></div>
          <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4"><h3 className="font-semibold">Assistants</h3><p className="mt-2 text-sm text-zinc-600">{assistants.join(', ')}</p></div>
          <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4"><h3 className="font-semibold">Rule</h3><p className="mt-2 text-sm text-zinc-600">Humans make scheduling decisions. This app supports reference, visibility, and notes — not automation.</p></div>
        </section>
      </div>
      <MobileBottomNav activeTab={activeTab} setActiveTab={setActiveTab} canAdmin={isAdminUser} />
      {canEditScheduler && addingEvent && <AddEventModal photographers={photographers} assistants={assistants} events={allEvents} schools={schools} onClose={() => setAddingEvent(false)} onSave={handleScheduleEvent} defaultDate={addingEventDefaultDate} sourceLabel={activeTab} authEmail={authEmail} canEditNotes={isAdminUser} />}
      {canEditScheduler && quickAssignment && <QuickAssignmentModal event={quickAssignment.event} mode={quickAssignment.mode} photographers={photographers} assistants={assistants} onClose={() => setQuickAssignment(null)} onSave={handleQuickAssignmentSave} />}
      <Drawer event={selected} onClose={() => setSelected(null)} onEditEvent={(event) => { if (!canEditScheduler) return; setEditingEvent(event); setSelected(null); }} onDuplicateEvent={openDuplicateEvent} onRemoveEvent={handleRemoveEvent} canRemove={isAdminUser} canEdit={canEditScheduler} canEditNotes={isAdminUser} onViewSchool={(schoolName) => { const matchedSchool = resolveSchoolListMatch(schoolName, schools); setSelectedSchoolName(matchedSchool?.name || schoolName); setActiveTab('School List'); setSelected(null); }} />
      {canEditScheduler && editingEvent && <AddEventModal photographers={photographers} assistants={assistants} events={allEvents} schools={schools} onClose={() => setEditingEvent(null)} onSave={handleScheduleEvent} defaultDate={editingEvent.date || selectedDate} sourceLabel="Edit Event" initialEvent={editingEvent} authEmail={authEmail} canEditNotes={isAdminUser} />}
      {canEditScheduler && duplicatingEvent && <AddEventModal photographers={photographers} assistants={assistants} events={allEvents} schools={schools} onClose={() => setDuplicatingEvent(null)} onSave={async (event) => { const saved = await handleScheduleEvent(event); if (saved) setDuplicatingEvent(null); return saved; }} defaultDate={duplicatingEvent.date || selectedDate} sourceLabel="Duplicate Event" initialEvent={duplicatingEvent} authEmail={authEmail} canEditNotes={isAdminUser} />}
    </main>
  );
}
