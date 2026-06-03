-- iSmile Scheduler Events insert fix
-- Run only if you previously hit:
-- "there is no unique or exclusion constraint matching the ON CONFLICT specification"

drop index if exists events_client_event_id_unique_idx;

alter table public.events
  add column if not exists client_event_id text,
  add column if not exists source_event_id text,
  add column if not exists end_date date,
  add column if not exists arrival_time text,
  add column if not exists canonical_school text,
  add column if not exists photographers text[] not null default '{}'::text[],
  add column if not exists assistants text[] not null default '{}'::text[],
  add column if not exists no_assistant boolean not null default false,
  add column if not exists irm numeric,
  add column if not exists rain_info text,
  add column if not exists history text,
  add column if not exists active boolean not null default true,
  add column if not exists updated_at timestamptz not null default now();

create index if not exists events_client_event_id_idx
on public.events (client_event_id);

alter table public.events enable row level security;

drop policy if exists "Schedulers can manage events" on public.events;
drop policy if exists "Authenticated users can manage events during internal testing" on public.events;

create policy "Authenticated users can manage events during internal testing"
on public.events
for all
to authenticated
using (true)
with check (true);
