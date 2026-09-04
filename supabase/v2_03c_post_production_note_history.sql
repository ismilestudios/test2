-- iSmile Scheduler v2.03c — Post-Production Note History
-- Run once in the Supabase SQL Editor before deploying v2.03c.
-- IMPORTANT: This migration creates ONLY public.post_production_notes and copies
-- any existing v2.03-v2.03b Board memo into that new note-history table.
-- It does NOT alter, update, insert into, delete from, or backfill public.events,
-- public.schools, Carrie View state, Picture Day Notes, staffing, or rollout data.
-- The legacy public.post_production_board.post_production_notes column is left
-- intact for rollback/backward compatibility; v2.03c stops using it for new notes.

create extension if not exists pgcrypto;

create table if not exists public.post_production_notes (
  id uuid primary key default gen_random_uuid(),
  event_id uuid not null references public.events(id) on delete cascade,
  note_text text not null check (length(trim(note_text)) > 0),
  created_by text,
  created_at timestamptz not null default now(),
  edited_by text,
  edited_at timestamptz,
  updated_at timestamptz not null default now(),
  migration_key text unique
);

create index if not exists post_production_notes_event_created_idx
  on public.post_production_notes (event_id, created_at desc);

alter table public.post_production_notes enable row level security;

drop policy if exists "Authenticated users can read post production notes" on public.post_production_notes;
create policy "Authenticated users can read post production notes"
on public.post_production_notes
for select
to authenticated
using (true);

drop policy if exists "Schedulers can add post production notes" on public.post_production_notes;
create policy "Schedulers can add post production notes"
on public.post_production_notes
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

drop policy if exists "Schedulers can edit post production notes" on public.post_production_notes;
create policy "Schedulers can edit post production notes"
on public.post_production_notes
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

grant select, insert, update on public.post_production_notes to authenticated;

-- Preserve any single legacy Board memo already saved in v2.03-v2.03b.
-- Because the old model stored only one mutable memo, exact original note history
-- cannot be reconstructed. We preserve the current text as one note and use the
-- best available Board user/timestamp metadata. The migration_key makes this
-- copy idempotent if the SQL is ever run again.
insert into public.post_production_notes (
  event_id,
  note_text,
  created_by,
  created_at,
  updated_at,
  migration_key
)
select
  ppb.event_id,
  trim(ppb.post_production_notes),
  coalesce(ppb.updated_by, ppb.created_by),
  coalesce(ppb.updated_at, ppb.created_at, now()),
  coalesce(ppb.updated_at, ppb.created_at, now()),
  'v2_03_legacy_board_note:' || ppb.event_id::text
from public.post_production_board ppb
where length(trim(coalesce(ppb.post_production_notes, ''))) > 0
on conflict (migration_key) do nothing;

-- There is intentionally no DELETE policy/grant. Post-Production Notes are an
-- appendable historical record. Existing notes may be edited with attribution,
-- but normal Scheduler users cannot delete the history rows.
