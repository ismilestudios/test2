-- iSmile Scheduler: two-day events and arrival time migration
-- Safe to rerun.
-- Adds optional event end date and photographer arrival time.

alter table public.events
  add column if not exists end_date date,
  add column if not exists arrival_time text;

create index if not exists events_end_date_idx on public.events (end_date);
