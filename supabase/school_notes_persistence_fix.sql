-- iSmile Scheduler v0.91 - School Notes persistence safety fix
-- Run before deploying the matching ZIP.
-- Purpose:
-- 1) Ensure older school rows have a stable original_name key.
-- 2) Ensure Notes on School attribution metadata exists.
-- 3) Allow logged-in users to save school notes/edits under the simplified Admin/Photographer model.

alter table if exists public.schools
  add column if not exists original_name text,
  add column if not exists school_notes_attribution jsonb,
  add column if not exists updated_at timestamptz not null default now();

update public.schools
set original_name = name
where (original_name is null or btrim(original_name) = '')
  and name is not null;

create unique index if not exists schools_original_name_unique_idx
  on public.schools (original_name);

alter table public.schools enable row level security;

drop policy if exists "Authenticated users can manage schools during internal testing" on public.schools;
drop policy if exists "Schedulers can manage schools" on public.schools;
drop policy if exists "Logged-in users can read schools" on public.schools;

create policy "Logged-in users can read schools"
on public.schools
for select
to authenticated
using (true);

create policy "Authenticated users can manage schools"
on public.schools
for all
to authenticated
using (true)
with check (true);
