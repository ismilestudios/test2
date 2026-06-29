-- Scheduler v1.5
-- Safe merge only: converts existing Headshots event type rows into Special Event.
-- This does NOT delete any events, schools, notes, assignments, or history.

UPDATE events
SET event_type = 'Special Event',
    updated_at = NOW()
WHERE event_type = 'Headshots';
