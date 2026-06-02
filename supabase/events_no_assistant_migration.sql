-- iSmile Scheduler Events no-assistant migration
-- Run this after the previous events migration to support intentionally no-assistant events.

alter table public.events
  add column if not exists no_assistant boolean not null default false;
