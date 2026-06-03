Spring 2025 import package

Imported rows: 156
Date range: 2025-02-04 through 2025-06-28
Source PDFs: February, March, April, May, June 2025 master schedules
Notes imported: NO - picture_day_info, rain_info, and history are NULL in this import
Duplicate protection: source='spring_2025_pdf_import' plus source_event_id

Files:
- supabase/spring_2025_events_import.sql
- supabase/spring_2025_events_review.csv
- supabase/spring_2025_excluded_review.csv

Run spring_2025_events_import.sql in Supabase SQL Editor after your previous Events migrations.


SQL FIX NOTE:
The active import file now uses jsonb_to_recordset instead of one huge VALUES list.
This avoids quote/parenthesis parsing issues in Supabase SQL Editor.
Run: supabase/spring_2025_events_import.sql
