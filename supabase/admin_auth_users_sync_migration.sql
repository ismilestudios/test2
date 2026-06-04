-- iSmile Scheduler Admin Users: Supabase Auth Sync
-- Run this in Supabase SQL Editor.
-- Purpose: Admin -> Users & Permissions should show everyone who has created a Supabase Auth account.

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

-- Backfill all existing Supabase Auth users into the app-visible permissions table.
-- Existing manually configured roles/status are preserved.
insert into public.app_users (id, name, email, role, active, created_at, updated_at)
select
  u.id,
  coalesce(nullif(u.raw_user_meta_data ->> 'full_name', ''), nullif(u.raw_user_meta_data ->> 'name', ''), split_part(u.email, '@', 1), u.email),
  lower(u.email),
  case when lower(u.email) = 'matt@ismilestudios.com' then 'admin' else 'viewer_photographer' end,
  true,
  coalesce(u.created_at, now()),
  now()
from auth.users u
where u.email is not null
on conflict (email) do update
set
  name = coalesce(nullif(public.app_users.name, ''), excluded.name),
  updated_at = now();

-- Keep Matt as Admin if present.
update public.app_users
set role = 'admin', active = true, updated_at = now()
where lower(email) = 'matt@ismilestudios.com';

-- New Supabase signups will automatically appear in Admin -> Users & Permissions.
create or replace function public.sync_auth_user_to_app_users()
returns trigger
language plpgsql
security definer
set search_path = public, auth
as $$
begin
  if new.email is not null then
    insert into public.app_users (id, name, email, role, active, created_at, updated_at)
    values (
      new.id,
      coalesce(nullif(new.raw_user_meta_data ->> 'full_name', ''), nullif(new.raw_user_meta_data ->> 'name', ''), split_part(new.email, '@', 1), new.email),
      lower(new.email),
      case when lower(new.email) = 'matt@ismilestudios.com' then 'admin' else 'viewer_photographer' end,
      true,
      coalesce(new.created_at, now()),
      now()
    )
    on conflict (email) do update
    set
      name = coalesce(nullif(public.app_users.name, ''), excluded.name),
      updated_at = now();
  end if;
  return new;
end;
$$;

drop trigger if exists sync_auth_user_to_app_users_on_signup on auth.users;
create trigger sync_auth_user_to_app_users_on_signup
after insert on auth.users
for each row execute function public.sync_auth_user_to_app_users();

-- Helpful verification query:
-- select name, email, role, active from public.app_users order by active desc, email asc;
