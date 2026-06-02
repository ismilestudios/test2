-- iSmile Scheduler starter schema for Supabase/Postgres
-- Run this in Supabase SQL Editor after creating the project.

create extension if not exists "uuid-ossp";

create table if not exists public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  email text,
  full_name text,
  role text not null default 'viewer' check (role in ('admin', 'scheduler', 'photographer', 'viewer')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.schools (
  id uuid primary key default uuid_generate_v4(),
  name text not null,
  district text,
  irm numeric,
  address text,
  city text,
  state text,
  zip text,
  notes text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.staff_members (
  id uuid primary key default uuid_generate_v4(),
  name text not null,
  email text,
  phone text,
  role text not null check (role in ('photographer', 'assistant', 'admin')),
  active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.school_contacts (
  id uuid primary key default uuid_generate_v4(),
  school_id uuid not null references public.schools(id) on delete cascade,
  first_name text,
  last_name text,
  title text,
  email text,
  phone text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.events (
  id uuid primary key default uuid_generate_v4(),
  school_id uuid references public.schools(id) on delete set null,
  title text not null,
  date date not null,
  time text,
  event_type text not null,
  status text not null default 'Scheduled',
  season text,
  picture_day_info text,
  source text,
  source_event_id text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.event_assignments (
  id uuid primary key default uuid_generate_v4(),
  event_id uuid not null references public.events(id) on delete cascade,
  staff_member_id uuid not null references public.staff_members(id) on delete cascade,
  assignment_role text not null check (assignment_role in ('photographer', 'assistant', 'admin')),
  created_at timestamptz not null default now(),
  unique(event_id, staff_member_id, assignment_role)
);

create table if not exists public.school_notes (
  id uuid primary key default uuid_generate_v4(),
  school_id uuid not null references public.schools(id) on delete cascade,
  note_type text not null default 'school' check (note_type in ('school', 'school_log', 'import_note')),
  body text not null,
  created_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now()
);

create table if not exists public.school_images (
  id uuid primary key default uuid_generate_v4(),
  school_id uuid not null references public.schools(id) on delete cascade,
  storage_path text not null,
  caption text,
  image_type text default 'reference',
  created_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now()
);

alter table public.profiles enable row level security;
alter table public.schools enable row level security;
alter table public.staff_members enable row level security;
alter table public.school_contacts enable row level security;
alter table public.events enable row level security;
alter table public.event_assignments enable row level security;
alter table public.school_notes enable row level security;
alter table public.school_images enable row level security;

create or replace function public.current_user_role()
returns text
language sql
security definer
set search_path = public
as $$
  select role from public.profiles where id = auth.uid()
$$;

create policy "Logged-in users can read profiles" on public.profiles for select to authenticated using (true);
create policy "Users can update their own profile" on public.profiles for update to authenticated using (id = auth.uid()) with check (id = auth.uid());

create policy "Logged-in users can read schools" on public.schools for select to authenticated using (true);
create policy "Schedulers can manage schools" on public.schools for all to authenticated using (public.current_user_role() in ('admin', 'scheduler')) with check (public.current_user_role() in ('admin', 'scheduler'));

create policy "Logged-in users can read staff" on public.staff_members for select to authenticated using (true);
create policy "Schedulers can manage staff" on public.staff_members for all to authenticated using (public.current_user_role() in ('admin', 'scheduler')) with check (public.current_user_role() in ('admin', 'scheduler'));

create policy "Logged-in users can read contacts" on public.school_contacts for select to authenticated using (true);
create policy "Schedulers can manage contacts" on public.school_contacts for all to authenticated using (public.current_user_role() in ('admin', 'scheduler')) with check (public.current_user_role() in ('admin', 'scheduler'));

create policy "Logged-in users can read events" on public.events for select to authenticated using (true);
create policy "Schedulers can manage events" on public.events for all to authenticated using (public.current_user_role() in ('admin', 'scheduler')) with check (public.current_user_role() in ('admin', 'scheduler'));

create policy "Logged-in users can read assignments" on public.event_assignments for select to authenticated using (true);
create policy "Schedulers can manage assignments" on public.event_assignments for all to authenticated using (public.current_user_role() in ('admin', 'scheduler')) with check (public.current_user_role() in ('admin', 'scheduler'));

create policy "Logged-in users can read notes" on public.school_notes for select to authenticated using (true);
create policy "Schedulers can manage notes" on public.school_notes for all to authenticated using (public.current_user_role() in ('admin', 'scheduler')) with check (public.current_user_role() in ('admin', 'scheduler'));

create policy "Logged-in users can read images" on public.school_images for select to authenticated using (true);
create policy "Schedulers can manage images" on public.school_images for all to authenticated using (public.current_user_role() in ('admin', 'scheduler')) with check (public.current_user_role() in ('admin', 'scheduler'));

create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.profiles (id, email, full_name, role)
  values (new.id, new.email, coalesce(new.raw_user_meta_data->>'full_name', ''), 'viewer')
  on conflict (id) do nothing;
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created
after insert on auth.users
for each row execute function public.handle_new_user();

-- Optional helper indexes
create index if not exists events_date_idx on public.events(date);
create index if not exists events_school_id_idx on public.events(school_id);
create index if not exists school_notes_school_id_idx on public.school_notes(school_id);
create index if not exists school_contacts_school_id_idx on public.school_contacts(school_id);
