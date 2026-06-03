-- Verify whether the June 12, 2026 test event exists in Supabase.
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
