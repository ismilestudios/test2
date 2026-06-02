-- iSmile Scheduler Team Members migration
-- Run this in Supabase SQL Editor after the original schema.
-- This makes staff_members usable immediately during internal testing.

alter table public.staff_members
  add column if not exists active boolean not null default true;

alter table public.staff_members
  add column if not exists updated_at timestamptz not null default now();

create unique index if not exists staff_members_name_role_unique_idx
  on public.staff_members (name, role);

alter table public.staff_members enable row level security;

drop policy if exists "Logged-in users can read staff" on public.staff_members;
drop policy if exists "Schedulers can manage staff" on public.staff_members;
drop policy if exists "Authenticated users can read staff members" on public.staff_members;
drop policy if exists "Authenticated users can manage staff members during internal testing" on public.staff_members;

create policy "Authenticated users can read staff members"
on public.staff_members
for select
to authenticated
using (true);

create policy "Authenticated users can manage staff members during internal testing"
on public.staff_members
for all
to authenticated
using (true)
with check (true);
