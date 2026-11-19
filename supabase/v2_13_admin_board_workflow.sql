-- iSmile Scheduler v2.13 — Admin / Board workflow additions
-- Run once in Supabase SQL Editor BEFORE deploying v2.13.
--
-- SAFETY BOUNDARIES:
-- * Does NOT modify public.events scheduling/staffing data.
-- * Does NOT modify School List names, contacts, notes, merge state, or IRM values.
-- * Fixes the app_users role constraint to match the existing UI roles.
-- * Adds read-only Admin visibility of Supabase Auth last-sign-in time.
-- * Adds append-only Board activity history.
-- * Adds a Board-only permanent-removal tombstone to the existing Admin controls table.
--
-- Supabase Data API change (Oct 30, 2026): the NEW activity table below includes
-- explicit grants in this same migration. No anon grant is used because Scheduler
-- is an authenticated internal application.

create extension if not exists pgcrypto;

-- ============================================================================
-- 1) Users & Permissions: current roles + Last Login
-- ============================================================================

alter table public.app_users
  add column if not exists last_sign_in_at timestamptz;

-- The UI already uses Admin / Photographer / Assistant. An older migration left
-- app_users_role_check on the legacy role set, which causes Assistant saves to fail.
alter table public.app_users
  drop constraint if exists app_users_role_check;

-- Normalize legacy values BEFORE installing the new strict constraint.
update public.app_users
set role = case
  when lower(coalesce(role, '')) = 'admin' then 'admin'
  when lower(coalesce(role, '')) in ('assistant', 'viewer', 'view_only') then 'assistant'
  else 'photographer'
end,
updated_at = now()
where role is distinct from case
  when lower(coalesce(role, '')) = 'admin' then 'admin'
  when lower(coalesce(role, '')) in ('assistant', 'viewer', 'view_only') then 'assistant'
  else 'photographer'
end;

alter table public.app_users
  alter column role set default 'photographer';

alter table public.app_users
  add constraint app_users_role_check
  check (role in ('admin', 'photographer', 'assistant'));

-- Backfill the authoritative Supabase Auth last-sign-in time for existing users.
update public.app_users au
set last_sign_in_at = u.last_sign_in_at
from auth.users u
where u.email is not null
  and lower(au.email) = lower(u.email)
  and au.last_sign_in_at is distinct from u.last_sign_in_at;

-- Replace the existing signup sync function so future Auth users use the CURRENT
-- role names and carry their Auth last-sign-in timestamp into app_users.
create or replace function public.sync_auth_user_to_app_users()
returns trigger
language plpgsql
security definer
set search_path = public, auth
as $$
begin
  if new.email is not null then
    insert into public.app_users (
      id,
      name,
      email,
      role,
      active,
      last_sign_in_at,
      created_at,
      updated_at
    )
    values (
      new.id,
      coalesce(
        nullif(new.raw_user_meta_data ->> 'full_name', ''),
        nullif(new.raw_user_meta_data ->> 'name', ''),
        split_part(new.email, '@', 1),
        new.email
      ),
      lower(new.email),
      case when lower(new.email) = 'matt@ismilestudios.com' then 'admin' else 'photographer' end,
      true,
      new.last_sign_in_at,
      coalesce(new.created_at, now()),
      now()
    )
    on conflict (email) do update
    set
      name = coalesce(nullif(public.app_users.name, ''), excluded.name),
      last_sign_in_at = excluded.last_sign_in_at,
      updated_at = public.app_users.updated_at;
  end if;
  return new;
end;
$$;

-- Ensure the signup trigger points at the updated function even on projects where
-- the older auth-sync migration was never installed or was recreated from scratch.
drop trigger if exists sync_auth_user_to_app_users_on_signup on auth.users;
create trigger sync_auth_user_to_app_users_on_signup
after insert on auth.users
for each row execute function public.sync_auth_user_to_app_users();

-- Keep last login current whenever Supabase Auth updates last_sign_in_at.
create or replace function public.sync_auth_user_last_sign_in_to_app_users()
returns trigger
language plpgsql
security definer
set search_path = public, auth
as $$
begin
  if new.email is not null then
    update public.app_users
    set last_sign_in_at = new.last_sign_in_at
    where lower(email) = lower(new.email);
  end if;
  return new;
end;
$$;

drop trigger if exists sync_auth_user_last_sign_in_on_update on auth.users;
create trigger sync_auth_user_last_sign_in_on_update
after update of last_sign_in_at on auth.users
for each row execute function public.sync_auth_user_last_sign_in_to_app_users();

-- Keep Matt as Admin if that account exists.
update public.app_users
set role = 'admin', active = true
where lower(email) = 'matt@ismilestudios.com';

-- ============================================================================
-- 2) Hidden Board events: permanent Board-only removal marker
-- ============================================================================

alter table public.post_production_board_admin_controls
  add column if not exists deleted_at timestamptz,
  add column if not exists deleted_by text;

-- ============================================================================
-- 3) Shared append-only Board activity history
-- ============================================================================

create table if not exists public.post_production_activity (
  id uuid primary key default gen_random_uuid(),
  event_id uuid not null references public.events(id) on delete cascade,
  event_title text,
  photographer_key text,
  photographer_name text,
  action_type text not null check (length(btrim(action_type)) > 0),
  action_text text not null check (length(btrim(action_text)) > 0),
  from_stage text,
  to_stage text,
  actor_email text,
  created_at timestamptz not null default now()
);

create index if not exists post_production_activity_created_idx
  on public.post_production_activity (created_at desc);

create index if not exists post_production_activity_event_created_idx
  on public.post_production_activity (event_id, created_at desc);

alter table public.post_production_activity enable row level security;

drop policy if exists "Authenticated users can read Board activity" on public.post_production_activity;
create policy "Authenticated users can read Board activity"
on public.post_production_activity
for select
to authenticated
using (true);

drop policy if exists "Schedulers can add Board activity" on public.post_production_activity;
create policy "Schedulers can add Board activity"
on public.post_production_activity
for insert
to authenticated
with check (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer')
  )
);

-- Explicit Data API grants for this NEW public table (required for new tables
-- after the October 30, 2026 Supabase change). No anon access is needed.
grant select, insert on public.post_production_activity to authenticated;
grant select, insert, update, delete on public.post_production_activity to service_role;

-- Existing tables retain their prior grants. These statements are explicit and
-- harmless, and make the intended Scheduler roles clear for the altered tables.
grant select, insert, update on public.app_users to authenticated;
grant select, insert, update on public.post_production_board_admin_controls to authenticated;

-- Helpful verification queries (optional; do not modify data):
-- select name, email, role, active, last_sign_in_at from public.app_users order by active desc, name;
-- select * from public.post_production_activity order by created_at desc limit 10;
