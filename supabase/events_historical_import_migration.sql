-- iSmile Scheduler Historical Events Import migration
-- Run this before/with the historical import build.
-- It adds a stable source_event_id so imported code-baseline events are only copied once.

alter table public.events
  add column if not exists source_event_id text;

create index if not exists events_source_event_id_idx
on public.events (source_event_id);

-- Optional safety index for looking up imported baseline records.
create index if not exists events_source_source_event_id_idx
on public.events (source, source_event_id);
