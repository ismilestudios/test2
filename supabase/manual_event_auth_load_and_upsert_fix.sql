-- iSmile Scheduler: manual event auth-load persistence fix v2
-- Safe to rerun.
-- Run this if manual events save, appear, then disappear after refresh/deploy.
--
-- Important:
-- This version does NOT create a unique client_event_id index because existing
-- historical/imported events may contain duplicate client_event_id values.

alter table public.events
  add column if not exists client_event_id text,
  add column if not exists source_event_id text,
  add column if not exists canonical_school text,
  add column if not exists photographers text[] not null default '{}'::text[],
  add column if not exists assistants text[] not null default '{}'::text[],
  add column if not exists no_assistant boolean not null default false,
  add column if not exists irm numeric,
  add column if not exists rain_info text,
  add column if not exists history text,
  add column if not exists active boolean not null default true,
  add column if not exists updated_at timestamptz not null default now();

drop index if exists events_client_event_id_unique_idx;

create index if not exists events_client_event_id_idx on public.events (client_event_id);
create index if not exists events_date_idx on public.events (date);
create index if not exists events_source_idx on public.events (source);

alter table public.events enable row level security;

drop policy if exists "Authenticated users can manage events during internal testing" on public.events;
drop policy if exists "Authenticated users can read events during internal testing" on public.events;
drop policy if exists "Authenticated users can insert events during internal testing" on public.events;
drop policy if exists "Authenticated users can update events during internal testing" on public.events;

create policy "Authenticated users can read events during internal testing"
on public.events
for select
to authenticated
using (true);

create policy "Authenticated users can insert events during internal testing"
on public.events
for insert
to authenticated
with check (true);

create policy "Authenticated users can update events during internal testing"
on public.events
for update
to authenticated
using (true)
with check (true);

-- Optional duplicate check. Duplicates here are okay for historical/imported rows;
-- this is informational only.
select client_event_id, count(*) as duplicate_count
from public.events
where client_event_id is not null
group by client_event_id
having count(*) > 1
order by duplicate_count desc, client_event_id
limit 25;

-- Check recent manual events after running:
select id, client_event_id, source, title, date, time, active, created_at, updated_at
from public.events
where source in ('manual_app', 'app')
   or client_event_id like 'custom-%'
order by created_at desc
limit 25;
