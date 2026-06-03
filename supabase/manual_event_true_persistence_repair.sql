-- iSmile Scheduler: manual event true persistence repair
-- Safe to rerun.
-- Use if manual events say saved but do not appear after refresh.

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
