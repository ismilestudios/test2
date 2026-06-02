-- iSmile Scheduler School List migration
-- Run this in Supabase SQL Editor after the original schema.
-- This makes School List edits persist in Supabase.

alter table public.schools
  add column if not exists original_name text,
  add column if not exists state_zip text,
  add column if not exists contact_first text,
  add column if not exists contact_last text,
  add column if not exists contact_phone text,
  add column if not exists contact_email text,
  add column if not exists contact_title text,
  add column if not exists reference_images jsonb not null default '[]'::jsonb,
  add column if not exists merged_into text,
  add column if not exists active boolean not null default true,
  add column if not exists updated_at timestamptz not null default now();

create unique index if not exists schools_original_name_unique_idx
  on public.schools (original_name);

alter table public.schools enable row level security;

drop policy if exists "Schedulers can manage schools" on public.schools;
drop policy if exists "Authenticated users can manage schools during internal testing" on public.schools;

create policy "Authenticated users can manage schools during internal testing"
on public.schools
for all
to authenticated
using (true)
with check (true);
