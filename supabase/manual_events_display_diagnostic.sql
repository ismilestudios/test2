-- iSmile Scheduler manual events display diagnostic
-- Run to confirm manual events exist and are active.

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
where active = true
  and (
    source in ('manual_app', 'app')
    or client_event_id like 'custom-%'
  )
order by date asc, created_at desc;

-- Specific current test date:
select
  id,
  client_event_id,
  source,
  title,
  date,
  time,
  active,
  created_at,
  updated_at
from public.events
where date = '2026-06-12'
order by created_at desc;
