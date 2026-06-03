# iSmile Scheduler — Fall 2026 ICS Reconciliation Update

This is a full-project ZIP in the usual iSmile Scheduler format.

## What this does

This is a one-time cleanup for the Google Calendar ICS events already imported into Supabase. It aligns the imported rows with the same event-type and Carrie View logic used by the Fall 2024 through Spring 2026 schedule history.

## SQL to run

Run this file in Supabase SQL Editor:

```text
supabase/ics_import_fall2026_reconciliation.sql
```

It is safe to rerun. It updates only `source = 'google_calendar_import'` rows by `client_event_id`.

## Then deploy

Deploy this full-project ZIP after running the SQL. The app also contains defensive fallback normalization in `components/SchedulerApp.jsx`, so imported rows display with normal event colors even if any raw import values remain.

## Counts

- Imported rows reviewed: 745
- Rows with canonical school match: 367
- Fall 2026 imported rows: 98
- Fall 2026 rows normalized as Fall Picture Day: 43
- Rows needing manual school review: 108

## Review file

See:

```text
supabase/ics_import_reconciliation_review.csv
```

That file lists every imported row, old type, new type, canonical school, and whether the school match needs review.
