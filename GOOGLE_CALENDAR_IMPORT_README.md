# Google Calendar Picture Day Info Import

Imported descriptions from the provided School Events ICS file into matched Scheduler events as **Picture Day Info**.

Rules used:

- Ignored events after **2026-05-31**.
- Only applied descriptions where the ICS event matched an existing Scheduler event by date and title/school similarity.
- Left ambiguous and unmatched ICS events untouched.
- Replaced existing event-level Picture Day Info for matched events with cleaned Google Calendar descriptions.
- Preserved School List **Notes on School** and School Log notes.

Summary:

- ICS events with descriptions through cutoff: 3523
- Scheduler events updated: 342
- Ambiguous skipped: 8
- Unmatched skipped: 3167

See `GOOGLE_CALENDAR_IMPORT_REPORT.json` for match details.
