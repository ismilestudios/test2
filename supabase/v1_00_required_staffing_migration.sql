-- iSmile Scheduler v1.00 Required Staffing Migration
-- Purpose: add durable event-level staffing requirements for Schedule Live and event editing.
-- Safe behavior:
--   - Adds columns only if they do not already exist.
--   - Does not insert, delete, or rename events.
--   - Does not overwrite existing photographer/assistant assignments.
--   - Does not backfill rows, so the app can continue deriving requirements from event titles until a user explicitly saves them.

ALTER TABLE public.events
  ADD COLUMN IF NOT EXISTS required_photographers integer;

ALTER TABLE public.events
  ADD COLUMN IF NOT EXISTS required_assistants integer;

COMMENT ON COLUMN public.events.required_photographers IS 'Number of photographers required for this event. Nullable so older events can fall back to title/assignment inference.';
COMMENT ON COLUMN public.events.required_assistants IS 'Number of assistants needed for this event. Nullable so older events can fall back to title/assignment inference.';
