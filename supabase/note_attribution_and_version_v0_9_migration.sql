-- iSmile Scheduler v0.91 note attribution migration
-- Adds non-editable metadata used to display attribution pills for notes.

alter table if exists public.events
  add column if not exists picture_day_info_attribution jsonb;

alter table if exists public.schools
  add column if not exists school_notes_attribution jsonb;

comment on column public.events.picture_day_info_attribution is
  'Generated app metadata for Picture Day Info attribution pill: name, email, date, savedAt.';

comment on column public.schools.school_notes_attribution is
  'Generated app metadata for Notes on School attribution pill: name, email, date, savedAt.';
