# Admin Page + Backup Tools Update

This build adds a simple **Admin** tab to iSmile Scheduler.

## New Admin tools

- **Download Full Backup**
  - Exports a timestamped JSON backup containing events, removed events, schools, team members, and counts.
- **Download Events CSV**
  - Spreadsheet-friendly export of all visible/loaded events, including soft-deleted removed events.
- **Download Schools CSV**
  - Spreadsheet-friendly export of schools, contacts, IRM, notes, active status, and merge status.
- **Copy Backup SQL**
  - Copies quick Supabase backup-table SQL for `events` and `schools` before risky updates.
- **Health counts**
  - Active events
  - Removed events
  - Imported ICS events
  - Manual/app events
  - Fall 2026 events
  - School-linked events
  - Unlinked events
  - Active schools
  - Merged/hidden schools
- **Reload buttons**
  - Reload Events
  - Reload Schools

## Design decision

This does not introduce complicated backup restore behavior yet. The goal is a simple, safe Admin page for manual backup/export and quick visibility checks, especially because the free Supabase plan does not include full automatic backups.

## Notes

- Event removal already uses soft-delete (`active = false`).
- The Admin export includes removed events so accidental deletion can be investigated.
- Future handoffs should preserve the full project ZIP structure, with SQL/support files inside the deployable app package.
