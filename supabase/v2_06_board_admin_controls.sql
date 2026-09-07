-- iSmile Scheduler v2.06 — The Board Admin Hide / Done controls
-- Run once in the Supabase SQL Editor BEFORE deploying v2.06.
--
-- IMPORTANT SAFETY BOUNDARY:
-- This migration creates ONLY public.post_production_board_admin_controls.
-- It does NOT alter, update, insert into, delete from, or backfill public.events,
-- public.schools, Carrie View state, Picture Day Notes, School Notes, staffing,
-- rollout data, or existing Board status/note history tables.
--
-- Control semantics:
--   photographer_key = '__event__'  -> event-level Hide control
--   photographer_key = actual key  -> photographer-tile Done control
-- Existing Board records remain untouched and can still serve as history/rollback.

create table if not exists public.post_production_board_admin_controls (
  event_id uuid not null references public.events(id) on delete cascade,
  photographer_key text not null,
  hidden_at timestamptz,
  hidden_by text,
  completed_at timestamptz,
  completed_by text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  primary key (event_id, photographer_key),
  check (length(btrim(photographer_key)) > 0)
);

create index if not exists post_production_board_admin_controls_updated_idx
  on public.post_production_board_admin_controls (updated_at desc);

alter table public.post_production_board_admin_controls enable row level security;

drop policy if exists "Authenticated users can read Board Admin controls" on public.post_production_board_admin_controls;
create policy "Authenticated users can read Board Admin controls"
on public.post_production_board_admin_controls
for select
to authenticated
using (true);

drop policy if exists "Admins can add Board Admin controls" on public.post_production_board_admin_controls;
create policy "Admins can add Board Admin controls"
on public.post_production_board_admin_controls
for insert
to authenticated
with check (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) = 'admin'
  )
);

drop policy if exists "Admins can update Board Admin controls" on public.post_production_board_admin_controls;
create policy "Admins can update Board Admin controls"
on public.post_production_board_admin_controls
for update
to authenticated
using (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) = 'admin'
  )
)
with check (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) = 'admin'
  )
);

grant select, insert, update on public.post_production_board_admin_controls to authenticated;

-- No seed/backfill is required. Existing Board tiles remain visible and behave
-- exactly as before until an Admin explicitly uses Hide or Done in v2.06.
