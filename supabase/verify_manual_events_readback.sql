-- iSmile Scheduler: verify manual event save/readback
-- Run this after adding a manual/future event that disappears after refresh.

-- 1) Shows recent manual/custom app events.
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

-- 2) Shows anything on June 12, 2026 specifically.
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

-- 3) Confirms event read policy exists.
select schemaname, tablename, policyname, permissive, roles, cmd
from pg_policies
where schemaname = 'public'
  and tablename = 'events'
order by policyname;
