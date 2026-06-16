-- iSmile Scheduler v0.97d Staff Directory migration
-- Run once in Supabase SQL Editor before editing titles on staff contacts.
-- Existing name / role / email / phone / active fields are preserved.

alter table public.staff_members
  add column if not exists title text;

alter table public.staff_members
  add column if not exists email text;

alter table public.staff_members
  add column if not exists phone text;

alter table public.staff_members
  add column if not exists active boolean not null default true;

alter table public.staff_members
  add column if not exists updated_at timestamptz not null default now();

create unique index if not exists staff_members_name_role_unique_idx
  on public.staff_members (name, role);
