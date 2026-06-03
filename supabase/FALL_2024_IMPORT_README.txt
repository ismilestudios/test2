iSmile Scheduler Fall 2024 Historical Import

Source files:
- School Schedule MASTER COPY - August 2024.pdf
- School Schedule MASTER COPY - September 2024.pdf
- School Schedule MASTER COPY - October 2024.pdf
- School Schedule MASTER COPY - November 2024.pdf
- School Schedule MASTER COPY - December 2024.pdf

What this imports:
- 239 Fall 2024 historical events
- source = fall_2024_pdf_import
- season = Fall 2024
- picture_day_info = NULL
- rain_info = NULL
- history = NULL

Important:
- Notes were intentionally NOT imported.
- Every imported row has canonical_school populated with an existing School List page name.
- The import is duplicate-safe using source + source_event_id.
- Review before/after running:
  - supabase/fall_2024_events_review.csv
  - supabase/fall_2024_excluded_review.csv

Run in Supabase SQL Editor:
supabase/fall_2024_events_import.sql
