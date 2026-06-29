-- Scheduler v1.3d: optional secondary contact fields for School List records
alter table public.schools
  add column if not exists secondary_contact_first text,
  add column if not exists secondary_contact_last text,
  add column if not exists secondary_contact_email text,
  add column if not exists secondary_contact_title text;
