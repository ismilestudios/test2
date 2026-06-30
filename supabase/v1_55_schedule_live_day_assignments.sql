-- v1.55 Schedule Live per-day assignments for multi-day events
-- Safe additive migration: adds a JSONB column only if it does not already exist.
-- No events or existing event data are deleted or changed.
alter table public.events
  add column if not exists schedule_live_day_assignments jsonb default '{}'::jsonb;
