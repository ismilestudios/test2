-- iSmile Scheduler v1.99 - Carrie View Spring 2027 scheduling flag
-- ADDITIVE ONLY: this migration does not modify or reset Fall 2026 Carrie state.
-- Run once in Supabase SQL Editor before deploying v1.99.

alter table public.schools
  add column if not exists no_spring_scheduling_spring_2027 boolean not null default false;

create index if not exists schools_no_spring_scheduling_spring_2027_idx
  on public.schools (no_spring_scheduling_spring_2027);

-- Intentionally no UPDATE statement here.
-- Existing canonical school rows, Fall 2026 flags, merges, names, contacts, notes,
-- addresses, active state, and merged_into values are left exactly as stored.
