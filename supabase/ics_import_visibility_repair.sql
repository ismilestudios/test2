-- iSmile Scheduler — ICS Import Visibility Repair
-- Run this once in Supabase SQL Editor, then redeploy this ZIP.
-- Purpose: imported Google Calendar rows already exist, but the app must be allowed to read/show them.

alter table public.events enable row level security;

-- Keep internal scheduling simple: any logged-in iSmile user can read events.
drop policy if exists "Logged-in users can read events" on public.events;
drop policy if exists "Authenticated users can read all events" on public.events;
create policy "Authenticated users can read all events"
on public.events
for select
to authenticated
using (true);

-- Keep the previous internal testing policy available for inserts/updates/removals.
drop policy if exists "Authenticated users can manage events during internal testing" on public.events;
create policy "Authenticated users can manage events during internal testing"
on public.events
for all
to authenticated
using (true)
with check (true);

-- Make sure imported rows are display-eligible.
update public.events
set active = true,
    updated_at = now()
where source = 'google_calendar_import'
  and active is distinct from true;

-- Verification: this should return about 745 after the current ICS import.
select source, count(*) as event_count, min(date) as first_date, max(coalesce(end_date, date)) as last_date
from public.events
where source in ('google_calendar_import', 'manual_app', 'app')
group by source
order by source;
