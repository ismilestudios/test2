'use client';

import { useEffect, useMemo, useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { CalendarDays, Search, Users, ClipboardList, Clock, X, History, UserRoundCheck, CloudRain, Pencil, ChevronLeft, ChevronRight, Plus, Trash2, Image as ImageIcon, BarChart3, Wand2 } from 'lucide-react';
import { EVENTS, STATUSES, TYPE_COLORS, PHOTOGRAPHERS, ASSISTANTS, ADMINS, SCHOOLS } from '../lib/scheduleData';
import AuthStatus from './AuthStatus';
import { createClient, hasSupabaseEnv } from '../lib/supabase/client';

const tabs = ['Overview', 'Calendar View', 'Mobile View', 'Carrie View', 'School List', 'Team Members', 'Admin'];

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


function Pill({ children, className = '' }) {
  return <span className={`inline-flex items-center rounded-full border px-2.5 py-1 text-xs font-medium ${className}`}>{children}</span>;
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
    ['Special Event', TYPE_COLORS['Special Event']],
    ['Rain Date', TYPE_COLORS['Rain Date']],
    ['Seniors', TYPE_COLORS.Seniors],
    ['Call or Meeting', TYPE_COLORS['Call or Meeting']],
    ['Edit Day', TYPE_COLORS['Edit Day']]
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
  return event.photographers?.length ? event.photographers.join(', ') : 'Needs Photographers Assigned';
}

function isNeedsPhotographerAssignment(event) {
  const status = String(event?.status || '').trim().toLowerCase();
  const photographers = Array.isArray(event?.photographers) ? event.photographers.filter(Boolean) : [];
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

  return photographers.length === 0 || placeholderStatuses.has(status);
}

function displayAssistants(event) {
  if (event?.noAssistant) return 'No Assistant';
  return event?.assistants?.length ? event.assistants.join(', ') : '—';
}

function normalizeSchoolLookupKey(value = '') {
  return String(value)
    .toLowerCase()
    .replace(/&/g, ' and ')
    .replace(/[^a-z0-9]+/g, ' ')
    .trim();
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

function Header({ query, setQuery, activeTab, setActiveTab }) {
  return (
    <header className="sticky top-0 z-20 border-b border-zinc-200/70 bg-cream/90 backdrop-blur-xl">
      <div className="mx-auto max-w-7xl px-4 py-4 sm:px-6">
        <div className="flex flex-col gap-4 lg:flex-row lg:items-center lg:justify-between">
          <div>
            <h1 className="text-3xl font-semibold tracking-tight text-zinc-950">iSmile Scheduler</h1>
            <p className="mt-1 max-w-2xl text-sm text-zinc-600">A calm internal workspace for school picture days, staffing, notes, and historical reference.</p>
          </div>
          <div className="flex w-full flex-col gap-3 lg:w-auto lg:min-w-[560px]">
            <label className="relative block">
              <Search className="absolute left-3 top-1/2 -translate-y-1/2 text-zinc-400" size={18} />
              <input
                value={query}
                onChange={(e) => setQuery(e.target.value)}
                placeholder="Search schools, photographers, assistants, notes..."
                className="w-full rounded-2xl border border-zinc-200 bg-white/80 py-3 pl-10 pr-4 text-sm outline-none ring-sage/30 transition focus:ring-4"
              />
            </label>
            <div className="flex justify-end"><AuthStatus /></div>
            <nav className="hidden grid-cols-2 gap-2 sm:grid sm:grid-cols-7">
              {tabs.map((tab) => (
                <button key={tab} onClick={() => setActiveTab(tab)} className={`rounded-2xl px-3 py-2 text-sm font-medium transition ${activeTab === tab ? 'bg-zinc-900 text-white shadow-soft' : 'bg-white/75 text-zinc-700 hover:bg-white'}`}>
                  {tab}
                </button>
              ))}
            </nav>
          </div>
        </div>
      </div>
    </header>
  );
}


function MobileBottomNav({ activeTab, setActiveTab }) {
  const mobileTabs = [
    { label: 'Today', tab: 'Overview' },
    { label: 'Mobile', tab: 'Mobile View' },
    { label: 'Calendar', tab: 'Calendar View' },
    { label: 'Schools', tab: 'School List' },
    { label: 'Admin', tab: 'Admin' }
  ];
  return (
    <nav className="fixed inset-x-3 bottom-3 z-40 rounded-[1.5rem] border border-zinc-200 bg-white/95 p-1 shadow-2xl backdrop-blur sm:hidden">
      <div className="grid grid-cols-5 gap-1">
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

function TodayTomorrowList({ title, date, events }) {
  const dayEvents = events
    .filter(event => isDateInEventRange(event, date) && event.type !== 'Call or Meeting' && event.type !== 'Edit Day')
    .sort((a, b) => String(a.time || '').localeCompare(String(b.time || '')));

  return (
    <div className="rounded-3xl border border-zinc-200/80 bg-white/75 p-4 shadow-sm">
      <div className="flex items-center justify-between gap-3">
        <div>
          <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">{title}</div>
          <div className="mt-1 text-sm font-medium text-zinc-900">{formatDate(date)}</div>
        </div>
        <Pill className="border-zinc-200 bg-cream text-zinc-700">{dayEvents.length}</Pill>
      </div>
      <div className="mt-3 space-y-2">
        {dayEvents.length ? dayEvents.slice(0, 4).map(event => (
          <div key={event.id} className="rounded-2xl border border-zinc-100 bg-white/80 p-3">
            <div className="truncate text-sm font-semibold text-zinc-900">{event.title}</div>
            <div className="mt-1 flex flex-wrap items-center gap-1.5 text-xs text-zinc-500">
              <span>{event.time || 'TBD'}</span>
              {event.photographers?.length ? <span>Assigned: {event.photographers.join(', ')}</span> : <span>Needs photographers assigned</span>}
            </div>
          </div>
        )) : <div className="rounded-2xl border border-dashed border-zinc-200 bg-cream/70 p-3 text-sm text-zinc-400">Nothing currently scheduled.</div>}
        {dayEvents.length > 4 ? <div className="text-xs font-medium text-zinc-500">+ {dayEvents.length - 4} more</div> : null}
      </div>
    </div>
  );
}

function CurrentWeeklyRolloutCard({ events }) {
  const today = todayKey();
  const { start, end } = weekBounds(today);
  const weekEvents = events.filter(event => event && event.date >= start && event.date <= end);
  const weeklyRollouts = weekEvents.reduce((total, event) => total + getRolloutCount(event), 0);
  const capacity = getCapacityTone(weeklyRollouts);
  const pct = Math.min(100, Math.round((weeklyRollouts / 22) * 100));
  const photographerSummary = Array.from(
    weekEvents.reduce((counts, event) => {
      if (!isRolloutEvent(event)) return counts;
      uniqueCanonicalPhotographers(event.photographers || []).forEach(name => {
        counts.set(name, (counts.get(name) || 0) + 1);
      });
      return counts;
    }, new Map())
  ).sort((a, b) => b[1] - a[1] || a[0].localeCompare(b[0]));

  return (
    <div tabIndex={0} className={`group relative rounded-3xl border p-4 shadow-sm outline-none ${capacity.className}`}>
      <div className="flex items-start justify-between gap-3">
        <div>
          <div className="text-xs font-semibold uppercase tracking-wide opacity-75">Weekly Rollout</div>
          <div className="mt-1 text-sm font-medium">Current week: {shortDate(start)} – {shortDate(end)}</div>
        </div>
        <Pill className={`border-current bg-white/60 ${capacity.className}`}>{capacity.label}</Pill>
      </div>
      <div className="mt-5 text-3xl font-semibold">{weeklyRollouts} / 22</div>
      <div className="mt-1 text-xs font-semibold uppercase tracking-wide opacity-75">Photographer rollouts</div>
      <div className="mt-3 h-2 overflow-hidden rounded-full bg-white/70">
        <div className={`h-full rounded-full ${capacity.barClassName}`} style={{ width: `${pct}%` }} />
      </div>

      <div className="pointer-events-none absolute right-3 top-full z-30 mt-3 w-72 translate-y-1 rounded-3xl border border-zinc-200 bg-white p-4 text-zinc-900 opacity-0 shadow-2xl transition group-hover:pointer-events-auto group-hover:translate-y-0 group-hover:opacity-100 group-focus-within:pointer-events-auto group-focus-within:translate-y-0 group-focus-within:opacity-100">
        <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">This week's photographer load</div>
        <div className="mt-1 text-sm font-semibold text-zinc-900">{shortDate(start)} – {shortDate(end)}</div>
        <div className="mt-3 space-y-2">
          {photographerSummary.length ? photographerSummary.map(([name, count]) => (
            <div key={name} className="flex items-center justify-between gap-3 rounded-2xl border border-zinc-100 bg-cream/70 px-3 py-2 text-sm">
              <span className="truncate font-medium">{name}</span>
              <span className="shrink-0 text-xs font-semibold text-zinc-500">{count} school{count === 1 ? '' : 's'}</span>
            </div>
          )) : (
            <div className="rounded-2xl border border-dashed border-zinc-200 bg-cream/70 p-3 text-sm text-zinc-500">No photographers assigned this week yet.</div>
          )}
        </div>
      </div>
    </div>
  );
}

function OperationalSummary({ events }) {
  const today = todayKey();
  return (
    <section className="grid gap-3 lg:grid-cols-3">
      <TodayTomorrowList title="What We're Photographing Today" date={today} events={events} />
      <TodayTomorrowList title="What We're Photographing Tomorrow" date={addDays(today, 1)} events={events} />
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

function PlanningBoard({ events, onClick, onAddEvent, onQuickAssign }) {
  const overviewColumns = [
    {
      key: 'needs-photographers',
      title: 'Need Photographer(s) Assigned',
      filter: (event) => isNeedsPhotographerAssignment(event)
    },
    {
      key: 'needs-assistant',
      title: 'Need Assistant(s) Assigned',
      filter: (event) => event.status === 'Scheduled' && !event.noAssistant && (!event.assistants || event.assistants.length === 0)
    },
    {
      key: 'rain-watch',
      title: 'Rain Watch',
      filter: (event) => event.status === 'Rain Watch'
    }
  ];

  return (
    <div className="space-y-4">
      <div className="flex justify-end">
        <button type="button" onClick={onAddEvent} className="inline-flex items-center gap-2 rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5"><Plus size={16} /> Add Event</button>
      </div>
      <div className="grid gap-4 lg:grid-cols-3">
      {overviewColumns.map(column => {
        const columnEvents = events.filter(column.filter);
        return (
          <div key={column.key} className="rounded-3xl border border-zinc-200/80 bg-white/45 p-3">
            <div className="mb-3 flex items-center justify-between">
              <h2 className="text-sm font-semibold text-zinc-800">{column.title}</h2>
              <Pill className="border-zinc-200 bg-white text-zinc-600">{columnEvents.length}</Pill>
            </div>
            <div className="space-y-3">{columnEvents.map(event => {
              const isQuickColumn = ['needs-photographers', 'needs-assistant'].includes(column.key);
              return <EventCard key={event.id} event={event} onClick={onClick} onAction={isQuickColumn ? (clickedEvent) => onQuickAssign?.(clickedEvent, column.key) : null} />;
            })}</div>
          </div>
        );
      })}
      </div>
    </div>
  );
}

function MonthView({ events, month, onClick, selectedDate, setSelectedDate, setViewMode, onAddEvent }) {
  const totalDays = daysInMonth(month);
  const offset = firstDayOffset(month);
  return <div className="overflow-x-auto rounded-3xl border border-zinc-200 bg-white/60 p-3 shadow-sm sm:p-4"><div className="min-w-[760px] sm:min-w-0"><div className="grid grid-cols-7 gap-2 text-center text-xs font-semibold uppercase tracking-wide text-zinc-500">{['Sun','Mon','Tue','Wed','Thu','Fri','Sat'].map(d => <div key={d}>{d}</div>)}</div><div className="mt-2 grid grid-cols-7 gap-2">{Array.from({ length: offset }).map((_, i) => <div key={`blank-${i}`} />)}{Array.from({ length: totalDays }, (_, i) => i + 1).map(day => { const date = `${month}-${String(day).padStart(2,'0')}`; const dayEvents = events.filter(e => isDateInEventRange(e, date)); return <div key={date} onDoubleClick={() => { setSelectedDate(date); onAddEvent?.(date); }} title="Double-click to add an event" className={`min-h-[132px] rounded-2xl border p-2 ${selectedDate === date ? 'border-[#AEBB9E] bg-[#DDE8D2]/60' : 'border-zinc-200 bg-cream/80'}`}><button type="button" onClick={() => { setSelectedDate(date); setViewMode('Day'); }} className="mb-2 text-xs font-semibold text-zinc-500 hover:text-zinc-900">{day}</button><div className="space-y-1.5">{dayEvents.map(event => <button key={event.id} onDoubleClick={(e) => e.stopPropagation()} onClick={(e) => { e.stopPropagation(); onClick(event); }} className={`block w-full truncate rounded-xl border px-2 py-1.5 text-left text-[11px] font-medium ${TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}`}>{event.localBackupOnly ? '⚠ ' : ''}{event.title}</button>)}</div></div>})}</div></div>{events.length === 0 ? <div className="mt-4 rounded-2xl border border-dashed border-zinc-200 bg-white/60 p-4 text-center text-sm text-zinc-500">No events scheduled for {monthLabel(month)} yet.</div> : null}</div>;
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

function isRolloutEvent(event) {
  return event && ROLLOUT_EVENT_TYPES.has(event.type);
}

function getAssignedPhotographerCount(event) {
  if (!Array.isArray(event?.photographers)) return 0;
  return uniqueCanonicalPhotographers(event.photographers).length;
}

function getRolloutCount(event) {
  if (!isRolloutEvent(event)) return 0;

  // Rollouts are intentionally based on assigned photographers, not title parsing.
  // Event titles use inconsistent wording like "1 Team", "2 Teams", or omit team counts entirely,
  // so photographer assignment is the operational source of truth. Assistants do not count.
  return getAssignedPhotographerCount(event);
}

function getCapacityTone(rollouts) {
  if (rollouts >= 20) return {
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
  const weekEvents = days.flatMap(date => events.filter(e => isDateInEventRange(e, date)));
  const weeklyRollouts = weekEvents.reduce((total, event) => total + getRolloutCount(event), 0);
  const capacity = getCapacityTone(weeklyRollouts);
  const pct = Math.min(100, Math.round((weeklyRollouts / 22) * 100));
  const photographerSummary = Array.from(
    weekEvents.reduce((counts, event) => {
      if (!isRolloutEvent(event)) return counts;
      uniqueCanonicalPhotographers(event.photographers || []).forEach(name => {
        counts.set(name, (counts.get(name) || 0) + 1);
      });
      return counts;
    }, new Map())
  ).sort((a, b) => b[1] - a[1] || a[0].localeCompare(b[0]));

  return (
    <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4 shadow-sm">
      <div className="mb-4 flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
        <h2 className="text-sm font-semibold text-zinc-800">Week of {shortDate(start)} – {shortDate(end)}</h2>
        <div tabIndex={0} className={`group relative rounded-2xl border px-4 py-3 outline-none ${capacity.className}`}>
          <div className="flex items-center justify-between gap-4">
            <div>
              <div className="text-xs font-semibold uppercase tracking-wide opacity-75">Weekly Rollouts</div>
              <div className="mt-1 text-lg font-semibold">{weeklyRollouts} / 22</div>
            </div>
            <Pill className={`border-current bg-white/60 ${capacity.className}`}>{capacity.label}</Pill>
          </div>
          <div className="mt-2 h-2 overflow-hidden rounded-full bg-white/70">
            <div className={`h-full rounded-full ${capacity.barClassName}`} style={{ width: `${pct}%` }} />
          </div>

          <div className="pointer-events-none absolute right-0 top-full z-30 mt-3 w-72 translate-y-1 rounded-3xl border border-zinc-200 bg-white p-4 text-zinc-900 opacity-0 shadow-2xl transition group-hover:pointer-events-auto group-hover:translate-y-0 group-hover:opacity-100 group-focus-within:pointer-events-auto group-focus-within:translate-y-0 group-focus-within:opacity-100">
            <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">This week's photographer load</div>
            <div className="mt-1 text-sm font-semibold text-zinc-900">{shortDate(start)} – {shortDate(end)}</div>
            <div className="mt-3 space-y-2">
              {photographerSummary.length ? photographerSummary.map(([name, count]) => (
                <div key={name} className="flex items-center justify-between gap-3 rounded-2xl border border-zinc-100 bg-cream/70 px-3 py-2 text-sm">
                  <span className="truncate font-medium">{name}</span>
                  <span className="shrink-0 text-xs font-semibold text-zinc-500">{count} school{count === 1 ? '' : 's'}</span>
                </div>
              )) : (
                <div className="rounded-2xl border border-dashed border-zinc-200 bg-cream/70 p-3 text-sm text-zinc-500">No photographers assigned this week yet.</div>
              )}
            </div>
          </div>
        </div>
      </div>
      <div className="space-y-4">
        {days.map(date => {
          const dayEvents = events.filter(e => isDateInEventRange(e, date));
          const dayRollouts = dayEvents.reduce((total, event) => total + getRolloutCount(event), 0);
          return (
            <section key={date} className="rounded-2xl border border-zinc-200 bg-white/75 p-4 shadow-sm">
              <div className="mb-3 flex flex-wrap items-center justify-between gap-3">
                <h3 className="text-sm font-semibold text-zinc-900">{formatDate(date)}</h3>
                <div className="flex flex-wrap gap-2">
                  <Pill className="border-zinc-200 bg-cream text-zinc-600">{dayEvents.length} {dayEvents.length === 1 ? 'event' : 'events'}</Pill>
                  {dayRollouts ? <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">{dayRollouts} rollout{dayRollouts === 1 ? '' : 's'}</Pill> : null}
                </div>
              </div>
              {dayEvents.length ? (
                <div className="divide-y divide-zinc-100 overflow-hidden rounded-2xl border border-zinc-100 bg-white">
                  {dayEvents.map(event => {
                    const rolloutCount = getRolloutCount(event);
                    return (
                      <button
                        key={event.id}
                        type="button"
                        onClick={() => onClick(event)}
                        className="flex w-full flex-col gap-2 px-4 py-3 text-left transition hover:bg-[#DDE8D2]/35 sm:flex-row sm:items-center sm:justify-between"
                      >
                        <div className="min-w-0">
                          <div className="font-semibold text-zinc-900">{event.title}</div>
                          <div className="mt-1 flex flex-wrap items-center gap-2 text-xs text-zinc-500">
                            <span>{event.time || 'TBD'}</span>
                            {event.canonicalSchool ? <span>{event.canonicalSchool}</span> : null}
                            {event.photographers?.length ? <span>Photographers Assigned: {event.photographers.join(', ')}</span> : null}
                          </div>
                        </div>
                        <div className="flex shrink-0 flex-wrap gap-1.5 sm:justify-end">
                          <Pill className={TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}>{event.type}</Pill>
                          {getEventIrm(event) ? <Pill className="border-amber-200 bg-amber-50 text-amber-900">IRM {getEventIrm(event)}</Pill> : null}
                          {rolloutCount ? <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">{rolloutCount} rollout{rolloutCount === 1 ? '' : 's'}</Pill> : null}
                        </div>
                      </button>
                    );
                  })}
                </div>
              ) : (
                <div className="rounded-2xl border border-dashed border-zinc-200 bg-cream/70 p-4 text-sm text-zinc-400">No scheduled items</div>
              )}
            </section>
          );
        })}
      </div>
    </div>
  );
}

function DayView({ events, onClick, selectedDate }) {
  const dayEvents = events.filter(event => isDateInEventRange(event, selectedDate));
  if (!dayEvents.length) return <div className="rounded-3xl border border-zinc-200 bg-white/60 p-8 text-center text-sm text-zinc-500 shadow-sm">No events scheduled for {formatDate(selectedDate)} yet.</div>;
  return (
    <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4 shadow-sm">
      <h2 className="mb-3 text-sm font-semibold text-zinc-800">{formatDate(selectedDate)}</h2>
      <div className="grid gap-3 md:grid-cols-2">{dayEvents.map(event => <EventCard key={event.id} event={event} onClick={onClick} />)}</div>
    </div>
  );
}




function schoolKey(value = '') {
  return String(value).toLowerCase().replace(/&/g, 'and').replace(/[^a-z0-9]+/g, ' ').trim();
}

function schoolMatchesEvent(schoolName, event) {
  const school = schoolKey(schoolName);
  const canonical = schoolKey(event.canonicalSchool || '');
  const title = schoolKey(event.title || '');
  if (!school) return false;
  if (canonical && (canonical === school || canonical.includes(school) || school.includes(canonical))) return true;
  if (title && title.includes(school)) return true;
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
    .filter(event => names.some(name => schoolMatchesEvent(name, event)))
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

function getFall2026ScheduledSchools(events = EVENTS) {
  return new Set(
    events.filter(event => event && event.date >= '2026-09-01' && event.date <= '2026-11-30' && event.type === 'Fall Picture Day' && event.canonicalSchool)
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
  const scheduled2026 = getFall2026ScheduledSchools(events);
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
    .filter(school => !scheduled2026.has(schoolKey(school.name)) && !scheduled2026.has(schoolKey(school.originalName || school.name)))
    .map(school => {
      const mergedFrom = mergedSourcesByTarget[school.originalName || school.name] || [];
      const mergedSourceSchools = mergedFrom.map(name => allSchools.find(item => (item.originalName || item.name) === name)).filter(Boolean);
      const historyNames = [school.name, school.originalName, ...mergedFrom, ...mergedSourceSchools.map(item => item.name)].filter(Boolean);
      const history = getSchoolHistoryForNames(historyNames, events);
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
    .sort((a, b) => a.name.localeCompare(b.name));
}

function getFall2026Availability(events = EVENTS, photographers = PHOTOGRAPHERS) {
  const dates = [];
  const start = new Date('2026-09-01T12:00:00');
  const end = new Date('2026-11-30T12:00:00');
  for (let d = new Date(start); d <= end; d.setDate(d.getDate() + 1)) {
    const day = d.getDay();
    if (day === 0 || day === 6) continue;
    const key = d.toISOString().slice(0, 10);
    const scheduled = events.filter(event => isDateInEventRange(event, key));
    const bookedPhotographers = new Set(scheduled.flatMap(event => uniqueCanonicalPhotographers(event.photographers || [])));
    const availablePhotographers = uniqueCanonicalPhotographers(photographers).filter(name => !bookedPhotographers.has(canonicalPhotographerName(name)));
    dates.push({ date: key, scheduledCount: scheduled.length, availablePhotographers, scheduled });
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
          {school.address ? <a href={`https://www.google.com/maps/search/?api=1&query=${encodeURIComponent([school.address, school.city, school.stateZip].filter(Boolean).join(' '))}`} target="_blank" rel="noreferrer" className="mt-2 inline-flex rounded-xl border border-[#AEBB9E] bg-[#DDE8D2]/70 px-2.5 py-1.5 text-xs font-semibold text-zinc-900 transition hover:bg-[#DDE8D2]">Maps</a> : null}
        </div>

        <div className="rounded-2xl border border-zinc-200 bg-white/70 p-3 text-xs text-zinc-600">
          <div className="text-sm font-semibold text-zinc-800">Primary Contact</div>
          <div className="mt-1 text-sm font-medium text-zinc-700">{[school.contactFirst, school.contactLast].filter(Boolean).join(' ') || '—'}</div>
          {school.contactTitle ? <div className="mt-0.5 text-xs text-zinc-500">{school.contactTitle}</div> : null}
          {school.contactPhone ? <div className="mt-1">{school.contactPhone}</div> : null}
          {school.contactEmail ? <div className="break-words">{school.contactEmail}</div> : null}
          <div className="mt-2 flex flex-wrap gap-1.5">
            {school.contactPhone ? <a href={`tel:${school.contactPhone}`} className="rounded-xl border border-zinc-200 bg-white px-2.5 py-1.5 text-xs font-semibold text-zinc-800">Call</a> : null}
            {school.contactEmail ? <a href={`mailto:${school.contactEmail}`} className="rounded-xl border border-zinc-200 bg-white px-2.5 py-1.5 text-xs font-semibold text-zinc-800">Email</a> : null}
          </div>
        </div>
      </div>

      <div className="mt-3 max-w-4xl rounded-2xl border border-zinc-200 bg-white/70 p-3 text-xs text-zinc-600">
        <div className="flex flex-wrap items-center justify-between gap-2">
          <div className="text-sm font-semibold text-zinc-800">Notes on School</div>
          {onEdit ? <button type="button" onClick={() => onEdit(school)} className="rounded-xl border border-zinc-200 bg-white px-2.5 py-1.5 text-xs font-semibold text-zinc-800 shadow-sm transition hover:bg-cream">Edit</button> : null}
        </div>
        <button type="button" onClick={() => onEdit && onEdit(school)} className={`mt-1.5 w-full rounded-xl p-1.5 text-left transition ${onEdit ? 'hover:bg-cream/80' : 'cursor-default'}`}>
          <div className="whitespace-pre-wrap leading-5">{school.notes || '—'}</div>
        </button>
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
                <div className="mt-2 whitespace-pre-wrap text-sm leading-5 text-zinc-600">{event.notes}</div>
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

function SchedulingModal({ school, photographers, assistants, events = [], onClose, onSave }) {
  const [date, setDate] = useState('2026-09-01');
  const [isTwoDay, setIsTwoDay] = useState(false);
  const [endDate, setEndDate] = useState('');
  const [arrivalTime, setArrivalTime] = useState('');
  const [startTime, setStartTime] = useState('');
  const [selectedPhotographers, setSelectedPhotographers] = useState([]);
  const [selectedAssistants, setSelectedAssistants] = useState([]);
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
      status: selectedPhotographers.length ? 'Scheduled' : 'Needs Photographers Assigned',
      photographers: selectedPhotographers,
      assistants: noAssistant ? [] : selectedAssistants,
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
                <input type="date" min="2026-09-01" max="2026-11-30" value={date} onChange={(e) => { setDate(e.target.value); if (isTwoDay && (!endDate || endDate < e.target.value)) setEndDate(addDays(e.target.value, 1)); }} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="flex items-center justify-between gap-3">
                  <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Second Date</div>
                  <button type="button" onClick={() => { const next = !isTwoDay; setIsTwoDay(next); if (next && !endDate) setEndDate(addDays(date, 1)); }} className={`rounded-full border px-3 py-1 text-xs font-semibold ${isTwoDay ? 'border-zinc-900 bg-zinc-900 text-white' : 'border-zinc-200 bg-white text-zinc-700'}`}>{isTwoDay ? 'Two-day' : 'One-day'}</button>
                </div>
                <input type="date" min="2026-09-01" max="2026-11-30" disabled={!isTwoDay} value={isTwoDay ? (endDate || addDays(date, 1)) : ''} onChange={(e) => setEndDate(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4 disabled:bg-zinc-100 disabled:text-zinc-400" />
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


function AddEventModal({ photographers, assistants, events = [], onClose, onSave, defaultDate = todayKey(), sourceLabel = 'prototype', initialEvent = null }) {
  const isEditing = Boolean(initialEvent);
  const [date, setDate] = useState(initialEvent?.date || defaultDate);
  const [isTwoDay, setIsTwoDay] = useState(Boolean(initialEvent?.endDate && initialEvent.endDate !== initialEvent.date));
  const [endDate, setEndDate] = useState(initialEvent?.endDate || '');
  const [arrivalTime, setArrivalTime] = useState(initialEvent?.arrivalTime || '');
  const [startTime, setStartTime] = useState(initialEvent?.time && initialEvent.time !== 'TBD' ? initialEvent.time : '');
  const [title, setTitle] = useState(initialEvent?.title || '');
  const [schoolName, setSchoolName] = useState(initialEvent?.canonicalSchool || '');
  const [eventType, setEventType] = useState(initialEvent?.type || 'Fall Picture Day');
  const [selectedPhotographers, setSelectedPhotographers] = useState(initialEvent?.photographers || []);
  const [selectedAssistants, setSelectedAssistants] = useState(initialEvent?.assistants || []);
  const [noAssistant, setNoAssistant] = useState(Boolean(initialEvent?.noAssistant));
  const [notes, setNotes] = useState(initialEvent?.notes || '');
  const [error, setError] = useState('');
  const [saving, setSaving] = useState(false);

  const schoolOptions = useMemo(() => SCHOOLS.map(school => school.name).sort((a, b) => a.localeCompare(b)), []);
  const matchedSchool = useMemo(() => SCHOOLS.find(school => school.name.toLowerCase() === schoolName.trim().toLowerCase()), [schoolName]);

  const toggleName = (name, setter) => setter(prev => prev.includes(name) ? prev.filter(item => item !== name) : [...prev, name]);
  const save = async () => {
    if (saving) return;
    setSaving(true);
    setError('');

    const cleanName = schoolName.trim();
    const cleanTitle = title.trim() || (cleanName ? `${cleanName} ${eventType}` : eventType);
    const cleanEndDate = isTwoDay ? (endDate || addDays(date, 1)) : '';
    if (isTwoDay && cleanEndDate < date) {
      setError('End date must be the same as or after the first date.');
      setSaving(false);
      return;
    }
    const event = {
      id: initialEvent?.id || `custom-${Date.now()}`,
      supabaseId: initialEvent?.supabaseId,
      date,
      endDate: cleanEndDate || null,
      title: cleanTitle,
      canonicalSchool: cleanName || '',
      type: eventType,
      status: selectedPhotographers.length ? 'Scheduled' : 'Needs Photographers Assigned',
      photographers: selectedPhotographers,
      assistants: noAssistant ? [] : selectedAssistants,
      noAssistant,
      features: [],
      irm: matchedSchool?.irm || null,
      arrivalTime: arrivalTime || '',
      time: startTime || 'TBD',
      notes: notes || '',
      rainInfo: '',
      history: matchedSchool ? 'Created from Add Event using an existing school/account.' : cleanName ? 'Created from Add Event using a school/account name not yet in School List.' : 'Created from Add Event without a school/account association.'
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
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/30 p-4 backdrop-blur-sm" onClick={onClose}>
        <motion.div initial={{ y: 30, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 20, opacity: 0 }} onClick={(e) => e.stopPropagation()} className="mx-auto mt-2 max-h-[95vh] max-w-3xl overflow-hidden rounded-[2rem] bg-cream shadow-2xl sm:mt-8">
          <div className="border-b border-zinc-200 p-5">
            <div className="flex items-start justify-between gap-4">
              <div>
                <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">{isEditing ? "Edit Event" : "Add Event"}</Pill>
                <h2 className="mt-3 text-2xl font-semibold text-zinc-950">{isEditing ? "Edit event" : "Create an event"}</h2>
                <p className="mt-1 text-sm text-zinc-600">Optionally associate this event with a school/account, or leave it blank for internal/special events.</p>
              </div>
              <button onClick={onClose} className="rounded-full bg-white p-2 text-zinc-500 hover:text-zinc-900"><X size={18} /></button>
            </div>
          </div>
          <div className="max-h-[72vh] space-y-4 overflow-auto p-5">
            {error ? <div className="rounded-2xl border border-rose-200 bg-rose-50 px-4 py-3 text-sm font-medium text-rose-700">{error}</div> : null}
            <div className="grid gap-4 md:grid-cols-2">
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">First Date</div>
                <input type="date" value={date} onChange={(e) => { setDate(e.target.value); if (isTwoDay && (!endDate || endDate < e.target.value)) setEndDate(addDays(e.target.value, 1)); }} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="flex items-center justify-between gap-3">
                  <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Second Date</div>
                  <button type="button" onClick={() => { const next = !isTwoDay; setIsTwoDay(next); if (next && !endDate) setEndDate(addDays(date, 1)); }} className={`rounded-full border px-3 py-1 text-xs font-semibold ${isTwoDay ? 'border-zinc-900 bg-zinc-900 text-white' : 'border-zinc-200 bg-white text-zinc-700'}`}>{isTwoDay ? 'Two-day' : 'One-day'}</button>
                </div>
                <input type="date" disabled={!isTwoDay} value={isTwoDay ? (endDate || addDays(date, 1)) : ''} onChange={(e) => setEndDate(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4 disabled:bg-zinc-100 disabled:text-zinc-400" />
              </label>
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
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4 md:col-span-2">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Event Type</div>
                <select value={eventType} onChange={(e) => setEventType(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4">
                  {Object.keys(TYPE_COLORS).map(type => <option key={type} value={type}>{type}</option>)}
                </select>
              </label>
            </div>
            <div className="grid gap-4 md:grid-cols-2">
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
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Title</div>
                <input value={title} onChange={(e) => setTitle(e.target.value)} placeholder="Optional — auto-fills if blank" className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
                {matchedSchool?.irm ? <div className="mt-2"><Pill className="border-amber-200 bg-amber-50 text-amber-900">IRM {matchedSchool.irm}</Pill></div> : null}
              </label>
            </div>
            <PhotographerAssignmentPicker photographers={photographers} selectedPhotographers={selectedPhotographers} setSelectedPhotographers={setSelectedPhotographers} events={events} date={date} schoolName={schoolName} />
            <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <h3 className="text-sm font-semibold text-zinc-900">Assistants</h3>
              <div className="mt-3 flex flex-wrap gap-2">
                <button type="button" onClick={() => { setNoAssistant(true); setSelectedAssistants([]); }} className={`rounded-full border px-3 py-2 text-sm transition ${noAssistant ? 'border-zinc-900 bg-zinc-900 text-white' : 'border-zinc-200 bg-white text-zinc-700 hover:bg-zinc-50'}`}>No Assistant</button>
                {assistants.map(name => <button key={name} type="button" onClick={() => { setNoAssistant(false); toggleName(name, setSelectedAssistants); }} className={`rounded-full border px-3 py-2 text-sm transition ${!noAssistant && selectedAssistants.includes(name) ? 'border-[#AEBB9E] bg-[#DDE8D2] text-zinc-900' : 'border-zinc-200 bg-white text-zinc-700 hover:bg-zinc-50'}`}>{name}</button>)}
              </div>
            </section>
            <label className="block rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Picture Day Info</div>
              <textarea value={notes} onChange={(e) => setNotes(e.target.value)} rows={4} placeholder="Optional info for this specific event/shoot..." className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
            </label>
          </div>
          <div className="flex justify-end gap-2 border-t border-zinc-200 p-5">
            <button type="button" onClick={onClose} className="rounded-2xl border border-zinc-200 bg-white px-4 py-2 text-sm font-semibold text-zinc-700">Cancel</button>
            <button type="button" onClick={save} disabled={saving} className="rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm disabled:cursor-not-allowed disabled:opacity-60">{saving ? 'Saving…' : (isEditing ? "Save Changes" : "Save Event")}</button>
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

            <label className="block rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Notes on School</div>
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

function CarrieView({ query, onClickEvent, photographers, assistants, events, onSchedule, schoolsList, setSchools, onSchoolAdded }) {
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

    const { error } = await supabase
      .from('schools')
      .update({ no_fall_scheduling_fall_2026: value, updated_at: new Date().toISOString() })
      .eq('original_name', originalName);

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
    ? schools.filter(item => [item.name, item.displayName, item.notes, item.lastEvent?.title, item.lastEvent?.notes, ...(item.referencePhotographers || []), ...(item.lastEvent?.photographers || []), ...(item.lastEvent?.assistants || [])].filter(Boolean).join(' ').toLowerCase().includes(q))
    : schools;

  const saveSchool = async (schoolValues) => {
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      alert('Supabase is not connected, so this school cannot be saved yet.');
      return;
    }

    const row = schoolToSupabaseRow(schoolValues);
    const { data, error } = await supabase
      .from('schools')
      .upsert(row, { onConflict: 'original_name' })
      .select()
      .single();

    if (error) {
      alert(`Could not save school: ${error.message}`);
      return;
    }

    const savedSchool = supabaseRowToSchool(data);
    setSchools?.(prev => {
      const without = (prev || []).filter(school => (school.originalName || school.name) !== (savedSchool.originalName || savedSchool.name));
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
        <div className="flex flex-wrap gap-2 sm:justify-end">
          <button type="button" onClick={() => setAddingEvent(true)} className="inline-flex min-h-11 items-center justify-center gap-2 rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5"><Plus size={16} /> Add Event</button>
          <button type="button" onClick={() => setAddingSchool(true)} className="inline-flex min-h-11 items-center justify-center gap-2 rounded-2xl border border-[#AEBB9E] bg-[#DDE8D2]/80 px-4 py-2 text-sm font-semibold text-zinc-900 shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2]"><Plus size={16} /> Add School</button>
        </div>
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
                  <button type="button" onClick={(event) => { event.stopPropagation(); setNoFallScheduling(item, true); }} className="shrink-0 rounded-full border border-slate-200 bg-white px-3 py-1.5 text-xs font-semibold text-slate-700 shadow-sm transition hover:border-slate-300 hover:bg-slate-50">No Fall Scheduling</button>
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
              {selectedSchool ? <button type="button" onClick={() => setSchedulingSchool(selectedSchool)} className="inline-flex min-h-11 items-center justify-center rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5">Schedule for Fall 2026</button> : null}
            </div>
            <SchoolHistoryPanel school={selectedSchool} onClickEvent={onClickEvent} />
          </div>
        </section>
      </div>

      <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
        <div className="mb-4">
          <h2 className="text-lg font-semibold text-zinc-950">Fall 2026 Date Availability</h2>
          <p className="mt-1 text-sm text-zinc-600">Weekdays from September through November. Empty means nothing has been scheduled yet.</p>
        </div>
        <div className="grid max-h-[520px] gap-2 overflow-auto pr-1 md:grid-cols-2 xl:grid-cols-3">
          {availability.map(day => (
            <div key={day.date} className="rounded-2xl border border-zinc-200 bg-cream/75 p-3">
              <div className="flex items-center justify-between gap-3">
                <div>
                  <div className="text-sm font-semibold text-zinc-900">{formatDate(day.date)}</div>
                  <div className="mt-1 text-xs text-zinc-500">{day.scheduledCount ? `${day.scheduledCount} scheduled item${day.scheduledCount === 1 ? '' : 's'}` : 'No events scheduled yet'}</div>
                </div>
                <Pill className="border-emerald-200 bg-emerald-50 text-emerald-900">{day.availablePhotographers.length} photographers open</Pill>
              </div>
              <div className="mt-2 text-xs text-zinc-600">Available: {day.availablePhotographers.join(', ') || '—'}</div>
            </div>
          ))}
        </div>
      </section>
      <SchedulingModal school={schedulingSchool} photographers={photographers} assistants={assistants} events={events} onClose={() => setSchedulingSchool(null)} onSave={onSchedule} />
      {noFallUndo ? (
        <div className="fixed bottom-24 left-1/2 z-50 w-[min(92vw,520px)] -translate-x-1/2 rounded-2xl border border-slate-200 bg-zinc-950 px-4 py-3 text-sm text-white shadow-2xl sm:bottom-6">
          <div className="flex items-center justify-between gap-3">
            <div><span className="font-semibold">{noFallUndo.school?.displayName || noFallUndo.school?.name}</span> marked No Fall Scheduling.</div>
            <button type="button" onClick={() => setNoFallScheduling(noFallUndo.school, false)} className="rounded-full bg-white px-3 py-1.5 text-xs font-semibold text-zinc-950">Undo</button>
          </div>
        </div>
      ) : null}
      {addingEvent && <AddEventModal photographers={photographers} assistants={assistants} events={events} onClose={() => setAddingEvent(false)} onSave={onSchedule} sourceLabel="Carrie View" />}
      {addingSchool && <AddSchoolModal onClose={() => setAddingSchool(false)} onSave={saveSchool} />}
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
  const [notes, setNotes] = useState(school?.notes || '');
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
    setNotes(school?.notes || '');
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

  const handleSave = () => {
    const cleanName = name.trim();
    if (!cleanName) return;
    onSave(school.originalName || school.name, {
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
      notes,
      referenceImages,
      noFallSchedulingFall2026
    });
  };

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/25 p-4 backdrop-blur-sm" onClick={onClose}>
      <motion.div initial={{ y: 20, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 20, opacity: 0 }} onClick={(e) => e.stopPropagation()} className="mx-auto mt-2 max-h-[95vh] max-w-2xl overflow-auto rounded-[2rem] bg-cream p-4 shadow-2xl sm:mt-6 sm:p-5">
        <div className="flex items-start justify-between gap-4">
          <div>
            <h2 className="text-xl font-semibold text-zinc-950">Edit School</h2>
            <p className="mt-1 text-sm text-zinc-600">Edits save in this browser for now. Supabase can make this shared later.</p>
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
          <label className="text-sm font-medium text-zinc-700">Notes on School
            <textarea value={notes} onChange={(e) => setNotes(e.target.value)} rows={10} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm leading-6 outline-none focus:border-[#AEBB9E]" />
          </label>
          <label className="flex items-start gap-3 rounded-2xl border border-slate-200 bg-slate-50/80 p-3 text-sm text-zinc-700">
            <input type="checkbox" checked={noFallSchedulingFall2026} onChange={(e) => setNoFallSchedulingFall2026(e.target.checked)} className="mt-1 h-4 w-4 rounded border-zinc-300 text-zinc-900" />
            <span>
              <span className="font-semibold text-zinc-900">No Fall Scheduling</span>
              <span className="mt-1 block text-xs leading-5 text-zinc-500">Hide this school from Carrie View’s Fall 2026 To Be Scheduled list. This is reversible.</span>
            </span>
          </label>
          <div className="rounded-2xl border border-zinc-200 bg-white/70 p-3">
            <div className="flex flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
              <div>
                <div className="text-sm font-semibold text-zinc-800">Reference Images</div>
                <div className="text-xs text-zinc-500">Add JPG or PNG notes like parking maps, entrances, and setup references.</div>
              </div>
              <label className="inline-flex cursor-pointer items-center justify-center rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/80 px-3 py-2 text-xs font-semibold text-zinc-900 hover:bg-[#DDE8D2]">
                Add Image
                <input type="file" accept="image/*" multiple onChange={handleImageUpload} className="hidden" />
              </label>
            </div>
            {referenceImages.length ? (
              <div className="mt-3 space-y-3">
                {referenceImages.map((image) => (
                  <div key={image.id} className="grid gap-3 rounded-2xl border border-zinc-200 bg-cream/70 p-2 sm:grid-cols-[120px_1fr_auto] sm:items-center">
                    <img src={image.src} alt={image.caption || 'School reference'} className="h-24 w-full rounded-xl object-cover sm:w-[120px]" />
                    <input value={image.caption || ''} onChange={(e) => updateImageCaption(image.id, e.target.value)} placeholder="Caption, e.g. Parking entrance" className="w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none focus:border-[#AEBB9E]" />
                    <button type="button" onClick={() => removeImage(image.id)} className="rounded-full border border-zinc-200 bg-white px-3 py-2 text-xs font-semibold text-zinc-600 hover:bg-zinc-50">Remove</button>
                  </div>
                ))}
              </div>
            ) : <div className="mt-3 text-xs text-zinc-400">No reference images yet.</div>}
          </div>
        </div>
        <div className="mt-5 flex justify-end gap-2">
          <button onClick={onClose} className="rounded-full border border-zinc-200 bg-white px-4 py-2 text-sm font-semibold text-zinc-700 hover:bg-zinc-50">Cancel</button>
          <button onClick={handleSave} className="rounded-full bg-zinc-950 px-4 py-2 text-sm font-semibold text-white hover:bg-zinc-800">Save Changes</button>
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


function splitStateZip(value = '') {
  const trimmed = String(value || '').trim();
  const parts = trimmed.split(/\s+/);
  if (parts.length >= 2 && /^[A-Z]{2}$/i.test(parts[0])) {
    return { state: parts[0].toUpperCase(), zip: parts.slice(1).join(' ') };
  }
  return { state: '', zip: trimmed };
}

function joinStateZip(state, zip, fallback = '') {
  const joined = [state, zip].filter(Boolean).join(' ').trim();
  return joined || fallback || '';
}

function schoolToSupabaseRow(school = {}) {
  const stateZipParts = splitStateZip(school.stateZip || joinStateZip(school.state, school.zip));
  return {
    original_name: school.originalName || school.original_name || school.name,
    name: school.name || school.originalName || school.original_name,
    district: school.district || null,
    irm: school.irm === '' || school.irm === undefined || school.irm === null ? null : Number(school.irm),
    address: school.address || null,
    city: school.city || null,
    state: school.state || stateZipParts.state || null,
    zip: school.zip || stateZipParts.zip || null,
    state_zip: school.stateZip || joinStateZip(school.state, school.zip) || null,
    notes: school.notes || null,
    contact_first: school.contactFirst || null,
    contact_last: school.contactLast || null,
    contact_phone: school.contactPhone || null,
    contact_email: school.contactEmail || null,
    contact_title: school.contactTitle || null,
    reference_images: school.referenceImages || [],
    merged_into: school.mergedInto || null,
    active: school.active !== false,
    no_fall_scheduling_fall_2026: Boolean(school.noFallSchedulingFall2026 || school.no_fall_scheduling_fall_2026),
    updated_at: new Date().toISOString()
  };
}

function supabaseRowToSchool(row = {}) {
  return {
    id: row.id,
    originalName: row.original_name || row.name,
    name: row.name,
    district: row.district || '',
    irm: row.irm ?? '',
    address: row.address || '',
    city: row.city || '',
    state: row.state || '',
    zip: row.zip || '',
    stateZip: row.state_zip || joinStateZip(row.state, row.zip),
    notes: row.notes || '',
    contactFirst: row.contact_first || '',
    contactLast: row.contact_last || '',
    contactPhone: row.contact_phone || '',
    contactEmail: row.contact_email || '',
    contactTitle: row.contact_title || '',
    referenceImages: row.reference_images || [],
    mergedInto: row.merged_into || null,
    active: row.active !== false,
    noFallSchedulingFall2026: Boolean(row.no_fall_scheduling_fall_2026)
  };
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


function normalizeImportedEventType(row = {}) {
  const rawType = String(row.event_type || '').trim();
  const title = String(row.title || '').toLowerCase();
  const date = String(row.date || '');
  const isGoogleImport = row.source === 'google_calendar_import';
  if (!isGoogleImport) return rawType || 'Special Event';
  if (title.includes('rain date') || /\brain\b/.test(title)) return 'Rain Date';
  if (title.includes('makeup') || title.includes('make up') || title.includes('retake') || rawType === 'makeup/retake') return 'Makeup Day';
  if (title.includes('sports') || rawType === 'sports') return 'Sports';
  if (title.includes('photo booth') || title.includes('photobooth') || rawType === 'photo booth') return 'Photo Booth';
  if (title.includes('headshot')) return 'Headshots';
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
  if (row.source !== 'google_calendar_import' || !current) return current;
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
    event_type: event.type || event.eventType || 'Special Event',
    status: event.status || 'Scheduled',
    season: event.season || getSeasonLabel(event.date || ''),
    picture_day_info: event.notes || null,
    canonical_school: event.canonicalSchool || null,
    photographers: event.photographers || [],
    assistants: event.assistants || [],
    no_assistant: Boolean(event.noAssistant),
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
    date: row.date,
    endDate: row.end_date || null,
    title: row.title,
    canonicalSchool: normalizeImportedCanonicalSchool(row),
    type: normalizeImportedEventType(row),
    status: row.status || 'Scheduled',
    photographers: row.photographers || [],
    assistants: row.assistants || [],
    noAssistant: Boolean(row.no_assistant),
    features: [],
    irm: row.irm ?? null,
    time: row.time || 'TBD',
    arrivalTime: row.arrival_time || '',
    notes: row.picture_day_info || '',
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

function SchoolPages({ query, onClickEvent, events, selectedName, setSelectedName, schools, setSchools, reloadSchools, schoolsMessage }) {
  const [schoolListQuery, setSchoolListQuery] = useState('');
  const q = (schoolListQuery || query).trim().toLowerCase();
  const [editingSchool, setEditingSchool] = useState(null);
  const [mergingSchool, setMergingSchool] = useState(null);
  const [message, setMessage] = useState('');

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
        history: getSchoolHistoryForNames([school.name, school.originalName, ...mergedFrom].filter(Boolean), events)
      };
    })
    .sort((a, b) => a.name.localeCompare(b.name)), [events, schools, mergedSourcesByTarget]);

  const filtered = q ? activeSchools.filter(school => [school.name, school.notes, school.address, school.city, school.contactFirst, school.contactLast, school.contactEmail, ...school.history.map(e => `${e.title} ${e.notes}`)].join(' ').toLowerCase().includes(q)) : activeSchools;
  const selected = activeSchools.find(school => school.name === selectedName || school.originalName === selectedName) || filtered[0] || null;

  const saveSchool = async (originalName, values) => {
    const supabase = createClient();
    if (!hasSupabaseEnv() || !supabase) {
      setMessage('Supabase is not connected yet. School edits cannot be saved.');
      return;
    }

    const previous = (schools || []).find(school => (school.originalName || school.name) === originalName) || {};
    const nextSchool = { ...previous, ...values, originalName };
    const row = schoolToSupabaseRow(nextSchool);

    const { data, error } = await supabase
      .from('schools')
      .upsert(row, { onConflict: 'original_name' })
      .select()
      .single();

    if (error) {
      setMessage(`Could not save school: ${error.message}`);
      return;
    }

    const savedSchool = supabaseRowToSchool(data);
    setSchools(prev => {
      const without = (prev || []).filter(school => (school.originalName || school.name) !== originalName);
      return [...without, savedSchool].sort((a, b) => a.name.localeCompare(b.name));
    });
    setSelectedName(savedSchool.name || originalName);
    setEditingSchool(null);
    setMessage('School changes saved to Supabase.');
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

    const { data, error } = await supabase
      .from('schools')
      .update({ merged_into: targetOriginalName, updated_at: new Date().toISOString() })
      .eq('original_name', sourceOriginalName)
      .select()
      .single();

    if (error) {
      setMessage(`Could not merge school: ${error.message}`);
      return;
    }

    const savedSource = supabaseRowToSchool(data);
    setSchools(prev => (prev || []).map(school => (school.originalName || school.name) === sourceOriginalName ? savedSource : school));
    const target = activeSchools.find(school => (school.originalName || school.name) === targetOriginalName);
    setSelectedName(target?.name || targetOriginalName);
    setMergingSchool(null);
    setMessage(`${source.name} merged into ${target?.name || targetOriginalName}.`);
  };

  return (
    <div className="space-y-3">
      {(schoolsMessage || message) ? (
        <div className="rounded-3xl border border-[#AEBB9E] bg-[#DDE8D2]/55 p-3 text-sm text-zinc-700 shadow-sm">
          {schoolsMessage ? <div>{schoolsMessage}</div> : null}
          {message ? <div>{message}</div> : null}
        </div>
      ) : null}
      <div className="grid gap-4 xl:grid-cols-[340px_1fr]">
        <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
          <h2 className="text-lg font-semibold text-zinc-950">School List</h2>
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

          <div className="mt-3 max-h-[760px] space-y-2 overflow-auto pr-1">
            {filtered.map(school => (
              <button key={school.originalName || school.name} onClick={() => setSelectedName(school.name)} className={`w-full rounded-2xl border p-3 text-left text-sm transition hover:bg-white ${selected?.originalName === school.originalName ? 'border-[#AEBB9E] bg-[#DDE8D2]/70' : 'border-zinc-200 bg-cream/75'}`}>
                <div className="font-semibold text-zinc-900">{school.name}</div>
                <div className="mt-1 text-xs text-zinc-500">{school.history.length} imported record{school.history.length === 1 ? '' : 's'}{school.irm ? ` · IRM ${school.irm}` : ''}{school.mergedFrom?.length ? ` · ${school.mergedFrom.length} merged` : ''}</div>
              </button>
            ))}
          </div>
        </section>
        <SchoolHistoryPanel school={selected} onClickEvent={onClickEvent} onEdit={setEditingSchool} onMerge={setMergingSchool} />
        <AnimatePresence>
          {editingSchool && <EditSchoolModal school={editingSchool} onClose={() => setEditingSchool(null)} onSave={saveSchool} />}
          {mergingSchool && <MergeSchoolModal sourceSchool={mergingSchool} schools={activeSchools} onClose={() => setMergingSchool(null)} onMerge={mergeSchool} />}
        </AnimatePresence>
      </div>
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
      <div className="flex flex-col items-center justify-center gap-3 sm:flex-row">
        <button type="button" onClick={() => move(-1)} className="rounded-full border border-zinc-200 bg-white/85 p-2 text-zinc-700 shadow-sm transition hover:-translate-y-0.5 hover:bg-white hover:shadow-soft" aria-label="Previous"><ChevronLeft size={20} /></button>
        <div className="min-w-[280px] rounded-full border border-zinc-200 bg-white/90 px-6 py-2 text-center text-base font-semibold text-zinc-900 shadow-sm">{label}</div>
        <button type="button" onClick={() => move(1)} className="rounded-full border border-zinc-200 bg-white/85 p-2 text-zinc-700 shadow-sm transition hover:-translate-y-0.5 hover:bg-white hover:shadow-soft" aria-label="Next"><ChevronRight size={20} /></button>
        <button type="button" onClick={goToday} className="rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/80 px-4 py-2 text-sm font-semibold text-zinc-900 shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2]">Today</button>
      </div>
      {showKey ? <CalendarColorKey /> : null}
    </div>
  );
}


function MobileView({ events, photographers, selectedDate, setSelectedDate, onClick }) {
  const fieldPhotographers = ['Stephanie', 'Matt', 'Molly', 'Beth', 'Andrew', 'Erin'];
  const available = Array.from(new Set([...fieldPhotographers, ...uniqueCanonicalPhotographers(photographers || [])])).filter(Boolean);
  const [selectedPhotographer, setSelectedPhotographer] = useState('Stephanie');
  const [viewMode, setViewMode] = useState('Day');

  const today = todayKey();
  const todayEvents = (events || [])
    .filter(event => isDateInEventRange(event, today) && event.type !== 'Call or Meeting' && event.type !== 'Edit Day')
    .sort((a, b) => String(a.time || '').localeCompare(String(b.time || '')));

  const visibleEvents = useMemo(() => {
    const canonical = canonicalPhotographerName(selectedPhotographer);
    const assigned = (events || []).filter(event => uniqueCanonicalPhotographers(event.photographers || []).includes(canonical));
    if (viewMode === 'Month') {
      const key = monthKey(selectedDate);
      return assigned.filter(event => monthKey(event.date) <= key && monthKey(event.endDate || event.date) >= key);
    }
    if (viewMode === 'Week') {
      const { start, end } = weekBounds(selectedDate);
      return assigned.filter(event => event.date <= end && (event.endDate || event.date) >= start);
    }
    return assigned.filter(event => isDateInEventRange(event, selectedDate));
  }, [events, selectedPhotographer, selectedDate, viewMode]);

  const move = (delta) => {
    if (viewMode === 'Month') setSelectedDate(addDays(selectedDate, delta * 30));
    else if (viewMode === 'Week') setSelectedDate(addDays(selectedDate, delta * 7));
    else setSelectedDate(addDays(selectedDate, delta));
  };

  return (
    <div className="mx-auto max-w-md space-y-4 sm:max-w-2xl">
      <section className="rounded-[2rem] border border-[#AEBB9E] bg-[#DDE8D2]/55 p-4 shadow-sm">
        <div className="text-xs font-black uppercase tracking-[0.18em] text-zinc-600">What We're Photographing Today</div>
        <div className="mt-1 text-lg font-black text-zinc-950">{formatDate(today)}</div>
        <div className="mt-3 space-y-2">
          {todayEvents.length ? todayEvents.map(event => (
            <button key={event.id} type="button" onClick={() => onClick(event)} className="w-full rounded-2xl border border-white/70 bg-white/80 p-3 text-left shadow-sm">
              <div className="font-bold text-zinc-950">{event.title}</div>
              <div className="mt-1 text-sm text-zinc-600">{getEventTimeLabel(event)}</div>
              <div className="mt-1 text-xs font-semibold text-zinc-500">{uniqueCanonicalPhotographers(event.photographers || []).join(', ') || 'Photographer TBD'}</div>
            </button>
          )) : <div className="rounded-2xl border border-dashed border-white/80 bg-white/60 p-4 text-sm text-zinc-500">Nothing scheduled for today.</div>}
        </div>
      </section>

      <section className="rounded-[2rem] border border-zinc-200 bg-white/80 p-4 shadow-sm">
        <div className="text-xs font-black uppercase tracking-[0.18em] text-zinc-500">Photographer Schedule</div>
        <select value={selectedPhotographer} onChange={(e) => setSelectedPhotographer(e.target.value)} className="mt-3 w-full rounded-2xl border border-zinc-200 bg-white px-4 py-3 text-base font-bold text-zinc-900 outline-none">
          {available.map(name => <option key={name} value={name}>{name}</option>)}
        </select>
        <div className="mt-3 grid grid-cols-3 rounded-2xl border border-zinc-200 bg-cream/80 p-1">
          {['Month', 'Week', 'Day'].map(mode => <button key={mode} type="button" onClick={() => setViewMode(mode)} className={`rounded-xl px-3 py-2 text-sm font-bold ${viewMode === mode ? 'bg-zinc-900 text-white' : 'text-zinc-600'}`}>{mode}</button>)}
        </div>
        <div className="mt-3 flex items-center justify-between gap-2">
          <button type="button" onClick={() => move(-1)} className="rounded-full border border-zinc-200 bg-white px-3 py-2 text-sm font-bold">Prev</button>
          <div className="text-center text-sm font-bold text-zinc-900">{viewMode === 'Month' ? monthLabel(monthKey(selectedDate)) : viewMode === 'Week' ? `${shortDate(weekBounds(selectedDate).start)} – ${shortDate(weekBounds(selectedDate).end)}` : formatDate(selectedDate)}</div>
          <button type="button" onClick={() => move(1)} className="rounded-full border border-zinc-200 bg-white px-3 py-2 text-sm font-bold">Next</button>
        </div>
        <div className="mt-4 space-y-2">
          {visibleEvents.length ? visibleEvents.sort((a,b) => String(a.date).localeCompare(String(b.date)) || String(a.time || '').localeCompare(String(b.time || ''))).map(event => (
            <button key={event.id} type="button" onClick={() => onClick(event)} className="w-full rounded-2xl border border-zinc-200 bg-white p-3 text-left shadow-sm">
              <div className="flex items-start justify-between gap-2">
                <div className="min-w-0">
                  <div className="text-xs font-bold uppercase tracking-wide text-zinc-400">{getEventDateLabel(event)}</div>
                  <div className="mt-1 font-black text-zinc-950">{event.title}</div>
                  <div className="mt-1 text-sm text-zinc-600">{getEventTimeLabel(event)}</div>
                  {event.assistants?.length ? <div className="mt-1 text-xs font-semibold text-zinc-500">Assistant: {event.assistants.join(', ')}</div> : null}
                </div>
                <Pill className={TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}>{event.type}</Pill>
              </div>
            </button>
          )) : <div className="rounded-2xl border border-dashed border-zinc-200 bg-cream/70 p-4 text-center text-sm text-zinc-500">No {viewMode.toLowerCase()} events for {selectedPhotographer}.</div>}
        </div>
      </section>
    </div>
  );
}

function CalendarView({ viewMode, setViewMode, events, month, setMonth, selectedDate, setSelectedDate, onClick, onAddEvent }) {
  return (
    <div className="space-y-4">
      <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
        <div>
          <h2 className="text-lg font-semibold text-zinc-950">Calendar View</h2>
          <p className="mt-1 text-sm text-zinc-600">Switch between month, week, and day layouts while staying on one clean calendar page.</p>
        </div>
        <div className="flex flex-col items-stretch gap-2 sm:items-end">
          <div className="grid w-full grid-cols-3 rounded-2xl border border-zinc-200 bg-white/80 p-1 shadow-sm sm:inline-flex sm:w-auto">
            {['Month', 'Week', 'Day'].map(mode => (
              <button key={mode} type="button" onClick={() => setViewMode(mode)} className={`rounded-xl px-4 py-2 text-sm font-medium transition ${viewMode === mode ? 'bg-zinc-900 text-white shadow-sm' : 'text-zinc-700 hover:bg-white'}`}>{mode}</button>
            ))}
          </div>
          <button type="button" onClick={() => onAddEvent?.()} className="inline-flex items-center justify-center gap-2 rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5"><Plus size={16} /> Add Event</button>
        </div>
      </div>
      <CalendarNavigator viewMode={viewMode} month={month} setMonth={setMonth} selectedDate={selectedDate} setSelectedDate={setSelectedDate} showKey />
      {viewMode === 'Month' && <MonthView events={events} month={month} onClick={onClick} selectedDate={selectedDate} setSelectedDate={setSelectedDate} setViewMode={setViewMode} onAddEvent={onAddEvent} />}
      {viewMode === 'Week' && <WeekView events={events} selectedDate={selectedDate} onClick={onClick} />}
      {viewMode === 'Day' && <DayView events={events} selectedDate={selectedDate} onClick={onClick} />}
    </div>
  );
}


function normalizeMemberName(value) {
  return value.trim().replace(/\s+/g, ' ');
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

function TeamMembers({ photographers, assistants, setPhotographers, setAssistants, reloadTeamMembers, teamMembersMessage }) {
  const [photographerInput, setPhotographerInput] = useState('');
  const [assistantInput, setAssistantInput] = useState('');
  const [saving, setSaving] = useState(false);
  const [message, setMessage] = useState('');

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
        <p className="mt-1 text-sm text-zinc-700">Team Members now save to Supabase. Use the trash icon to deactivate someone instead of deleting them, so historical staffing remains usable later.</p>
        {teamMembersMessage ? <p className="mt-3 rounded-2xl border border-zinc-200 bg-white/70 p-3 text-sm text-zinc-700">{teamMembersMessage}</p> : null}
        {message ? <p className="mt-3 rounded-2xl border border-zinc-200 bg-white/70 p-3 text-sm text-zinc-700">{message}</p> : null}
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
    const cutoff = Date.now() - (72 * 60 * 60 * 1000);
    return (events || [])
      .filter(event => {
        if (!event?.createdAt) return false;
        const createdTime = new Date(event.createdAt).getTime();
        const isRecent = Number.isFinite(createdTime) && createdTime >= cutoff;
        const isManual = event.source === 'manual_app' || event.source === 'app' || String(event.id || '').startsWith('custom-');
        return isRecent && isManual && event.active !== false;
      })
      .sort((a, b) => new Date(b.createdAt).getTime() - new Date(a.createdAt).getTime())
      .slice(0, 8);
  }, [events]);

  return (
    <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
      <div className="flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
        <div>
          <h2 className="text-lg font-semibold text-zinc-950">Recently Added Events</h2>
          <p className="mt-1 text-sm text-zinc-600">Manual events added to the calendar in the last 72 hours.</p>
        </div>
        <Pill className="border-zinc-200 bg-white text-zinc-600">{recentEvents.length} recent</Pill>
      </div>

      <div className="mt-4 space-y-2">
        {recentEvents.length ? recentEvents.map(event => (
          <button key={event.supabaseId || event.id} type="button" onClick={() => onClick?.(event)} className="block w-full rounded-2xl border border-zinc-200 bg-cream/75 p-3 text-left transition hover:bg-white hover:shadow-sm">
            <div className="flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
              <div className="min-w-0">
                <div className="truncate text-sm font-semibold text-zinc-950">{event.title}</div>
                <div className="mt-1 text-xs text-zinc-500">{formatDate(event.date)} · {event.time || 'TBD'}{event.canonicalSchool ? ` · ${event.canonicalSchool}` : ''}</div>
              </div>
              <Pill className={TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}>{event.type}</Pill>
            </div>
          </button>
        )) : (
          <div className="rounded-2xl border border-dashed border-zinc-200 bg-white/60 p-4 text-center text-sm text-zinc-500">No manual events added in the last 72 hours.</div>
        )}
      </div>
    </section>
  );
}

function RemovedEventsModule({ events, onRestore }) {
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
              <button type="button" onClick={() => onRestore(event)} className="rounded-2xl border border-[#AEBB9E] bg-[#DDE8D2]/80 px-4 py-2 text-sm font-semibold text-zinc-900 shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2]">Restore</button>
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

function Drawer({ event, onClose, onViewSchool, onEditEvent, onRemoveEvent }) {
  return <AnimatePresence>{event && <motion.aside initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/25 p-4 backdrop-blur-sm" onClick={onClose}><motion.div initial={{ x: 420 }} animate={{ x: 0 }} exit={{ x: 420 }} transition={{ type: 'spring', damping: 28, stiffness: 260 }} onClick={(e) => e.stopPropagation()} className="ml-auto flex h-full max-w-xl flex-col overflow-hidden rounded-[2rem] bg-cream shadow-2xl"><div className="border-b border-zinc-200 p-5"><div className="flex items-start justify-between gap-4"><div><div className="flex flex-wrap gap-2"><Pill className={TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}>{event.type}</Pill>{getEventIrm(event) ? <Pill className="border-amber-200 bg-amber-50 text-amber-900">IRM {getEventIrm(event)}</Pill> : null}{event.supabaseId ? <Pill className="border-emerald-200 bg-emerald-50 text-emerald-900">Editable</Pill> : <Pill className="border-zinc-200 bg-white text-zinc-500">Historical Event</Pill>}</div><h2 className="mt-3 text-2xl font-semibold text-zinc-950">{event.title}</h2><p className="mt-1 text-sm text-zinc-500">{getEventDateLabel(event)} · {getEventTimeLabel(event)}</p></div><button onClick={onClose} className="rounded-full bg-white p-2 text-zinc-500 hover:text-zinc-900"><X size={18} /></button></div></div><div className="space-y-4 overflow-auto p-5">{event.supabaseId ? <button type="button" onClick={() => onEditEvent(event)} className="w-full rounded-2xl bg-zinc-900 px-4 py-3 text-left text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5">Edit Event</button> : null}{event.supabaseId ? <button type="button" onClick={() => onRemoveEvent(event)} className="w-full rounded-2xl border border-rose-200 bg-rose-50 px-4 py-3 text-left text-sm font-semibold text-rose-700 shadow-sm transition hover:-translate-y-0.5 hover:bg-rose-100">Remove Event</button> : null}{event.canonicalSchool ? <button type="button" onClick={() => onViewSchool(event.canonicalSchool)} className="w-full rounded-2xl border border-[#AEBB9E] bg-[#DDE8D2]/70 px-4 py-3 text-left text-sm font-semibold text-zinc-900 transition hover:-translate-y-0.5 hover:bg-[#DDE8D2] hover:shadow-soft">View {event.canonicalSchool} in School List →</button> : null}<div className="grid gap-3 sm:grid-cols-2"><Info icon={CalendarDays} title="Date Range" value={getEventDateLabel(event)} /><Info icon={Clock} title="Arrival / Start" value={getEventTimeLabel(event)} /><Info icon={ClipboardList} title="Status" value={displayStatus(event.status)} /></div><div className="grid gap-3 sm:grid-cols-2"><Info icon={UserRoundCheck} title="Photographers" value={displayPhotographerAssignment(event)} /><Info icon={Users} title="Assistants" value={displayAssistants(event)} /></div>{getEventIrm(event) ? <Info icon={Clock} title="IRM" value={`${getEventIrm(event)} — informational only`} /> : null}
              <Info icon={Pencil} title="Picture Day Info" value={event.notes || '—'} large /></div></motion.div></motion.aside>}</AnimatePresence>;
}

function Info({ icon: Icon, title, value, large = false }) {
  return <div className="rounded-3xl border border-zinc-200 bg-white/70 p-4"><div className="flex items-center gap-2 text-xs font-semibold uppercase tracking-wide text-zinc-500"><Icon size={14} />{title}</div><div className={`mt-2 whitespace-pre-wrap text-zinc-800 ${large ? 'text-sm leading-6' : 'text-sm font-medium'}`}>{value}</div></div>;
}


function GlobalSearchResults({ query, schools = SCHOOLS, events, onSelectEvent, onSelectSchool }) {
  const q = query.trim().toLowerCase();
  if (!q) return null;

  const normalizedQuery = normalizeSchoolLookupKey(query);
  const allSchoolMatches = (schools || []).filter(school => school.active !== false && !school.mergedInto && [
    school.name, school.notes, school.address, school.city, school.contactFirst, school.contactLast, school.contactEmail, school.contactPhone
  ].filter(Boolean).join(' ').toLowerCase().includes(q));
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
                <div className="mt-1 text-xs text-zinc-500">{[school.contactFirst, school.contactLast].filter(Boolean).join(' ') || school.city || 'School List match'}{school.irm ? ` · IRM ${school.irm}` : ''}</div>
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

function makeBackupFilename(label, extension) {
  const stamp = new Date().toISOString().replace(/[:.]/g, '-');
  return `ismile-scheduler-${label}-${stamp}.${extension}`;
}

function AdminPage({ events, schools, photographers, assistants, eventsMessage, schoolsMessage, reloadEvents, reloadSchools }) {
  const activeEvents = (events || []).filter(event => event.active !== false);
  const removedEvents = (events || []).filter(event => event.active === false);
  const googleImported = activeEvents.filter(event => event.source === 'google_calendar_import');
  const manualEvents = activeEvents.filter(event => event.source !== 'google_calendar_import');
  const fall2026 = activeEvents.filter(event => event.date >= '2026-09-01' && event.date <= '2026-11-30');
  const schoolLinked = activeEvents.filter(event => event.canonicalSchool);
  const unlinked = activeEvents.filter(event => !event.canonicalSchool);
  const activeSchools = (schools || []).filter(school => school.active !== false);
  const inactiveSchools = (schools || []).filter(school => school.active === false || school.mergedInto);

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
      notes: event.notes || ''
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
      notes: school.notes || ''
    }));
    downloadTextFile(makeBackupFilename('schools', 'csv'), toCsv(rows), 'text/csv;charset=utf-8');
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

      <div className="grid gap-3 md:grid-cols-3">
        <button type="button" onClick={exportPackage} className="rounded-3xl border border-[#AEBB9E] bg-[#DDE8D2]/70 p-5 text-left shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2]">
          <div className="text-sm font-bold text-zinc-950">Download Full Backup</div>
          <div className="mt-2 text-sm leading-6 text-zinc-600">JSON package with events, schools, team members, removed events, and counts.</div>
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
  const [quickAssignment, setQuickAssignment] = useState(null);
  const [photographers, setPhotographers] = useState(uniqueCanonicalPhotographers(PHOTOGRAPHERS));
  const [assistants, setAssistants] = useState(ASSISTANTS);
  const [teamMembersMessage, setTeamMembersMessage] = useState('Loading team members from Supabase...');
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

  useEffect(() => {
    setLocalManualEvents(loadLocalManualEvents());
  }, []);

  const importHistoricalEventsToSupabase = async (supabase, existingRows = []) => {
    const existingImportedIds = new Set(
      (existingRows || [])
        .filter(row => row.source === 'imported_code_baseline' && row.source_event_id)
        .map(row => row.source_event_id)
    );

    const rowsToImport = EVENTS
      .filter(event => event?.id && !existingImportedIds.has(event.id))
      .map(importedEventToSupabaseRow);

    if (!rowsToImport.length) {
      return { importedCount: 0, skipped: true };
    }

    const { data, error } = await supabase
      .from('events')
      .insert(rowsToImport)
      .select('*');

    if (error) {
      console.warn('Could not import historical events into Supabase', error);
      return { importedCount: 0, error };
    }

    return { importedCount: data?.length || 0, data: data || [] };
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

      const seededSchools = (seeded || []).map(supabaseRowToSchool).sort((a, b) => a.name.localeCompare(b.name));
      setSchools(seededSchools.length ? seededSchools : SCHOOLS.map(school => ({ ...school, originalName: school.name, active: true })));
      setSchoolsMessage('Seeded the starter School List into Supabase.');
      return;
    }

    const loadedSchools = data.map(supabaseRowToSchool).sort((a, b) => a.name.localeCompare(b.name));
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
      .select('name, role, active')
      .in('role', ['photographer', 'assistant'])
      .order('name', { ascending: true });

    if (error) {
      console.warn('Could not load team members from Supabase', error);
      setTeamMembersMessage(`Could not load team members from Supabase: ${error.message}. Using the built-in list for now.`);
      return;
    }

    if (!data?.length) {
      const seedRows = [
        ...PHOTOGRAPHERS.map(name => ({ name, role: 'photographer', active: true })),
        ...ASSISTANTS.map(name => ({ name, role: 'assistant', active: true }))
      ];

      const { error: seedError } = await supabase.from('staff_members').insert(seedRows);

      if (seedError) {
        console.warn('Could not seed team members into Supabase', seedError);
        setTeamMembersMessage(`Supabase team member table is empty, but seeding failed: ${seedError.message}. Check staff_members permissions.`);
        return;
      }

      setPhotographers(uniqueCanonicalPhotographers(PHOTOGRAPHERS).sort((a, b) => a.localeCompare(b)));
      setAssistants([...ASSISTANTS].sort((a, b) => a.localeCompare(b)));
      setTeamMembersMessage('Seeded the starter photographers and assistants into Supabase.');
      return;
    }

    const activePhotographers = uniqueCanonicalPhotographers(data
      .filter(member => member.active && member.role === 'photographer')
      .map(member => member.name))
      .sort((a, b) => a.localeCompare(b));

    const activeAssistants = data
      .filter(member => member.active && member.role === 'assistant')
      .map(member => member.name)
      .sort((a, b) => a.localeCompare(b));

    setPhotographers(activePhotographers);
    setAssistants(activeAssistants);
    setTeamMembersMessage('Team Members are loading from Supabase.');
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

  const isValidEvent = (event) => event && typeof event.date === 'string' && event.date.length >= 10 && typeof event.title === 'string' && event.active !== false;
  const allEvents = useMemo(() => {
    const baseEvents = supabaseEvents.length ? supabaseEvents.filter(event => event.active !== false) : EVENTS;
    return mergeEventsById(baseEvents, localManualEvents).filter(isValidEvent);
  }, [supabaseEvents, localManualEvents]);
  const removedEvents = useMemo(() => supabaseEvents.filter(event => event.active === false), [supabaseEvents]);
  const handleScheduleEvent = async (event) => {
    const eventWithId = { ...event, id: event.id || `custom-${Date.now()}` };

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
      setQuery('');
      setCalendarMode('Month');
      setEventsMessage(
        readbackConfirmed
          ? (eventWithId.supabaseId ? 'Event changes saved and verified in Supabase.' : `Event saved and verified in Supabase for ${formatDate(confirmedEvent.date)}.`)
          : `Event appeared to save, but Supabase readback could not verify it: ${readbackResult.error?.message || 'unknown readback error'}. It is shown with a warning until verified.`
      );
      setMonth(monthKey(confirmedEvent.date));
      setSelectedDate(confirmedEvent.date);
      setActiveTab('Calendar View');
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

  const handleQuickAssignmentSave = async (event) => {
    const saved = await handleScheduleEvent(event);
    if (saved) {
      setQuickAssignment(null);
      setActiveTab('Overview');
    }
  };

  const openAddEvent = (date = selectedDate || todayKey()) => {
    const safeDate = typeof date === 'string' && date.length >= 10 ? date : selectedDate || todayKey();
    setAddingEventDefaultDate(safeDate);
    setSelectedDate(safeDate);
    setAddingEvent(true);
  };

  const queryFilteredEvents = useMemo(() => {
    const q = query.trim().toLowerCase();
    if (!q) return allEvents;
    return allEvents.filter(event => event && [event.title, event.canonicalSchool, event.type, event.status, event.notes, event.history, ...(event.photographers || []), ...(event.assistants || [])].filter(Boolean).join(' ').toLowerCase().includes(q));
  }, [query, allEvents]);

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
      <Header query={query} setQuery={setQuery} activeTab={activeTab} setActiveTab={setActiveTab} />
      <div className="mx-auto max-w-7xl space-y-6 px-3 pb-28 pt-4 sm:px-6 sm:pb-6 sm:pt-6">
        <LoginRequiredNotice />
        {['Overview', 'Calendar View'].includes(activeTab) ? <OperationalSummary events={allEvents} /> : null}
        {eventsMessage && activeTab === 'Calendar View' ? (
          <div className="flex flex-col gap-2 rounded-3xl border border-[#AEBB9E] bg-[#DDE8D2]/55 p-3 text-sm text-zinc-700 shadow-sm sm:flex-row sm:items-center sm:justify-between">
            <div>{eventsMessage}</div>
            <button type="button" onClick={loadEventsFromSupabase} className="rounded-2xl border border-[#AEBB9E] bg-white/80 px-3 py-2 text-xs font-semibold text-zinc-900 shadow-sm transition hover:bg-white">Reload Supabase Events</button>
          </div>
        ) : null}
        {activeTab === 'Calendar View' && localManualEvents.some(event => event.localBackupOnly) ? <div className="rounded-3xl border border-amber-300 bg-amber-50 p-3 text-sm font-semibold text-amber-950 shadow-sm">Some manual events are being shown from this browser's safety backup because Supabase readback has not verified them yet. Run the verification SQL below if this appears unexpectedly.</div> : null}
        <GlobalSearchResults query={query} schools={schools} events={allEvents} onSelectEvent={setSelected} onSelectSchool={(schoolName) => { setSelectedSchoolName(schoolName); setActiveTab('School List'); }} />
        <section className="rounded-[2rem] border border-zinc-200/80 bg-white/35 p-3 shadow-soft sm:p-4">
          {activeTab === 'Overview' && <>
            <OverviewControls viewMode={overviewMode} setViewMode={setOverviewMode} month={month} setMonth={setMonth} selectedDate={selectedDate} setSelectedDate={setSelectedDate} />
            <PlanningBoard events={overviewPeriodEvents} onClick={setSelected} onAddEvent={() => openAddEvent(selectedDate)} onQuickAssign={(event, mode) => setQuickAssignment({ event, mode })} />
            <div className="pt-6">
              <RecentlyAddedEventsModule events={allEvents} onClick={setSelected} />
            </div>
            <div className="pt-3">
              <RemovedEventsModule events={removedEvents} onRestore={handleRestoreEvent} />
            </div>
          </>}
          {activeTab === 'Calendar View' && <CalendarView viewMode={calendarMode} setViewMode={setCalendarMode} events={queryFilteredEvents} month={month} setMonth={setMonth} selectedDate={selectedDate} setSelectedDate={setSelectedDate} onClick={setSelected} onAddEvent={openAddEvent} />}
          {activeTab === 'Mobile View' && <MobileView events={queryFilteredEvents} photographers={photographers} selectedDate={selectedDate} setSelectedDate={setSelectedDate} onClick={setSelected} />}
          {activeTab === 'Carrie View' && <CarrieView query={query} onClickEvent={setSelected} photographers={photographers} assistants={assistants} events={allEvents} onSchedule={handleScheduleEvent} schoolsList={schools} setSchools={setSchools} onSchoolAdded={(schoolName) => { setSelectedSchoolName(schoolName); setActiveTab('School List'); }} />}
          {activeTab === 'School List' && <SchoolPages query={query} onClickEvent={setSelected} events={allEvents} selectedName={selectedSchoolName} setSelectedName={setSelectedSchoolName} schools={schools} setSchools={setSchools} reloadSchools={loadSchoolsFromSupabase} schoolsMessage={schoolsMessage} />}
          {activeTab === 'Team Members' && <TeamMembers photographers={photographers} assistants={assistants} setPhotographers={setPhotographers} setAssistants={setAssistants} reloadTeamMembers={loadTeamMembersFromSupabase} teamMembersMessage={teamMembersMessage} />}
          {activeTab === 'Admin' && <AdminPage events={allEvents} schools={schools} photographers={photographers} assistants={assistants} eventsMessage={eventsMessage} schoolsMessage={schoolsMessage} reloadEvents={loadEventsFromSupabase} reloadSchools={loadSchoolsFromSupabase} />}
        </section>
        <section className="hidden gap-4 md:grid md:grid-cols-3">
          <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4"><h3 className="font-semibold">Photographers</h3><p className="mt-2 text-sm text-zinc-600">{photographers.join(', ')}</p></div>
          <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4"><h3 className="font-semibold">Assistants</h3><p className="mt-2 text-sm text-zinc-600">{assistants.join(', ')}</p></div>
          <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4"><h3 className="font-semibold">Rule</h3><p className="mt-2 text-sm text-zinc-600">Humans make scheduling decisions. This app supports reference, visibility, and notes — not automation.</p></div>
        </section>
      </div>
      <MobileBottomNav activeTab={activeTab} setActiveTab={setActiveTab} />
      {addingEvent && <AddEventModal photographers={photographers} assistants={assistants} events={allEvents} onClose={() => setAddingEvent(false)} onSave={handleScheduleEvent} defaultDate={addingEventDefaultDate} sourceLabel={activeTab} />}
      {quickAssignment && <QuickAssignmentModal event={quickAssignment.event} mode={quickAssignment.mode} photographers={photographers} assistants={assistants} onClose={() => setQuickAssignment(null)} onSave={handleQuickAssignmentSave} />}
      <Drawer event={selected} onClose={() => setSelected(null)} onEditEvent={(event) => { setEditingEvent(event); setSelected(null); }} onRemoveEvent={handleRemoveEvent} onViewSchool={(schoolName) => { setSelectedSchoolName(schoolName); setActiveTab('School List'); setSelected(null); }} />
      {editingEvent && <AddEventModal photographers={photographers} assistants={assistants} events={allEvents} onClose={() => setEditingEvent(null)} onSave={handleScheduleEvent} defaultDate={editingEvent.date || selectedDate} sourceLabel="Edit Event" initialEvent={editingEvent} />}
    </main>
  );
}
