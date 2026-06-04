-- iSmile Scheduler Admin Users & Permissions
-- Run once in Supabase SQL Editor before using Admin → Users & Permissions.

create extension if not exists pgcrypto;

create table if not exists public.app_users (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  email text not null unique,
  role text not null default 'viewer_photographer' check (role in ('admin', 'scheduler', 'viewer_photographer')),
  active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.app_users enable row level security;

drop policy if exists "Authenticated users can read app users" on public.app_users;
create policy "Authenticated users can read app users"
on public.app_users
for select
to authenticated
using (true);

drop policy if exists "Authenticated users can insert app users" on public.app_users;
create policy "Authenticated users can insert app users"
on public.app_users
for insert
to authenticated
with check (true);

drop policy if exists "Authenticated users can update app users" on public.app_users;
create policy "Authenticated users can update app users"
on public.app_users
for update
to authenticated
using (true)
with check (true);

insert into public.app_users (name, email, role, active)
values ('Matt', 'matt@ismilestudios.com', 'admin', true)
on conflict (email) do update
set role = excluded.role,
    active = true,
    updated_at = now();

-- NOTE: For showing every Supabase Auth account automatically, run:
-- supabase/admin_auth_users_sync_migration.sql
