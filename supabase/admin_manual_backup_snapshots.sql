-- Optional manual backup snapshots for iSmile Scheduler.
-- Run this in Supabase SQL Editor before risky SQL updates.
-- You may change the suffix date if you want a more specific label.

create table if not exists events_backup_manual_snapshot as
select * from public.events;

create table if not exists schools_backup_manual_snapshot as
select * from public.schools;

-- Optional verification counts:
select 'events_backup_manual_snapshot' as table_name, count(*) as row_count from events_backup_manual_snapshot
union all
select 'schools_backup_manual_snapshot' as table_name, count(*) as row_count from schools_backup_manual_snapshot;
