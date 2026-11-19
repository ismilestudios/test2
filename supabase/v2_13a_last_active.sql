-- iSmile Scheduler v2.13a — Last Active tracking
-- Run once in Supabase SQL Editor BEFORE deploying v2.13a.
--
-- PURPOSE:
-- * Replaces misleading "Last Login" reporting with actual Scheduler-use recency.
-- * Does NOT modify events, schools, assignments, Board stages, or notes.
-- * Does NOT create a new public table, so the Oct. 30 Data API new-table grant
--   change does not require a new table grant here.

alter table public.app_users
  add column if not exists last_active_at timestamptz;

-- Authenticated Scheduler users can only touch THEIR OWN activity timestamp.
-- SECURITY DEFINER avoids relying on the broader legacy app_users update policy,
-- while the email match keeps this operation scoped to the current auth user.
create or replace function public.touch_scheduler_last_active()
returns timestamptz
language plpgsql
security definer
set search_path = public, auth
as $$
declare
  active_at timestamptz := now();
  current_email text := lower(coalesce(auth.jwt() ->> 'email', ''));
begin
  if current_email = '' then
    raise exception 'Authenticated email is required';
  end if;

  update public.app_users
  set last_active_at = active_at
  where lower(email) = current_email
    and active = true;

  return active_at;
end;
$$;

revoke all on function public.touch_scheduler_last_active() from public;
grant execute on function public.touch_scheduler_last_active() to authenticated;
grant execute on function public.touch_scheduler_last_active() to service_role;

-- Helpful verification query (optional; read-only):
-- select name, email, role, active, last_active_at from public.app_users order by last_active_at desc nulls last, name;
