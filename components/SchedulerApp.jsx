'use client';

import { useEffect, useMemo, useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { CalendarDays, Search, Users, ClipboardList, Clock, X, History, UserRoundCheck, CloudRain, Pencil, ChevronLeft, ChevronRight, Plus, Trash2, Image as ImageIcon, BarChart3, Wand2 } from 'lucide-react';
import { EVENTS, STATUSES, TYPE_COLORS, PHOTOGRAPHERS, ASSISTANTS, ADMINS, SCHOOLS } from '../lib/scheduleData';

const tabs = ['Overview', 'Calendar View', 'Carrie View', 'School List', 'Team Members'];

function Pill({ children, className = '' }) {
  return <span className={`inline-flex items-center rounded-full border px-2.5 py-1 text-xs font-medium ${className}`}>{children}</span>;
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

function addDays(date, delta) {
  const d = new Date(date + 'T12:00:00');
  d.setDate(d.getDate() + delta);
  return `${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, '0')}-${String(d.getDate()).padStart(2, '0')}`;
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
  return status === 'Needs Photographers Scheduled' ? 'Needs Photographers Assigned' : status;
}

function displayPhotographerAssignment(event) {
  return event.photographers?.length ? event.photographers.join(', ') : 'Needs Photographers Assigned';
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

function EventCard({ event, onClick, compact = false }) {
  return (
    <motion.button
      layout
      onClick={() => onClick(event)}
      className="w-full rounded-2xl border border-zinc-200/80 bg-white/85 p-3 text-left shadow-sm transition hover:-translate-y-0.5 hover:shadow-soft"
    >
      <div className="flex items-start justify-between gap-2">
        <div className="min-w-0">
          <div className="truncate text-sm font-semibold text-zinc-900">{event.title}</div>
          <div className="mt-1 flex flex-wrap items-center gap-1.5 text-xs text-zinc-500">
            <span>{event.time}</span>
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
            <div className="flex items-center gap-2 text-sm font-medium text-zinc-500"><CalendarDays size={16} /> Historical schedule imports wired</div>
            <h1 className="mt-1 text-3xl font-semibold tracking-tight text-zinc-950">iSmile Scheduler</h1>
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
            <nav className="grid grid-cols-2 gap-2 sm:grid-cols-5">
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
    .filter(event => event && event.date === date && event.type !== 'Call or Meeting' && event.type !== 'Edit Day')
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

  return (
    <div className={`rounded-3xl border p-4 shadow-sm ${capacity.className}`}>
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

function PlanningBoard({ events, onClick, onAddEvent }) {
  const overviewStatuses = STATUSES.filter(status => status !== 'Completed');
  return (
    <div className="space-y-4">
      <div className="flex justify-end">
        <button type="button" onClick={onAddEvent} className="inline-flex items-center gap-2 rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5"><Plus size={16} /> Add School or Event</button>
      </div>
      <div className="grid gap-4 lg:grid-cols-3">
      {overviewStatuses.map(status => {
        const columnEvents = events.filter(e => e.status === status || (status === 'Needs Photographers Scheduled' && e.status === 'Needs Photographers Assigned'));
        return (
          <div key={status} className="rounded-3xl border border-zinc-200/80 bg-white/45 p-3">
            <div className="mb-3 flex items-center justify-between">
              <h2 className="text-sm font-semibold text-zinc-800">{displayStatus(status)}</h2>
              <Pill className="border-zinc-200 bg-white text-zinc-600">{columnEvents.length}</Pill>
            </div>
            <div className="space-y-3">{columnEvents.map(event => <EventCard key={event.id} event={event} onClick={onClick} />)}</div>
          </div>
        );
      })}
      </div>
    </div>
  );
}

function MonthView({ events, month, onClick, selectedDate, setSelectedDate, setViewMode }) {
  const totalDays = daysInMonth(month);
  const offset = firstDayOffset(month);
  return <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4 shadow-sm"><div className="grid grid-cols-7 gap-2 text-center text-xs font-semibold uppercase tracking-wide text-zinc-500">{['Sun','Mon','Tue','Wed','Thu','Fri','Sat'].map(d => <div key={d}>{d}</div>)}</div><div className="mt-2 grid grid-cols-7 gap-2">{Array.from({ length: offset }).map((_, i) => <div key={`blank-${i}`} />)}{Array.from({ length: totalDays }, (_, i) => i + 1).map(day => { const date = `${month}-${String(day).padStart(2,'0')}`; const dayEvents = events.filter(e => e && e.date === date); return <div key={date} className={`min-h-[132px] rounded-2xl border p-2 ${selectedDate === date ? 'border-[#AEBB9E] bg-[#DDE8D2]/60' : 'border-zinc-200 bg-cream/80'}`}><button type="button" onClick={() => { setSelectedDate(date); setViewMode('Day'); }} className="mb-2 text-xs font-semibold text-zinc-500 hover:text-zinc-900">{day}</button><div className="space-y-1.5">{dayEvents.map(event => <button key={event.id} onClick={() => onClick(event)} className={`block w-full truncate rounded-xl border px-2 py-1.5 text-left text-[11px] font-medium ${TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}`}>{event.title}</button>)}</div></div>})}</div>{events.length === 0 ? <div className="mt-4 rounded-2xl border border-dashed border-zinc-200 bg-white/60 p-4 text-center text-sm text-zinc-500">No events scheduled for {monthLabel(month)} yet.</div> : null}</div>;
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
  return event.photographers.filter(Boolean).length;
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
  const weekEvents = (events || []).filter(event => event && event.date >= start && event.date <= end && (event.photographers || []).includes(photographer));
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
  matches.forEach(event => (event.photographers || []).forEach(name => {
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
    (event.photographers || []).forEach(name => {
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
  const weekEvents = days.flatMap(date => events.filter(e => e && e.date === date));
  const weeklyRollouts = weekEvents.reduce((total, event) => total + getRolloutCount(event), 0);
  const capacity = getCapacityTone(weeklyRollouts);
  const pct = Math.min(100, Math.round((weeklyRollouts / 22) * 100));

  return (
    <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4 shadow-sm">
      <div className="mb-4 flex flex-col gap-3 lg:flex-row lg:items-center lg:justify-between">
        <h2 className="text-sm font-semibold text-zinc-800">Week of {shortDate(start)} – {shortDate(end)}</h2>
        <div className={`rounded-2xl border px-4 py-3 ${capacity.className}`}>
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
        </div>
      </div>
      <div className="space-y-4">
        {days.map(date => {
          const dayEvents = events.filter(e => e && e.date === date);
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
  const dayEvents = events.filter(event => event && event.date === selectedDate);
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

function getFall2026Availability(events = EVENTS, photographers = PHOTOGRAPHERS) {
  const dates = [];
  const start = new Date('2026-09-01T12:00:00');
  const end = new Date('2026-11-30T12:00:00');
  for (let d = new Date(start); d <= end; d.setDate(d.getDate() + 1)) {
    const day = d.getDay();
    if (day === 0 || day === 6) continue;
    const key = d.toISOString().slice(0, 10);
    const scheduled = events.filter(event => event && event.date === key);
    const bookedPhotographers = new Set(scheduled.flatMap(event => event.photographers || []));
    const availablePhotographers = photographers.filter(name => !bookedPhotographers.has(name));
    dates.push({ date: key, scheduledCount: scheduled.length, availablePhotographers, scheduled });
  }
  return dates;
}

function SchoolHistoryPanel({ school, onClickEvent, onEdit, onMerge }) {
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
  return (
    <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
      <div className="flex flex-col gap-3 sm:flex-row sm:items-start sm:justify-between">
        <div>
          <h2 className="text-xl font-semibold text-zinc-950">{school.name}</h2>
          <p className="mt-1 text-sm text-zinc-600">School history page: past picture days, makeups, photographers, assistants, and future scheduling status.</p>
          {school.mergedFrom?.length ? <p className="mt-1 text-xs text-zinc-500">Merged with: {school.mergedFrom.join(', ')}</p> : null}
        </div>
        <div className="flex flex-wrap items-center gap-2">
          {school.irm ? <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">IRM {school.irm}</Pill> : <Pill className="border-zinc-200 bg-white text-zinc-600">No IRM</Pill>}
          {onEdit ? <button type="button" onClick={() => onEdit(school)} className="rounded-full border border-zinc-200 bg-white px-3 py-1.5 text-xs font-semibold text-zinc-700 transition hover:bg-zinc-50">Edit</button> : null}
          {onMerge ? <button type="button" onClick={() => onMerge(school)} className="rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/70 px-3 py-1.5 text-xs font-semibold text-zinc-800 transition hover:bg-[#DDE8D2]">Merge</button> : null}
        </div>
      </div>
      <div className="mt-4 grid gap-3 md:grid-cols-4">
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
        <div className="mt-3 grid gap-2 md:grid-cols-2 xl:grid-cols-3">
          {getSchoolPhotographerHistory(school.history).length ? getSchoolPhotographerHistory(school.history).map(item => (
            <div key={item.name} className="rounded-2xl border border-zinc-100 bg-cream/70 p-3 text-sm">
              <div className="font-semibold text-zinc-900">{item.name}</div>
              <div className="mt-1 text-xs text-zinc-500">{item.count} historical assignment{item.count === 1 ? '' : 's'}</div>
              {item.lastDate ? <div className="mt-2 text-xs text-zinc-600">Last: {shortDate(item.lastDate)} · {item.lastTitle}</div> : null}
            </div>
          )) : <div className="text-xs text-zinc-400">No photographer history imported yet.</div>}
        </div>
      </div>
      <div className="mt-4 grid gap-3 md:grid-cols-2">
        <div className="rounded-2xl border border-zinc-200 bg-white/70 p-3 text-sm text-zinc-600">
          <div className="font-semibold text-zinc-800">Address</div>
          <div className="mt-1 whitespace-pre-wrap">{[school.address, [school.city, school.stateZip].filter(Boolean).join(', ')].filter(Boolean).join('\n') || '—'}</div>
        </div>
        <div className="rounded-2xl border border-zinc-200 bg-white/70 p-3 text-sm text-zinc-600">
          <div className="font-semibold text-zinc-800">Primary Contact</div>
          <div className="mt-1">{[school.contactFirst, school.contactLast].filter(Boolean).join(' ') || '—'}</div>
          {school.contactTitle ? <div className="mt-1 text-xs text-zinc-500">{school.contactTitle}</div> : null}
          {school.contactPhone ? <div className="mt-2">{school.contactPhone}</div> : null}
          {school.contactEmail ? <div className="break-words">{school.contactEmail}</div> : null}
        </div>
      </div>
      <div className="mt-3 rounded-2xl border border-zinc-200 bg-white/70 p-3 text-sm text-zinc-600">
        <span className="font-semibold text-zinc-800">Notes:</span> {school.notes || '—'}
      </div>
      <div className="mt-3 rounded-2xl border border-zinc-200 bg-white/70 p-3 text-sm text-zinc-600">
        <div className="flex items-center gap-2 font-semibold text-zinc-800"><ImageIcon size={16} /> Reference Images</div>
        {school.referenceImages?.length ? (
          <div className="mt-3 grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
            {school.referenceImages.map((image) => (
              <a key={image.id} href={image.src} target="_blank" rel="noreferrer" className="group overflow-hidden rounded-2xl border border-zinc-200 bg-cream/70 transition hover:bg-white hover:shadow-sm">
                <img src={image.src} alt={image.caption || 'School reference'} className="h-36 w-full object-cover transition group-hover:scale-[1.02]" />
                <div className="p-2 text-xs text-zinc-600">{image.caption || 'Reference image'}</div>
              </a>
            ))}
          </div>
        ) : <div className="mt-2 text-xs text-zinc-400">No reference images yet.</div>}
      </div>
    </section>
  );
}


function SchedulingModal({ school, photographers, assistants, events = [], onClose, onSave }) {
  const [date, setDate] = useState('2026-09-01');
  const [selectedPhotographers, setSelectedPhotographers] = useState([]);
  const [selectedAssistants, setSelectedAssistants] = useState([]);
  const [notes, setNotes] = useState('');

  if (!school) return null;

  const toggleName = (name, setter) => {
    setter(prev => prev.includes(name) ? prev.filter(item => item !== name) : [...prev, name]);
  };

  const saveSchedule = () => {
    const event = {
      id: `2026-${school.name.toLowerCase().replace(/[^a-z0-9]+/g, '-')}-${Date.now()}`,
      date,
      title: `${school.name} Fall Picture Day`,
      canonicalSchool: school.name,
      type: 'Fall Picture Day',
      status: selectedPhotographers.length ? 'Scheduled' : 'Needs Photographers Assigned',
      photographers: selectedPhotographers,
      assistants: selectedAssistants,
      features: [],
      irm: school.irm || null,
      time: 'TBD',
      notes: notes || 'Scheduled from Carrie View. Details can be refined later.',
      rainInfo: '',
      history: school.lastEvent ? `Fall 2025 reference: ${formatDate(school.lastEvent.date)} — ${school.lastEvent.title}. Assigned photographers: ${school.lastEvent.photographers?.join(', ') || '—'}.` : 'Created from Carrie View.',
    };
    onSave(event);
    onClose();
  };

  return (
    <AnimatePresence>
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/30 p-4 backdrop-blur-sm" onClick={onClose}>
        <motion.div initial={{ y: 30, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 20, opacity: 0 }} onClick={(e) => e.stopPropagation()} className="mx-auto mt-8 max-w-3xl overflow-hidden rounded-[2rem] bg-cream shadow-2xl">
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
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Fall 2026 Date</div>
                <input type="date" min="2026-09-01" max="2026-11-30" value={date} onChange={(e) => setDate(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
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
                {assistants.map(name => (
                  <button key={name} type="button" onClick={() => toggleName(name, setSelectedAssistants)} className={`rounded-full border px-3 py-2 text-sm transition ${selectedAssistants.includes(name) ? 'border-[#AEBB9E] bg-[#DDE8D2] text-zinc-900' : 'border-zinc-200 bg-white text-zinc-700 hover:bg-zinc-50'}`}>{name}</button>
                ))}
              </div>
            </section>

            <label className="block rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Scheduling Notes</div>
              <textarea value={notes} onChange={(e) => setNotes(e.target.value)} rows={4} placeholder="Optional notes for Carrie/Steph/Matt..." className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
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


function AddEventModal({ photographers, assistants, events = [], onClose, onSave, defaultDate = '2026-09-01', sourceLabel = 'prototype' }) {
  const [date, setDate] = useState(defaultDate);
  const [title, setTitle] = useState('');
  const [schoolName, setSchoolName] = useState('');
  const [eventType, setEventType] = useState('Fall Picture Day');
  const [selectedPhotographers, setSelectedPhotographers] = useState([]);
  const [selectedAssistants, setSelectedAssistants] = useState([]);
  const [notes, setNotes] = useState('');
  const [error, setError] = useState('');

  const schoolOptions = useMemo(() => SCHOOLS.map(school => school.name).sort((a, b) => a.localeCompare(b)), []);
  const matchedSchool = useMemo(() => SCHOOLS.find(school => school.name.toLowerCase() === schoolName.trim().toLowerCase()), [schoolName]);

  const toggleName = (name, setter) => setter(prev => prev.includes(name) ? prev.filter(item => item !== name) : [...prev, name]);
  const save = () => {
    const cleanName = schoolName.trim();
    if (!cleanName) {
      setError('Please choose an existing school/account or type a new name.');
      return;
    }
    const cleanTitle = title.trim() || `${cleanName} ${eventType}`;
    const event = {
      id: `custom-${Date.now()}`,
      date,
      title: cleanTitle,
      canonicalSchool: cleanName,
      type: eventType,
      status: selectedPhotographers.length ? 'Scheduled' : 'Needs Photographers Assigned',
      photographers: selectedPhotographers,
      assistants: selectedAssistants,
      features: [],
      irm: matchedSchool?.irm || null,
      time: 'TBD',
      notes: notes || '',
      rainInfo: '',
      history: matchedSchool ? 'Created from Add School or Event using an existing school/account.' : 'Created from Add School or Event using a new school/account name.'
    };
    onSave(event);
    onClose();
  };

  return (
    <AnimatePresence>
      <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/30 p-4 backdrop-blur-sm" onClick={onClose}>
        <motion.div initial={{ y: 30, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 20, opacity: 0 }} onClick={(e) => e.stopPropagation()} className="mx-auto mt-8 max-w-3xl overflow-hidden rounded-[2rem] bg-cream shadow-2xl">
          <div className="border-b border-zinc-200 p-5">
            <div className="flex items-start justify-between gap-4">
              <div>
                <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">Add School or Event</Pill>
                <h2 className="mt-3 text-2xl font-semibold text-zinc-950">Create a scheduled item</h2>
                <p className="mt-1 text-sm text-zinc-600">Choose from the school list or type a new school/account name. The name is required.</p>
              </div>
              <button onClick={onClose} className="rounded-full bg-white p-2 text-zinc-500 hover:text-zinc-900"><X size={18} /></button>
            </div>
          </div>
          <div className="max-h-[72vh] space-y-4 overflow-auto p-5">
            {error ? <div className="rounded-2xl border border-rose-200 bg-rose-50 px-4 py-3 text-sm font-medium text-rose-700">{error}</div> : null}
            <div className="grid gap-4 md:grid-cols-2">
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Date</div>
                <input type="date" value={date} onChange={(e) => setDate(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
              </label>
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Event Type</div>
                <select value={eventType} onChange={(e) => setEventType(e.target.value)} className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4">
                  {Object.keys(TYPE_COLORS).map(type => <option key={type} value={type}>{type}</option>)}
                </select>
              </label>
            </div>
            <div className="grid gap-4 md:grid-cols-2">
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">School / Event Name <span className="text-rose-600">*</span></div>
                <input
                  list="school-account-options"
                  value={schoolName}
                  onChange={(e) => { setSchoolName(e.target.value); setError(''); }}
                  placeholder="Select from list or type a new name"
                  className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4"
                />
                <datalist id="school-account-options">
                  {schoolOptions.map(name => <option key={name} value={name} />)}
                </datalist>
                <div className="mt-2 text-xs text-zinc-500">Existing schools auto-fill IRM when available. New names are allowed.</div>
              </label>
              <label className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
                <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Title</div>
                <input value={title} onChange={(e) => setTitle(e.target.value)} placeholder="Optional — auto-fills from name/type" className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
                {matchedSchool?.irm ? <div className="mt-2"><Pill className="border-amber-200 bg-amber-50 text-amber-900">IRM {matchedSchool.irm}</Pill></div> : null}
              </label>
            </div>
            <PhotographerAssignmentPicker photographers={photographers} selectedPhotographers={selectedPhotographers} setSelectedPhotographers={setSelectedPhotographers} events={events} date={date} schoolName={schoolName} />
            <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <h3 className="text-sm font-semibold text-zinc-900">Assistants</h3>
              <div className="mt-3 flex flex-wrap gap-2">{assistants.map(name => <button key={name} type="button" onClick={() => toggleName(name, setSelectedAssistants)} className={`rounded-full border px-3 py-2 text-sm transition ${selectedAssistants.includes(name) ? 'border-[#AEBB9E] bg-[#DDE8D2] text-zinc-900' : 'border-zinc-200 bg-white text-zinc-700 hover:bg-zinc-50'}`}>{name}</button>)}</div>
            </section>
            <label className="block rounded-3xl border border-zinc-200 bg-white/70 p-4">
              <div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Notes</div>
              <textarea value={notes} onChange={(e) => setNotes(e.target.value)} rows={4} placeholder="Optional notes..." className="mt-2 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm outline-none ring-sage/30 focus:ring-4" />
            </label>
          </div>
          <div className="flex justify-end gap-2 border-t border-zinc-200 p-5">
            <button type="button" onClick={onClose} className="rounded-2xl border border-zinc-200 bg-white px-4 py-2 text-sm font-semibold text-zinc-700">Cancel</button>
            <button type="button" onClick={save} className="rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm">Save Event</button>
          </div>
        </motion.div>
      </motion.div>
    </AnimatePresence>
  );
}

function CarrieView({ query, onClickEvent, photographers, assistants, events, onSchedule }) {
  const schools = useMemo(() => getSchoolsToSchedule(events), [events]);
  const availability = useMemo(() => getFall2026Availability(events, photographers), [events, photographers]);
  const [selectedSchool, setSelectedSchool] = useState(schools[0] || null);
  const [schedulingSchool, setSchedulingSchool] = useState(null);
  const [addingEvent, setAddingEvent] = useState(false);
  useEffect(() => {
    if (!selectedSchool && schools.length) setSelectedSchool(schools[0]);
  }, [schools, selectedSchool]);

  const q = query.trim().toLowerCase();
  const filteredSchools = q
    ? schools.filter(item => [item.name, item.displayName, item.notes, item.lastEvent?.title, item.lastEvent?.notes, ...(item.referencePhotographers || []), ...(item.lastEvent?.photographers || []), ...(item.lastEvent?.assistants || [])].filter(Boolean).join(' ').toLowerCase().includes(q))
    : schools;

  return (
    <div className="space-y-4">
      <div className="grid gap-4 xl:grid-cols-[1.25fr_1fr]">
        <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
          <div className="mb-4 flex flex-col gap-2 sm:flex-row sm:items-end sm:justify-between">
            <div>
              <h2 className="text-lg font-semibold text-zinc-950">To Be Scheduled</h2>
              <p className="mt-1 text-sm text-zinc-600">Click a school to schedule it for Fall 2026. Since Fall 2026 starts blank, this is the full working list until schools are saved.</p>
            </div>
            <div className="flex flex-wrap gap-2"><button type="button" onClick={() => setAddingEvent(true)} className="inline-flex items-center gap-2 rounded-2xl bg-zinc-900 px-4 py-2 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5"><Plus size={16} /> Add School or Event</button><Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">{filteredSchools.length} to schedule</Pill></div>
          </div>
          <div className="max-h-[680px] space-y-2 overflow-auto pr-1">
            {filteredSchools.map(item => (
              <button key={item.name} onClick={() => { setSelectedSchool(item); setSchedulingSchool(item); }} className={`w-full rounded-2xl border p-3 text-left transition hover:-translate-y-0.5 hover:shadow-soft ${selectedSchool?.name === item.name ? 'border-[#AEBB9E] bg-[#DDE8D2]/70' : 'border-zinc-200 bg-cream/75'}`}>
                <div className="flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
                  <div>
                    <div className="text-sm font-semibold text-zinc-950">{item.displayName || item.name}</div>
                    <div className="mt-1 text-xs text-zinc-500">{item.lastEvent ? `2025 reference: ${formatDate(item.lastEvent.date)}` : 'No imported Fall 2025 event matched yet'}</div>
                  </div>
                  {item.irm ? <Pill className="border-zinc-200 bg-white text-zinc-700">IRM {item.irm}</Pill> : null}
                </div>
                <div className="mt-2 text-xs text-zinc-600">{item.lastEvent?.title || 'Needs historical matching/review'}</div>
                {item.lastEvent ? <div className="mt-2 text-xs text-zinc-500">2025 Fall assigned: {item.referencePhotographers?.length ? item.referencePhotographers.join(', ') : '—'}</div> : null}
              </button>
            ))}
          </div>
        </section>

        <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
          <div className="mb-4">
            <h2 className="text-lg font-semibold text-zinc-950">Fall 2026 Date Availability</h2>
            <p className="mt-1 text-sm text-zinc-600">Weekdays from September through November. Empty means nothing has been scheduled yet.</p>
          </div>
          <div className="max-h-[680px] space-y-2 overflow-auto pr-1">
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
      </div>
      <SchoolHistoryPanel school={selectedSchool} onClickEvent={onClickEvent} />
      <SchedulingModal school={schedulingSchool} photographers={photographers} assistants={assistants} events={events} onClose={() => setSchedulingSchool(null)} onSave={onSchedule} />
      {addingEvent && <AddEventModal photographers={photographers} assistants={assistants} events={events} onClose={() => setAddingEvent(false)} onSave={onSchedule} sourceLabel="Carrie View" />}
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
      referenceImages
    });
  };

  return (
    <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/25 p-4 backdrop-blur-sm" onClick={onClose}>
      <motion.div initial={{ y: 20, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 20, opacity: 0 }} onClick={(e) => e.stopPropagation()} className="mx-auto mt-6 max-h-[90vh] max-w-2xl overflow-auto rounded-[2rem] bg-cream p-5 shadow-2xl">
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
          <label className="text-sm font-medium text-zinc-700">Notes
            <textarea value={notes} onChange={(e) => setNotes(e.target.value)} rows={10} className="mt-1 w-full rounded-2xl border border-zinc-200 bg-white px-3 py-2 text-sm leading-6 outline-none focus:border-[#AEBB9E]" />
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
      <motion.div initial={{ y: 20, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 20, opacity: 0 }} onClick={(e) => e.stopPropagation()} className="mx-auto mt-10 max-w-2xl rounded-[2rem] bg-cream p-5 shadow-2xl">
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
          <button disabled={!targetName} onClick={() => onMerge(sourceSchool.originalName, targetName)} className="rounded-full bg-zinc-950 px-4 py-2 text-sm font-semibold text-white hover:bg-zinc-800 disabled:opacity-40">Merge</button>
        </div>
      </motion.div>
    </motion.div>
  );
}

function SchoolPages({ query, onClickEvent, events, selectedName, setSelectedName, schoolOverrides, setSchoolOverrides }) {
  const q = query.trim().toLowerCase();
  const mergedSourcesByTarget = useMemo(() => {
    const map = {};
    Object.entries(schoolOverrides || {}).forEach(([sourceName, override]) => {
      if (override?.mergedInto) {
        map[override.mergedInto] ||= [];
        map[override.mergedInto].push(sourceName);
      }
    });
    return map;
  }, [schoolOverrides]);

  const schools = useMemo(() => SCHOOLS
    .filter(school => !schoolOverrides?.[school.name]?.mergedInto)
    .map(school => {
      const override = schoolOverrides?.[school.name] || {};
      const mergedFrom = mergedSourcesByTarget[school.name] || [];
      const mergedSourceSchools = mergedFrom.map(name => normalizeSchoolOverride(SCHOOLS.find(item => item.name === name) || { name }, schoolOverrides?.[name] || {}));
      const mergedNotes = mergedSourceSchools.map(item => item.notes).filter(Boolean);
      const mergedImages = mergedSourceSchools.flatMap(item => item.referenceImages || []);
      const normalized = normalizeSchoolOverride(school, override);
      const notes = [normalized.notes, ...mergedNotes.map((note, index) => `Merged from ${mergedSourceSchools[index]?.name || mergedFrom[index]}:\n${note}`)].filter(Boolean).join('\n\n');
      return {
        ...normalized,
        originalName: school.name,
        notes,
        referenceImages: [...(normalized.referenceImages || []), ...mergedImages],
        mergedFrom: mergedSourceSchools.map(item => item.name),
        history: getSchoolHistoryForNames([school.name, ...mergedFrom], events)
      };
    })
    .sort((a, b) => a.name.localeCompare(b.name)), [events, schoolOverrides, mergedSourcesByTarget]);

  const filtered = q ? schools.filter(school => [school.name, school.notes, ...school.history.map(e => `${e.title} ${e.notes}`)].join(' ').toLowerCase().includes(q)) : schools;
  const selected = schools.find(school => school.name === selectedName || school.originalName === selectedName) || filtered[0] || null;
  const [editingSchool, setEditingSchool] = useState(null);
  const [mergingSchool, setMergingSchool] = useState(null);

  const saveSchool = (originalName, values) => {
    setSchoolOverrides(prev => ({
      ...prev,
      [originalName]: {
        ...(prev?.[originalName] || {}),
        ...values
      }
    }));
    setSelectedName(values.name || originalName);
    setEditingSchool(null);
  };

  const mergeSchool = (sourceOriginalName, targetOriginalName) => {
    setSchoolOverrides(prev => ({
      ...prev,
      [sourceOriginalName]: {
        ...(prev?.[sourceOriginalName] || {}),
        mergedInto: targetOriginalName
      }
    }));
    const target = schools.find(school => school.originalName === targetOriginalName);
    setSelectedName(target?.name || targetOriginalName);
    setMergingSchool(null);
  };

  return (
    <div className="grid gap-4 lg:grid-cols-[340px_1fr]">
      <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
        <h2 className="text-lg font-semibold text-zinc-950">School List</h2>
        <p className="mt-1 text-sm text-zinc-600">Click a school to view imported schedule history.</p>
        <div className="mt-4 max-h-[760px] space-y-2 overflow-auto pr-1">
          {filtered.map(school => (
            <button key={school.originalName} onClick={() => setSelectedName(school.name)} className={`w-full rounded-2xl border p-3 text-left text-sm transition hover:bg-white ${selected?.originalName === school.originalName ? 'border-[#AEBB9E] bg-[#DDE8D2]/70' : 'border-zinc-200 bg-cream/75'}`}>
              <div className="font-semibold text-zinc-900">{school.name}</div>
              <div className="mt-1 text-xs text-zinc-500">{school.history.length} imported record{school.history.length === 1 ? '' : 's'}{school.irm ? ` · IRM ${school.irm}` : ''}{school.mergedFrom?.length ? ` · ${school.mergedFrom.length} merged` : ''}</div>
            </button>
          ))}
        </div>
      </section>
      <SchoolHistoryPanel school={selected} onClickEvent={onClickEvent} onEdit={setEditingSchool} onMerge={setMergingSchool} />
      <AnimatePresence>
        {editingSchool && <EditSchoolModal school={editingSchool} onClose={() => setEditingSchool(null)} onSave={saveSchool} />}
        {mergingSchool && <MergeSchoolModal sourceSchool={mergingSchool} schools={schools} onClose={() => setMergingSchool(null)} onMerge={mergeSchool} />}
      </AnimatePresence>
    </div>
  );
}


function CalendarNavigator({ viewMode, month, setMonth, selectedDate, setSelectedDate, setViewMode }) {
  const goToday = () => {
    const today = todayKey();
    setSelectedDate(today);
    setMonth(monthKey(today));
    setViewMode('Day');
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
    <div className="mb-4 flex flex-col items-center justify-center gap-3 sm:flex-row">
      <button type="button" onClick={() => move(-1)} className="rounded-full border border-zinc-200 bg-white/85 p-2 text-zinc-700 shadow-sm transition hover:-translate-y-0.5 hover:bg-white hover:shadow-soft" aria-label="Previous"><ChevronLeft size={20} /></button>
      <div className="min-w-[280px] rounded-full border border-zinc-200 bg-white/90 px-6 py-2 text-center text-base font-semibold text-zinc-900 shadow-sm">{label}</div>
      <button type="button" onClick={() => move(1)} className="rounded-full border border-zinc-200 bg-white/85 p-2 text-zinc-700 shadow-sm transition hover:-translate-y-0.5 hover:bg-white hover:shadow-soft" aria-label="Next"><ChevronRight size={20} /></button>
      <button type="button" onClick={goToday} className="rounded-full border border-[#AEBB9E] bg-[#DDE8D2]/80 px-4 py-2 text-sm font-semibold text-zinc-900 shadow-sm transition hover:-translate-y-0.5 hover:bg-[#DDE8D2]">Today</button>
    </div>
  );
}

function CalendarView({ viewMode, setViewMode, events, month, setMonth, selectedDate, setSelectedDate, onClick }) {
  return (
    <div className="space-y-4">
      <div className="flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
        <div>
          <h2 className="text-lg font-semibold text-zinc-950">Calendar View</h2>
          <p className="mt-1 text-sm text-zinc-600">Switch between month, week, and day layouts while staying on one clean calendar page.</p>
        </div>
        <div className="inline-flex rounded-2xl border border-zinc-200 bg-white/80 p-1 shadow-sm">
          {['Month', 'Week', 'Day'].map(mode => (
            <button key={mode} type="button" onClick={() => setViewMode(mode)} className={`rounded-xl px-4 py-2 text-sm font-medium transition ${viewMode === mode ? 'bg-zinc-900 text-white shadow-sm' : 'text-zinc-700 hover:bg-white'}`}>{mode}</button>
          ))}
        </div>
      </div>
      <CalendarNavigator viewMode={viewMode} month={month} setMonth={setMonth} selectedDate={selectedDate} setSelectedDate={setSelectedDate} setViewMode={setViewMode} />
      {viewMode === 'Month' && <MonthView events={events} month={month} onClick={onClick} selectedDate={selectedDate} setSelectedDate={setSelectedDate} setViewMode={setViewMode} />}
      {viewMode === 'Week' && <WeekView events={events} selectedDate={selectedDate} onClick={onClick} />}
      {viewMode === 'Day' && <DayView events={events} selectedDate={selectedDate} onClick={onClick} />}
    </div>
  );
}


function normalizeMemberName(value) {
  return value.trim().replace(/\s+/g, ' ');
}

function TeamMembers({ photographers, assistants, setPhotographers, setAssistants }) {
  const [photographerInput, setPhotographerInput] = useState('');
  const [assistantInput, setAssistantInput] = useState('');

  const addMember = (role, value) => {
    const name = normalizeMemberName(value);
    if (!name) return;
    if (role === 'photographer') {
      setPhotographers(prev => prev.some(item => item.toLowerCase() === name.toLowerCase()) ? prev : [...prev, name].sort((a, b) => a.localeCompare(b)));
      setPhotographerInput('');
    } else {
      setAssistants(prev => prev.some(item => item.toLowerCase() === name.toLowerCase()) ? prev : [...prev, name].sort((a, b) => a.localeCompare(b)));
      setAssistantInput('');
    }
  };

  const removeMember = (role, name) => {
    if (role === 'photographer') setPhotographers(prev => prev.filter(item => item !== name));
    else setAssistants(prev => prev.filter(item => item !== name));
  };

  const MemberEditor = ({ title, description, members, value, setValue, role }) => (
    <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
      <div className="mb-4">
        <h2 className="text-lg font-semibold text-zinc-950">{title}</h2>
        <p className="mt-1 text-sm text-zinc-600">{description}</p>
      </div>
      <form
        className="flex gap-2"
        onSubmit={(e) => {
          e.preventDefault();
          addMember(role, value);
        }}
      >
        <input
          value={value}
          onChange={(e) => setValue(e.target.value)}
          placeholder={`Add ${role === 'photographer' ? 'photographer' : 'assistant'}...`}
          className="min-w-0 flex-1 rounded-2xl border border-zinc-200 bg-white/85 px-4 py-3 text-sm outline-none ring-sage/30 transition focus:ring-4"
        />
        <button type="submit" className="inline-flex items-center gap-2 rounded-2xl bg-zinc-900 px-4 py-3 text-sm font-semibold text-white shadow-sm transition hover:-translate-y-0.5">
          <Plus size={16} /> Add
        </button>
      </form>
      <div className="mt-4 grid gap-2 sm:grid-cols-2">
        {members.map(name => (
          <div key={name} className="flex items-center justify-between gap-3 rounded-2xl border border-zinc-200 bg-cream/80 px-3 py-2">
            <span className="text-sm font-medium text-zinc-900">{name}</span>
            <button type="button" onClick={() => removeMember(role, name)} className="rounded-full p-2 text-zinc-400 transition hover:bg-white hover:text-rose-600" aria-label={`Remove ${name}`}>
              <Trash2 size={16} />
            </button>
          </div>
        ))}
      </div>
    </section>
  );

  return (
    <div className="space-y-4">
      <section className="rounded-3xl border border-[#AEBB9E] bg-[#DDE8D2]/60 p-4 shadow-sm">
        <h2 className="text-lg font-semibold text-zinc-950">Team Members</h2>
        <p className="mt-1 text-sm text-zinc-700">Add or remove the photographers and assistants available for future scheduling. These changes save in this browser for now; a database can make them shared for everyone later.</p>
      </section>
      <div className="grid gap-4 lg:grid-cols-2">
        <MemberEditor title="Photographers" description="Used by Carrie View availability and future assignment lists." members={photographers} value={photographerInput} setValue={setPhotographerInput} role="photographer" />
        <MemberEditor title="Assistants" description="Used as the active assistant roster for scheduling reference." members={assistants} value={assistantInput} setValue={setAssistantInput} role="assistant" />
      </div>
    </div>
  );
}

function Drawer({ event, onClose, onViewSchool }) {
  return <AnimatePresence>{event && <motion.aside initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/25 p-4 backdrop-blur-sm" onClick={onClose}><motion.div initial={{ x: 420 }} animate={{ x: 0 }} exit={{ x: 420 }} transition={{ type: 'spring', damping: 28, stiffness: 260 }} onClick={(e) => e.stopPropagation()} className="ml-auto flex h-full max-w-xl flex-col overflow-hidden rounded-[2rem] bg-cream shadow-2xl"><div className="border-b border-zinc-200 p-5"><div className="flex items-start justify-between gap-4"><div><div className="flex flex-wrap gap-2"><Pill className={TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}>{event.type}</Pill>{getEventIrm(event) ? <Pill className="border-amber-200 bg-amber-50 text-amber-900">IRM {getEventIrm(event)}</Pill> : null}</div><h2 className="mt-3 text-2xl font-semibold text-zinc-950">{event.title}</h2><p className="mt-1 text-sm text-zinc-500">{formatDate(event.date)} · {event.time}</p></div><button onClick={onClose} className="rounded-full bg-white p-2 text-zinc-500 hover:text-zinc-900"><X size={18} /></button></div></div><div className="space-y-4 overflow-auto p-5">{event.canonicalSchool ? <button type="button" onClick={() => onViewSchool(event.canonicalSchool)} className="w-full rounded-2xl border border-[#AEBB9E] bg-[#DDE8D2]/70 px-4 py-3 text-left text-sm font-semibold text-zinc-900 transition hover:-translate-y-0.5 hover:bg-[#DDE8D2] hover:shadow-soft">View {event.canonicalSchool} in School List →</button> : null}<Info icon={UserRoundCheck} title="Photographers Assigned" value={displayPhotographerAssignment(event)} /><Info icon={Users} title="Assistants" value={event.assistants.length ? event.assistants.join(', ') : '—'} /><Info icon={ClipboardList} title="Status" value={displayStatus(event.status)} /><Info icon={Clock} title="IRM" value={getEventIrm(event) ? `${getEventIrm(event)} — informational only` : '—'} /><Info icon={Pencil} title="Notes" value={event.notes} large /><Info icon={CloudRain} title="Rain Info" value={event.rainInfo || '—'} /><Info icon={History} title="Historical Context" value={event.history || '—'} large /><div className="rounded-3xl border border-zinc-200 bg-white/70 p-4"><div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Editing note</div><p className="mt-2 text-sm text-zinc-700">This is still a frontend-only prototype. Update this data file in GitHub for now; add Supabase later for live editing and persistence.</p></div></div></motion.div></motion.aside>}</AnimatePresence>;
}

function Info({ icon: Icon, title, value, large = false }) {
  return <div className="rounded-3xl border border-zinc-200 bg-white/70 p-4"><div className="flex items-center gap-2 text-xs font-semibold uppercase tracking-wide text-zinc-500"><Icon size={14} />{title}</div><div className={`mt-2 whitespace-pre-wrap text-zinc-800 ${large ? 'text-sm leading-6' : 'text-sm font-medium'}`}>{value}</div></div>;
}


function GlobalSearchResults({ query, events, onSelectEvent, onSelectSchool }) {
  const q = query.trim().toLowerCase();
  if (!q) return null;
  const schoolMatches = SCHOOLS.filter(school => [school.name, school.notes, school.address, school.city, school.contactFirst, school.contactLast, school.contactEmail, school.contactPhone].filter(Boolean).join(' ').toLowerCase().includes(q)).slice(0, 6);
  const eventMatches = (events || []).filter(event => [event.title, event.canonicalSchool, event.type, event.notes, event.history, ...(event.photographers || []), ...(event.assistants || [])].filter(Boolean).join(' ').toLowerCase().includes(q)).slice(0, 8);
  if (!schoolMatches.length && !eventMatches.length) return null;
  return (
    <section className="rounded-[2rem] border border-[#AEBB9E] bg-[#DDE8D2]/45 p-4 shadow-sm">
      <div className="flex items-center justify-between gap-3">
        <div>
          <h2 className="text-sm font-semibold text-zinc-950">Global Search Results</h2>
          <p className="mt-1 text-xs text-zinc-600">Searching schools, contacts, notes, photographers, assistants, and imported events.</p>
        </div>
        <Pill className="border-zinc-200 bg-white/80 text-zinc-700">{schoolMatches.length + eventMatches.length} shown</Pill>
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
          <div className="mb-2 text-xs font-semibold uppercase tracking-wide text-zinc-500">Events + Assignments</div>
          <div className="space-y-2">
            {eventMatches.length ? eventMatches.map(event => (
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

export default function SchedulerApp() {
  const [activeTab, setActiveTab] = useState('Calendar View');
  const [calendarMode, setCalendarMode] = useState('Month');
  const [month, setMonth] = useState('2025-09');
  const [selectedDate, setSelectedDate] = useState('2025-09-01');
  const [query, setQuery] = useState('');
  const [selected, setSelected] = useState(null);
  const [photographers, setPhotographers] = useState(PHOTOGRAPHERS);
  const [assistants, setAssistants] = useState(ASSISTANTS);
  const [customEvents, setCustomEvents] = useState([]);
  const [addingEvent, setAddingEvent] = useState(false);
  const [selectedSchoolName, setSelectedSchoolName] = useState(SCHOOLS[0]?.name || '');
  const [schoolOverrides, setSchoolOverrides] = useState({});

  useEffect(() => {
    try {
      const savedPhotographers = window.localStorage.getItem('ismile.photographers');
      const savedAssistants = window.localStorage.getItem('ismile.assistants');
      if (savedPhotographers) setPhotographers(JSON.parse(savedPhotographers));
      if (savedAssistants) setAssistants(JSON.parse(savedAssistants));
      const savedEvents = window.localStorage.getItem('ismile.customEvents');
      if (savedEvents) setCustomEvents(JSON.parse(savedEvents));
      const savedSchoolOverrides = window.localStorage.getItem('ismile.schoolOverrides');
      if (savedSchoolOverrides) setSchoolOverrides(JSON.parse(savedSchoolOverrides));
    } catch (error) {
      console.warn('Could not load saved team members', error);
    }
  }, []);

  useEffect(() => {
    try { window.localStorage.setItem('ismile.photographers', JSON.stringify(photographers)); } catch {}
  }, [photographers]);

  useEffect(() => {
    try { window.localStorage.setItem('ismile.assistants', JSON.stringify(assistants)); } catch {}
  }, [assistants]);

  useEffect(() => {
    try { window.localStorage.setItem('ismile.customEvents', JSON.stringify(customEvents)); } catch {}
  }, [customEvents]);

  useEffect(() => {
    try { window.localStorage.setItem('ismile.schoolOverrides', JSON.stringify(schoolOverrides)); } catch {}
  }, [schoolOverrides]);

  const isValidEvent = (event) => event && typeof event.date === 'string' && event.date.length >= 10 && typeof event.title === 'string';
  const allEvents = useMemo(() => [...EVENTS, ...customEvents].filter(isValidEvent), [customEvents]);
  const handleScheduleEvent = (event) => {
    setCustomEvents(prev => [...prev.filter(item => item.id !== event.id), event]);
    setMonth(monthKey(event.date));
    setSelectedDate(event.date);
    setActiveTab('Calendar View');
  };

  const monthEvents = useMemo(() => allEvents.filter(event => event && monthKey(event.date) === month), [allEvents, month]);
  const filtered = useMemo(() => {
    const q = query.trim().toLowerCase();
    if (!q) return monthEvents;
    return monthEvents.filter(event => event && [event.title, event.canonicalSchool, event.type, event.status, event.notes, event.history, ...(event.photographers || []), ...(event.assistants || [])].filter(Boolean).join(' ').toLowerCase().includes(q));
  }, [query, monthEvents]);

  return (
    <main className="min-h-screen font-sans text-zinc-900">
      <Header query={query} setQuery={setQuery} activeTab={activeTab} setActiveTab={setActiveTab} />
      <div className="mx-auto max-w-7xl space-y-6 px-4 py-6 sm:px-6">
        {['Overview', 'Calendar View'].includes(activeTab) ? <OperationalSummary events={allEvents} /> : null}
        <GlobalSearchResults query={query} events={allEvents} onSelectEvent={setSelected} onSelectSchool={(schoolName) => { setSelectedSchoolName(schoolName); setActiveTab('School List'); }} />
        <section className="rounded-[2rem] border border-zinc-200/80 bg-white/35 p-4 shadow-soft">
          {activeTab === 'Overview' && <><MonthNavigator month={month} setMonth={setMonth} /><PlanningBoard events={filtered} onClick={setSelected} onAddEvent={() => setAddingEvent(true)} /></>}
          {activeTab === 'Calendar View' && <CalendarView viewMode={calendarMode} setViewMode={setCalendarMode} events={filtered} month={month} setMonth={setMonth} selectedDate={selectedDate} setSelectedDate={setSelectedDate} onClick={setSelected} />}
          {activeTab === 'Carrie View' && <CarrieView query={query} onClickEvent={setSelected} photographers={photographers} assistants={assistants} events={allEvents} onSchedule={handleScheduleEvent} />}
          {activeTab === 'School List' && <SchoolPages query={query} onClickEvent={setSelected} events={allEvents} selectedName={selectedSchoolName} setSelectedName={setSelectedSchoolName} schoolOverrides={schoolOverrides} setSchoolOverrides={setSchoolOverrides} />}
          {activeTab === 'Team Members' && <TeamMembers photographers={photographers} assistants={assistants} setPhotographers={setPhotographers} setAssistants={setAssistants} />}
        </section>
        <section className="grid gap-4 md:grid-cols-3">
          <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4"><h3 className="font-semibold">Photographers</h3><p className="mt-2 text-sm text-zinc-600">{photographers.join(', ')}</p></div>
          <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4"><h3 className="font-semibold">Assistants</h3><p className="mt-2 text-sm text-zinc-600">{assistants.join(', ')}</p></div>
          <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4"><h3 className="font-semibold">Rule</h3><p className="mt-2 text-sm text-zinc-600">Humans make scheduling decisions. This app supports reference, visibility, and notes — not automation.</p></div>
        </section>
      </div>
      {addingEvent && <AddEventModal photographers={photographers} assistants={assistants} events={allEvents} onClose={() => setAddingEvent(false)} onSave={handleScheduleEvent} defaultDate={selectedDate} sourceLabel="Overview" />}
      <Drawer event={selected} onClose={() => setSelected(null)} onViewSchool={(schoolName) => { setSelectedSchoolName(schoolName); setActiveTab('School List'); setSelected(null); }} />
    </main>
  );
}
