# iSmile Scheduler — Fall 2026 ICS Reconciliation Update

This package keeps the normal full-project ZIP format. It is not a standalone data bundle.

## What this fixes

The Google Calendar ICS import successfully inserted the events, but imported rows were still using raw/import-oriented values like `picture day`, `review`, `graduation/pano`, or rough school text. That caused two visible problems:

1. Imported school photo events appeared gray instead of using the normal app colors.
2. Carrie View still listed schools as needing Fall 2026 scheduling because it only clears a school when it sees a canonical `Fall Picture Day` event linked to the school.

## Reference logic used

This update intentionally follows the same business logic used by the Fall 2024 through Spring 2026 scheduling history:

- Sep–Nov school photo events normalize to `Fall Picture Day`.
- Spring school photo events normalize to `Spring Picture Day`.
- Makeups/retakes normalize to `Makeup Day`.
- Rain dates normalize to `Rain Date`.
- Sports normalize to `Sports`.
- Seniors normalize to `Seniors`.
- Non-shoot/internal items normalize to `Call or Meeting` or `Special Event` instead of staying gray.
- Canonical school names are normalized to the School List names where there is a confident match.

## SQL to run

Run this in Supabase SQL Editor:

```text
supabase/ics_import_fall2026_reconciliation.sql
```

It is safe to rerun. It only updates rows where `source = 'google_calendar_import'` and matches by `client_event_id`.

## Review file

Before or after running, you can review:

```text
supabase/ics_import_reconciliation_review.csv
```

That CSV shows each imported event, the old raw import type, the new app type, the canonical school match, and whether the school needs manual review.

## App changes

`components/SchedulerApp.jsx` now includes defensive fallback normalization for imported Google Calendar rows. This means the UI will still display imported rows with the correct app type/color even if older raw import values remain in the database.

## Expected result

After running the SQL and redeploying this ZIP:

- Imported Fall 2026 school photo events should show as `Fall Picture Day`.
- Those events should use the normal Fall Picture Day green color.
- Carrie View should remove schools that now have a canonical Fall 2026 Fall Picture Day event.
- Some schools may still remain in Carrie View if no imported Fall 2026 event confidently matched that school. That is expected and safer than over-matching.
