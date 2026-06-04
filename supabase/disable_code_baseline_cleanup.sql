-- Optional cleanup for the duplicate-looking pre-June calendar issue.
-- This does NOT delete manual events or Google Calendar imported events.
-- It only soft-hides old bundled/code-baseline rows that should no longer be used now that iSmile Scheduler is driven by Supabase + imported ICS + manual Scheduler entries.

update public.events
set
  active = false,
  status = coalesce(nullif(status, ''), 'Removed'),
  history = trim(coalesce(history, '') || E'\n\nSoft-hidden by cleanup: obsolete imported_code_baseline seed row. The Scheduler now uses Supabase/ICS/manual events as source of truth.'),
  updated_at = now()
where source = 'imported_code_baseline'
  and active is distinct from false;

-- Verification: should return 0 active code-baseline rows after cleanup.
select count(*) as remaining_active_code_baseline_events
from public.events
where source = 'imported_code_baseline'
  and active is distinct from false;
