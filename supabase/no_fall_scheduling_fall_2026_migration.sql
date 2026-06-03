-- iSmile Scheduler - No Fall Scheduling flag for Carrie View (Fall 2026)
-- Run this once in Supabase SQL Editor before deploying the ZIP.

alter table public.schools
  add column if not exists no_fall_scheduling_fall_2026 boolean not null default false;

create index if not exists schools_no_fall_scheduling_fall_2026_idx
  on public.schools (no_fall_scheduling_fall_2026);

-- Keep existing schools visible by default. Only schools marked from Carrie View/School List
-- will be hidden from the Fall 2026 To Be Scheduled panel.
update public.schools
set no_fall_scheduling_fall_2026 = false
where no_fall_scheduling_fall_2026 is null;
