# iSmile Scheduler — Latest ICS Import Handoff

This ZIP is intentionally packaged in the same format as the normal iSmile Scheduler handoff ZIPs: it contains the full deployable app/source-code project, with the newest ICS import/update files included inside the project.

## What changed from the prior ICS export

Compared against the prior ICS import package, the latest School Events ICS export produced:

- 15 added future events
- 23 modified future events
- 0 removed future events
- 0 new internal duplicate events detected inside the future import set

The old instruction to ignore events after May 31, 2026 is obsolete and should not be used.

## Which SQL to run

### If the previous ICS SQL was already run

Use:

`supabase/ics_latest_import/ismile_calendar_import_DELTA_from_previous_ics.sql`

This is the safer patch file. It only contains the changes needed from the latest ICS compared with the first ICS package.

### If no ICS import has been run yet

Use:

`supabase/ics_latest_import/ismile_calendar_import_FULL_latest_after_2025_05_31.sql`

This is the full latest import for events after May 31, 2025.

## Review files included

All review/diff files are in:

`import_reports/ics_latest/`

Important files:

- `ismile_ics_latest_comparison_review.xlsx` — main human review workbook
- `ics_latest_comparison_summary.json` — machine-readable summary
- `ics_diff_future_added.csv` — added future events
- `ics_diff_future_modified.csv` — modified future events
- `ics_diff_future_removed.csv` — removed future events; should be empty/none in this run
- `latest_needs_review_after_2025_05_31.csv` — weaker/ambiguous school matching review
- `latest_calendar_import_candidates_after_2025_05_31.csv` — full latest future candidate set
- `latest_historical_picture_day_info_fall2024_spring2025.csv` — historical Picture Day Info source data

## Packaging preference for future handoffs

For Matt/iSmile Scheduler, future ZIP deliverables should follow this same style: full deployable project ZIP first, with SQL/import/report files included inside the project tree. Avoid sending standalone data-only ZIPs unless specifically requested.
