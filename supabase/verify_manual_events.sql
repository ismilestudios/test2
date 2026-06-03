-- iSmile Scheduler manual/future event verification
-- Run this in Supabase SQL Editor if a newly-added event does not appear after refresh.
-- It shows manually-created app events, newest first.

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
