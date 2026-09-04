-- iSmile Scheduler v2.03 — The Board
-- Run once in the Supabase SQL Editor before deploying v2.03.
-- IMPORTANT: This migration creates ONLY public.post_production_board.
-- It does not alter, update, insert into, delete from, or backfill public.events,
-- public.schools, Carrie View state, Picture Day Notes, staffing, or rollout data.

create extension if not exists pgcrypto;

create table if not exists public.post_production_board (
  event_id uuid primary key references public.events(id) on delete cascade,
  stage text not null default 'school_events'
    check (stage in ('school_events', 'editing', 'cutting_retouching', 'uploaded', 'selling')),
  post_production_notes text not null default '',
  stage_changed_at timestamptz not null default now(),
  created_by text,
  updated_by text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists post_production_board_stage_changed_idx
  on public.post_production_board (stage, stage_changed_at);

alter table public.post_production_board enable row level security;

drop policy if exists "Authenticated users can read post production board" on public.post_production_board;
create policy "Authenticated users can read post production board"
on public.post_production_board
for select
to authenticated
using (true);

drop policy if exists "Schedulers can add post production board records" on public.post_production_board;
create policy "Schedulers can add post production board records"
on public.post_production_board
for insert
to authenticated
with check (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer', 'scheduler', 'viewer_photographer')
  )
);

drop policy if exists "Schedulers can update post production board records" on public.post_production_board;
create policy "Schedulers can update post production board records"
on public.post_production_board
for update
to authenticated
using (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer', 'scheduler', 'viewer_photographer')
  )
)
with check (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer', 'scheduler', 'viewer_photographer')
  )
);

grant select, insert, update on public.post_production_board to authenticated;

-- No seed rows are required.
-- An eligible production event with no Board row is displayed in "School Events"
-- automatically once its event date arrives. A row is created only when staff
-- move the card or save Post-Production Notes.
