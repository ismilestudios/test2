-- iSmile Scheduler: true manual event persistence diagnostic
-- Run this if an event shows before refresh but disappears after a deployment/refresh.

-- 1) Check the specific June 12, 2026 date.
select
  id,
  client_event_id,
  source,
  title,
  date,
  time,
  event_type,
  canonical_school,
  active,
  created_at,
  updated_at
from public.events
where date = '2026-06-12'
order by created_at desc;

-- 2) Check newest manual/custom events.
select
  id,
  client_event_id,
  source,
  title,
  date,
  time,
  event_type,
  canonical_school,
  active,
  created_at,
  updated_at
from public.events
where source in ('manual_app', 'app')
   or client_event_id like 'custom-%'
order by created_at desc
limit 50;

-- 3) Check whether authenticated users can read/select events under RLS.
select schemaname, tablename, policyname, roles, cmd, qual, with_check
from pg_policies
where schemaname = 'public'
  and tablename = 'events'
order by policyname;
