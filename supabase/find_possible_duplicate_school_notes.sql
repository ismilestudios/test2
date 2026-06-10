-- Optional diagnostic only: finds same-name school records that may have been created
-- by older original_name upsert behavior. Do not delete anything from this output blindly.
select
  lower(trim(name)) as normalized_name,
  count(*) as row_count,
  jsonb_agg(jsonb_build_object(
    'id', id,
    'name', name,
    'original_name', original_name,
    'active', active,
    'merged_into', merged_into,
    'notes_preview', left(coalesce(notes, ''), 120),
    'updated_at', updated_at
  ) order by updated_at desc nulls last) as rows
from public.schools
group by lower(trim(name))
having count(*) > 1
order by row_count desc, normalized_name;
