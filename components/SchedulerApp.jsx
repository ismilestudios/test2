'use client';

import { useMemo, useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { CalendarDays, Search, Users, ClipboardList, Clock, X, History, UserRoundCheck, CloudRain, Pencil, ChevronLeft, ChevronRight } from 'lucide-react';
import { EVENTS, STATUSES, TYPE_COLORS, PHOTOGRAPHERS, ASSISTANTS, ADMINS } from '../lib/scheduleData';

const tabs = ['Planning Board', 'Month View', 'Week View', 'Day View', 'Carrie View'];

function Pill({ children, className = '' }) {
  return <span className={`inline-flex items-center rounded-full border px-2.5 py-1 text-xs font-medium ${className}`}>{children}</span>;
}

function monthKey(date) {
  return date.slice(0, 7);
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
            {event.irm ? <span>IRM {event.irm}</span> : null}
            {event.canonicalSchool ? <span className="truncate">{event.canonicalSchool}</span> : null}
          </div>
        </div>
        <Pill className={TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}>{event.type}</Pill>
      </div>
      {!compact && (
        <div className="mt-3 space-y-1 text-xs text-zinc-600">
          <div>Photographers: {event.photographers.length ? event.photographers.join(', ') : 'Needs Photographers Scheduled'}</div>
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

function Summary({ events, allMonthEvents }) {
  const needs = events.filter(e => e.status === 'Needs Photographers Scheduled').length;
  const schools = new Set(events.filter(e => e.canonicalSchool).map(e => e.canonicalSchool)).size;
  return (
    <section className="grid gap-3 md:grid-cols-4">
      {[
        ['Visible Events', events.length, ClipboardList],
        ['Schools', schools, History],
        ['Needs Photographers Scheduled', needs, UserRoundCheck],
        ['Month Total', allMonthEvents.length, Users]
      ].map(([label, value, Icon]) => (
        <div key={label} className="rounded-3xl border border-zinc-200/80 bg-white/75 p-4 shadow-sm">
          <Icon size={18} className="text-zinc-500" />
          <div className="mt-3 text-2xl font-semibold text-zinc-950">{value}</div>
          <div className="mt-1 text-xs font-medium uppercase tracking-wide text-zinc-500">{label}</div>
        </div>
      ))}
    </section>
  );
}

function PlanningBoard({ events, onClick }) {
  return <div className="grid gap-4 lg:grid-cols-4">{STATUSES.map(status => <div key={status} className="rounded-3xl border border-zinc-200/80 bg-white/45 p-3"><div className="mb-3 flex items-center justify-between"><h2 className="text-sm font-semibold text-zinc-800">{status}</h2><Pill className="border-zinc-200 bg-white text-zinc-600">{events.filter(e => e.status === status).length}</Pill></div><div className="space-y-3">{events.filter(e => e.status === status).map(event => <EventCard key={event.id} event={event} onClick={onClick} />)}</div></div>)}</div>;
}

function MonthView({ events, month, onClick }) {
  const totalDays = daysInMonth(month);
  const offset = firstDayOffset(month);
  return <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4 shadow-sm"><div className="grid grid-cols-7 gap-2 text-center text-xs font-semibold uppercase tracking-wide text-zinc-500">{['Sun','Mon','Tue','Wed','Thu','Fri','Sat'].map(d => <div key={d}>{d}</div>)}</div><div className="mt-2 grid grid-cols-7 gap-2">{Array.from({ length: offset }).map((_, i) => <div key={`blank-${i}`} />)}{Array.from({ length: totalDays }, (_, i) => i + 1).map(day => { const date = `${month}-${String(day).padStart(2,'0')}`; const dayEvents = events.filter(e => e.date === date); return <div key={date} className="min-h-[132px] rounded-2xl border border-zinc-200 bg-cream/80 p-2"><div className="mb-2 text-xs font-semibold text-zinc-500">{day}</div><div className="space-y-1.5">{dayEvents.map(event => <button key={event.id} onClick={() => onClick(event)} className={`block w-full truncate rounded-xl border px-2 py-1.5 text-left text-[11px] font-medium ${TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}`}>{event.title}</button>)}</div></div>})}</div>{events.length === 0 ? <div className="mt-4 rounded-2xl border border-dashed border-zinc-200 bg-white/60 p-4 text-center text-sm text-zinc-500">No events scheduled for {monthLabel(month)} yet.</div> : null}</div>;
}

function WeekView({ events, month, onClick }) {
  const totalDays = daysInMonth(month);
  const weeks = [];
  for (let day = 1; day <= totalDays; day += 7) weeks.push(Array.from({ length: Math.min(7, totalDays - day + 1) }, (_, i) => day + i));
  return <div className="space-y-4">{weeks.map((week, idx) => <div key={idx} className="rounded-3xl border border-zinc-200 bg-white/60 p-4 shadow-sm"><h2 className="mb-3 text-sm font-semibold text-zinc-800">Week of {monthLabel(month).split(' ')[0]} {week[0]}, {month.split('-')[0]}</h2><div className="grid gap-3 md:grid-cols-7">{week.map(day => { const date = `${month}-${String(day).padStart(2,'0')}`; const dayEvents = events.filter(e => e.date === date); return <div key={date} className="rounded-2xl border border-zinc-200 bg-white/75 p-3"><div className="mb-2 text-xs font-semibold text-zinc-500">{monthLabel(month).slice(0,3)} {day}</div><div className="space-y-2">{dayEvents.length ? dayEvents.map(event => <EventCard key={event.id} event={event} onClick={onClick} compact />) : <div className="text-xs text-zinc-400">No scheduled items</div>}</div></div>})}</div></div>)}</div>;
}

function DayView({ events, onClick, month }) {
  const grouped = events.reduce((acc, event) => { acc[event.date] ||= []; acc[event.date].push(event); return acc; }, {});
  const entries = Object.entries(grouped);
  if (!entries.length) return <div className="rounded-3xl border border-zinc-200 bg-white/60 p-8 text-center text-sm text-zinc-500 shadow-sm">No events scheduled for {monthLabel(month)} yet.</div>;
  return <div className="space-y-4">{entries.map(([date, dayEvents]) => <div key={date} className="rounded-3xl border border-zinc-200 bg-white/60 p-4 shadow-sm"><h2 className="mb-3 text-sm font-semibold text-zinc-800">{formatDate(date)}</h2><div className="grid gap-3 md:grid-cols-2">{dayEvents.map(event => <EventCard key={event.id} event={event} onClick={onClick} />)}</div></div>)}</div>;
}


function getFall2025SchoolsToSchedule() {
  const scheduled2026 = new Set(
    EVENTS.filter(event => event.date.startsWith('2026-') && event.type === 'Fall Picture Day' && event.canonicalSchool)
      .map(event => event.canonicalSchool)
  );

  const map = new Map();
  EVENTS.filter(event =>
    event.date >= '2025-09-01' &&
    event.date <= '2025-11-30' &&
    event.type === 'Fall Picture Day' &&
    event.canonicalSchool &&
    !scheduled2026.has(event.canonicalSchool)
  ).forEach(event => {
    const existing = map.get(event.canonicalSchool);
    if (!existing || event.date < existing.firstDate) existing.firstDate = event.date;
    if (!existing || event.date > existing.lastDate) {
      map.set(event.canonicalSchool, {
        school: event.canonicalSchool,
        lastYearTitle: event.title,
        firstDate: existing?.firstDate || event.date,
        lastDate: event.date,
        irm: event.irm || existing?.irm || '',
        photographers: event.photographers,
        assistants: event.assistants,
        notes: event.notes
      });
    }
  });

  return Array.from(map.values()).sort((a, b) => a.school.localeCompare(b.school));
}

function getFall2026Availability() {
  const dates = [];
  const start = new Date('2026-09-01T12:00:00');
  const end = new Date('2026-11-30T12:00:00');
  for (let d = new Date(start); d <= end; d.setDate(d.getDate() + 1)) {
    const day = d.getDay();
    if (day === 0 || day === 6) continue;
    const key = d.toISOString().slice(0, 10);
    const scheduled = EVENTS.filter(event => event.date === key);
    const bookedPhotographers = new Set(scheduled.flatMap(event => event.photographers || []));
    const availablePhotographers = PHOTOGRAPHERS.filter(name => !bookedPhotographers.has(name));
    dates.push({
      date: key,
      scheduledCount: scheduled.length,
      availablePhotographers,
      scheduled
    });
  }
  return dates;
}

function CarrieView({ query }) {
  const schools = useMemo(() => getFall2025SchoolsToSchedule(), []);
  const availability = useMemo(() => getFall2026Availability(), []);
  const q = query.trim().toLowerCase();
  const filteredSchools = q
    ? schools.filter(item => [item.school, item.lastYearTitle, item.notes, ...(item.photographers || []), ...(item.assistants || [])].filter(Boolean).join(' ').toLowerCase().includes(q))
    : schools;

  return (
    <div className="grid gap-4 xl:grid-cols-[1.35fr_1fr]">
      <section className="rounded-3xl border border-zinc-200 bg-white/70 p-4 shadow-sm">
        <div className="mb-4 flex flex-col gap-2 sm:flex-row sm:items-end sm:justify-between">
          <div>
            <h2 className="text-lg font-semibold text-zinc-950">Carrie View</h2>
            <p className="mt-1 text-sm text-zinc-600">Fall 2025 schools that still need to be scheduled for Fall 2026.</p>
          </div>
          <Pill className="border-[#AEBB9E] bg-[#DDE8D2] text-zinc-800">{filteredSchools.length} schools</Pill>
        </div>
        <div className="max-h-[680px] space-y-2 overflow-auto pr-1">
          {filteredSchools.map(item => (
            <div key={item.school} className="rounded-2xl border border-zinc-200 bg-cream/75 p-3">
              <div className="flex flex-col gap-2 sm:flex-row sm:items-start sm:justify-between">
                <div>
                  <div className="text-sm font-semibold text-zinc-950">{item.school}</div>
                  <div className="mt-1 text-xs text-zinc-500">2025 reference: {formatDate(item.lastDate)}</div>
                </div>
                {item.irm ? <Pill className="border-zinc-200 bg-white text-zinc-700">IRM {item.irm}</Pill> : null}
              </div>
              <div className="mt-2 text-xs text-zinc-600">{item.lastYearTitle}</div>
              <div className="mt-2 grid gap-2 text-xs text-zinc-600 sm:grid-cols-2">
                <div><span className="font-semibold text-zinc-700">2025 photogs:</span> {item.photographers?.length ? item.photographers.join(', ') : '—'}</div>
                <div><span className="font-semibold text-zinc-700">2025 assistants:</span> {item.assistants?.length ? item.assistants.join(', ') : '—'}</div>
              </div>
              {item.notes ? <div className="mt-2 line-clamp-2 text-xs text-zinc-500">{item.notes}</div> : null}
            </div>
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
                <Pill className="border-emerald-200 bg-emerald-50 text-emerald-900">{day.availablePhotographers.length} photogs open</Pill>
              </div>
              <div className="mt-2 text-xs text-zinc-600">Available: {day.availablePhotographers.join(', ') || '—'}</div>
            </div>
          ))}
        </div>
      </section>
    </div>
  );
}

function Drawer({ event, onClose }) {
  return <AnimatePresence>{event && <motion.aside initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }} className="fixed inset-0 z-50 bg-zinc-950/25 p-4 backdrop-blur-sm" onClick={onClose}><motion.div initial={{ x: 420 }} animate={{ x: 0 }} exit={{ x: 420 }} transition={{ type: 'spring', damping: 28, stiffness: 260 }} onClick={(e) => e.stopPropagation()} className="ml-auto flex h-full max-w-xl flex-col overflow-hidden rounded-[2rem] bg-cream shadow-2xl"><div className="border-b border-zinc-200 p-5"><div className="flex items-start justify-between gap-4"><div><Pill className={TYPE_COLORS[event.type] || 'bg-zinc-100 text-zinc-800 border-zinc-200'}>{event.type}</Pill><h2 className="mt-3 text-2xl font-semibold text-zinc-950">{event.title}</h2><p className="mt-1 text-sm text-zinc-500">{formatDate(event.date)} · {event.time}</p></div><button onClick={onClose} className="rounded-full bg-white p-2 text-zinc-500 hover:text-zinc-900"><X size={18} /></button></div></div><div className="space-y-4 overflow-auto p-5"><Info icon={UserRoundCheck} title="Photographers" value={event.photographers.length ? event.photographers.join(', ') : 'Needs Photographers Scheduled'} /><Info icon={Users} title="Assistants" value={event.assistants.length ? event.assistants.join(', ') : '—'} /><Info icon={ClipboardList} title="Status" value={event.status} /><Info icon={Clock} title="IRM" value={event.irm ? `${event.irm} — informational only` : '—'} /><Info icon={Pencil} title="Notes" value={event.notes} large /><Info icon={CloudRain} title="Rain Info" value={event.rainInfo || '—'} /><Info icon={History} title="Historical Context" value={event.history || '—'} large /><div className="rounded-3xl border border-zinc-200 bg-white/70 p-4"><div className="text-xs font-semibold uppercase tracking-wide text-zinc-500">Editing note</div><p className="mt-2 text-sm text-zinc-700">This is still a frontend-only prototype. Update this data file in GitHub for now; add Supabase later for live editing and persistence.</p></div></div></motion.div></motion.aside>}</AnimatePresence>;
}

function Info({ icon: Icon, title, value, large = false }) {
  return <div className="rounded-3xl border border-zinc-200 bg-white/70 p-4"><div className="flex items-center gap-2 text-xs font-semibold uppercase tracking-wide text-zinc-500"><Icon size={14} />{title}</div><div className={`mt-2 whitespace-pre-wrap text-zinc-800 ${large ? 'text-sm leading-6' : 'text-sm font-medium'}`}>{value}</div></div>;
}

export default function SchedulerApp() {
  const [activeTab, setActiveTab] = useState('Month View');
  const [month, setMonth] = useState('2025-09');
  const [query, setQuery] = useState('');
  const [selected, setSelected] = useState(null);

  const monthEvents = useMemo(() => EVENTS.filter(event => monthKey(event.date) === month), [month]);
  const filtered = useMemo(() => {
    const q = query.trim().toLowerCase();
    if (!q) return monthEvents;
    return monthEvents.filter(event => [event.title, event.canonicalSchool, event.type, event.status, event.notes, event.history, ...event.photographers, ...event.assistants].filter(Boolean).join(' ').toLowerCase().includes(q));
  }, [query, monthEvents]);

  return (
    <main className="min-h-screen font-sans text-zinc-900">
      <Header query={query} setQuery={setQuery} activeTab={activeTab} setActiveTab={setActiveTab} />
      <div className="mx-auto max-w-7xl space-y-6 px-4 py-6 sm:px-6">
        <Summary events={filtered} allMonthEvents={monthEvents} />
        <section className="rounded-[2rem] border border-zinc-200/80 bg-white/35 p-4 shadow-soft">
          <MonthNavigator month={month} setMonth={setMonth} />
          {activeTab === 'Planning Board' && <PlanningBoard events={filtered} onClick={setSelected} />}
          {activeTab === 'Month View' && <MonthView events={filtered} month={month} onClick={setSelected} />}
          {activeTab === 'Week View' && <WeekView events={filtered} month={month} onClick={setSelected} />}
          {activeTab === 'Day View' && <DayView events={filtered} month={month} onClick={setSelected} />}
        </section>
        <section className="grid gap-4 md:grid-cols-3">
          <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4"><h3 className="font-semibold">Photographers</h3><p className="mt-2 text-sm text-zinc-600">{PHOTOGRAPHERS.join(', ')}</p></div>
          <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4"><h3 className="font-semibold">Assistants</h3><p className="mt-2 text-sm text-zinc-600">{ASSISTANTS.join(', ')}</p></div>
          <div className="rounded-3xl border border-zinc-200 bg-white/60 p-4"><h3 className="font-semibold">Rule</h3><p className="mt-2 text-sm text-zinc-600">Humans make scheduling decisions. This app supports reference, visibility, and notes — not automation.</p></div>
        </section>
      </div>
      <Drawer event={selected} onClose={() => setSelected(null)} />
    </main>
  );
}
