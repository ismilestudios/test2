-- iSmile Scheduler v2.15 — School List Images (Supabase Storage-backed)
-- Run once in Supabase SQL Editor BEFORE deploying v2.15.
--
-- SAFETY BOUNDARIES:
-- * Does NOT modify public.events.
-- * Does NOT rewrite public.schools names, contacts, notes, IRM, merge state, or scheduling flags.
-- * New uploads live in a private Storage bucket instead of bloating public.schools.reference_images.
-- * Existing legacy reference_images data remains untouched and continues to display.
-- * New table includes explicit Data API GRANTs required by Supabase's Oct 30, 2026 change.

create extension if not exists pgcrypto;

create table if not exists public.school_images (
  id uuid primary key default gen_random_uuid(),
  school_id uuid not null references public.schools(id) on delete cascade,
  storage_path text not null unique,
  caption text,
  image_type text not null default 'reference',
  sort_order integer not null default 0,
  created_by uuid references auth.users(id) on delete set null default auth.uid(),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Compatibility with projects where the older starter schema already created
-- public.school_images with fewer columns.
alter table public.school_images
  add column if not exists sort_order integer not null default 0,
  add column if not exists updated_at timestamptz not null default now();

alter table public.school_images
  alter column created_by set default auth.uid();

create index if not exists school_images_school_sort_created_idx
  on public.school_images (school_id, sort_order asc, created_at desc);

create unique index if not exists school_images_storage_path_uidx
  on public.school_images (storage_path);

alter table public.school_images enable row level security;

drop policy if exists "Authenticated users can read School List images" on public.school_images;
create policy "Authenticated users can read School List images"
on public.school_images
for select
to authenticated
using (true);

drop policy if exists "Schedulers can add School List images" on public.school_images;
create policy "Schedulers can add School List images"
on public.school_images
for insert
to authenticated
with check (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer')
  )
);

drop policy if exists "Schedulers can update School List images" on public.school_images;
create policy "Schedulers can update School List images"
on public.school_images
for update
to authenticated
using (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer')
  )
)
with check (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer')
  )
);

drop policy if exists "Schedulers can delete School List images" on public.school_images;
create policy "Schedulers can delete School List images"
on public.school_images
for delete
to authenticated
using (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer')
  )
);

-- Explicit Data API grants for this NEW/NEWLY-USED public table.
-- No anon access: Scheduler is an authenticated internal app.
grant select, insert, update, delete on public.school_images to authenticated;
grant select, insert, update, delete on public.school_images to service_role;

-- Private bucket: images require an authenticated session / signed URL.
insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values (
  'school-reference-images',
  'school-reference-images',
  false,
  10485760,
  array['image/jpeg', 'image/png', 'image/webp']::text[]
)
on conflict (id) do update
set
  public = false,
  file_size_limit = excluded.file_size_limit,
  allowed_mime_types = excluded.allowed_mime_types;

-- Storage read policy for all authenticated Scheduler users.
drop policy if exists "Authenticated users can read school reference images" on storage.objects;
create policy "Authenticated users can read school reference images"
on storage.objects
for select
to authenticated
using (bucket_id = 'school-reference-images');

-- Upload/update/delete are limited to active Admin/Photographer Scheduler users.
drop policy if exists "Schedulers can upload school reference images" on storage.objects;
create policy "Schedulers can upload school reference images"
on storage.objects
for insert
to authenticated
with check (
  bucket_id = 'school-reference-images'
  and exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer')
  )
);

drop policy if exists "Schedulers can update school reference images" on storage.objects;
create policy "Schedulers can update school reference images"
on storage.objects
for update
to authenticated
using (
  bucket_id = 'school-reference-images'
  and exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer')
  )
)
with check (
  bucket_id = 'school-reference-images'
  and exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer')
  )
);

drop policy if exists "Schedulers can delete school reference images" on storage.objects;
create policy "Schedulers can delete school reference images"
on storage.objects
for delete
to authenticated
using (
  bucket_id = 'school-reference-images'
  and exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer')
  )
);

-- Optional verification queries (read-only):
-- select * from public.school_images order by created_at desc limit 20;
-- select id, name, public, file_size_limit, allowed_mime_types from storage.buckets where id = 'school-reference-images';
