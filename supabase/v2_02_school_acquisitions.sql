-- iSmile Scheduler v2.02 — School Acquisitions
-- Run once in the Supabase SQL Editor before deploying v2.02.
-- IMPORTANT: This migration creates and seeds ONLY public.school_acquisitions.
-- It does not alter, update, insert into, delete from, or backfill public.schools.
-- It does not touch Carrie View state or any event/school-linking tables.

create extension if not exists pgcrypto;

create table if not exists public.school_acquisitions (
  id uuid primary key default gen_random_uuid(),
  school_name text not null check (length(btrim(school_name)) > 0),
  district text not null default '',
  mailing_address text not null default '',
  other_contact text not null default '',
  reached_out_by text[] not null default '{}'::text[],
  notes text not null default '',
  created_by text,
  updated_by text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create unique index if not exists school_acquisitions_name_district_unique_idx
  on public.school_acquisitions (lower(school_name), lower(district));

create index if not exists school_acquisitions_district_name_idx
  on public.school_acquisitions (district, school_name);

alter table public.school_acquisitions enable row level security;

drop policy if exists "Authenticated users can read school acquisitions" on public.school_acquisitions;
create policy "Authenticated users can read school acquisitions"
on public.school_acquisitions
for select
to authenticated
using (true);

drop policy if exists "Schedulers can add school acquisitions" on public.school_acquisitions;
create policy "Schedulers can add school acquisitions"
on public.school_acquisitions
for insert
to authenticated
with check (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer', 'scheduler', 'viewer_photographer')
  )
);

drop policy if exists "Schedulers can update school acquisitions" on public.school_acquisitions;
create policy "Schedulers can update school acquisitions"
on public.school_acquisitions
for update
to authenticated
using (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer', 'scheduler', 'viewer_photographer')
  )
)
with check (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) in ('admin', 'photographer', 'scheduler', 'viewer_photographer')
  )
);

drop policy if exists "Admins can remove school acquisitions" on public.school_acquisitions;
create policy "Admins can remove school acquisitions"
on public.school_acquisitions
for delete
to authenticated
using (
  exists (
    select 1
    from public.app_users au
    where lower(au.email) = lower(coalesce(auth.jwt() ->> 'email', ''))
      and au.active = true
      and lower(au.role) = 'admin'
  )
);

grant select, insert, update, delete on public.school_acquisitions to authenticated;

-- Initial acquisition list supplied by iSmile Studios.
-- Matt has already reached out to every Guilderland, Voorheesville,
-- Mohonasen, Burnt Hills–Ballston Lake, and Saratoga Springs school below.
-- Averill Park and Scotia-Glenville schools intentionally begin with no outreach.
insert into public.school_acquisitions
  (school_name, district, mailing_address, other_contact, reached_out_by, notes, created_by, updated_by)
values
  ('Altamont Elementary', 'Guilderland CSD', '117 Grand Street, PO Box 648, Altamont, NY 12009', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Guilderland Elementary', 'Guilderland CSD', '2225 Western Ave, Guilderland, NY 12084', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Lynnwood Elementary', 'Guilderland CSD', '8 Regina Dr, Schenectady, NY 12303', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Pine Bush Elementary', 'Guilderland CSD', '3437 Carman Rd, Schenectady, NY 12303', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Westmere Elementary', 'Guilderland CSD', '6270 Johnston Rd, Albany, NY 12203', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Voorheesville Elementary', 'Voorheesville CSD', '129 Maple Ave, PO Box 468, Voorheesville, NY 12186', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Bradt Primary School', 'Mohonasen CSD', '2719 Hamburg Street, Schenectady, NY 12303', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Pinewood Intermediate School', 'Mohonasen CSD', '901 Kings Road, Schenectady, NY 12303', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Charlton Heights Elementary', 'Burnt Hills–Ballston Lake CSD', '32 Lake Hill Rd, Burnt Hills, NY 12027', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Pashley Elementary', 'Burnt Hills–Ballston Lake CSD', '59 Eastline Rd, Ballston Lake, NY 12019', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Caroline Street Elementary', 'Saratoga Springs CSD', '310 Caroline Street, Saratoga Springs, NY 12866', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Division Street Elementary', 'Saratoga Springs CSD', '220 Division Street, Saratoga Springs, NY 12866', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Dorothy Nolan Elementary', 'Saratoga Springs CSD', '221 Jones Road, Saratoga Springs, NY 12866', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Geyser Road Elementary', 'Saratoga Springs CSD', '61 Geyser Road, Saratoga Springs, NY 12866', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Greenfield Elementary', 'Saratoga Springs CSD', '3180 Route 9N, Greenfield Center, NY 12833', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Lake Avenue Elementary', 'Saratoga Springs CSD', '126 Lake Avenue, Saratoga Springs, NY 12866', '', array['Matt']::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Miller Hill / Sand Lake Elementary', 'Averill Park CSD', '8439 Miller Hill Rd, Averill Park, NY 12018', '', '{}'::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Poestenkill Elementary', 'Averill Park CSD', '1 School Street, Poestenkill, NY 12140', '', '{}'::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('West Sand Lake Elementary', 'Averill Park CSD', '24 Meeler Road, West Sand Lake, NY 12196', '', '{}'::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Glendaal Elementary', 'Scotia-Glenville CSD', '774 Sacandaga Road, Scotia, NY 12302', '', '{}'::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Glen-Worden Elementary', 'Scotia-Glenville CSD', '30 Worden Road, Scotia, NY 12302', '', '{}'::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Lincoln Elementary', 'Scotia-Glenville CSD', '40 Albion Street, Scotia, NY 12302', '', '{}'::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed'),
  ('Sacandaga Elementary', 'Scotia-Glenville CSD', '300 Wren Street, Scotia, NY 12302', '', '{}'::text[], '', 'Initial v2.02 seed', 'Initial v2.02 seed')
on conflict do nothing;

-- Optional verification after running:
-- select school_name, district, reached_out_by from public.school_acquisitions order by district, school_name;
