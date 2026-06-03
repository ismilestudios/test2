-- iSmile Scheduler Events manual readback / RLS policy fix
-- Safe to rerun.
-- Use this if manual events save but disappear after refresh.

alter table public.events enable row level security;

drop policy if exists "Authenticated users can manage events during internal testing" on public.events;
drop policy if exists "Authenticated users can read events during internal testing" on public.events;
drop policy if exists "Authenticated users can insert events during internal testing" on public.events;
drop policy if exists "Authenticated users can update events during internal testing" on public.events;

create policy "Authenticated users can read events during internal testing"
on public.events
for select
to authenticated
using (true);

create policy "Authenticated users can insert events during internal testing"
on public.events
for insert
to authenticated
with check (true);

create policy "Authenticated users can update events during internal testing"
on public.events
for update
to authenticated
using (true)
with check (true);

-- Optional: allow authenticated soft-removal/restore through updates.
-- Deletes are intentionally not granted; use active=false instead.
