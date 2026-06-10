# iSmile Scheduler v0.91 — Note Attribution Update

Starting from the provided last-working ZIP, this update adds:

- Header/browser title changed to `iSmile Scheduler v0.91`
- Automatic attribution metadata for edited Picture Day Info
- Automatic attribution metadata for edited Notes on School
- Non-editable attribution pills such as `[Matt • 1/24/25]`
- Existing notes remain untouched until edited/saved again

## Required SQL

Run this once before deploying or before saving new notes:

`supabase/note_attribution_and_version_v0_9_migration.sql`

The SQL adds JSON metadata columns only. It does not overwrite or delete existing notes/events/schools.
