-- iSmile Scheduler v0.91 permissions simplification
-- Keeps only two permission roles: admin and photographer.

create table if not exists public.app_users (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  email text not null unique,
  role text not null default 'photographer',
  active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Normalize older role values into the simplified model.
update public.app_users
set role = case when role = 'admin' then 'admin' else 'photographer' end,
    updated_at = now()
where role is distinct from case when role = 'admin' then 'admin' else 'photographer' end;

-- Keep the table permissive for now; the frontend enforces simple role behavior.
-- Photographer users cannot remove events, restore removed events, see Admin, or merge schools.
