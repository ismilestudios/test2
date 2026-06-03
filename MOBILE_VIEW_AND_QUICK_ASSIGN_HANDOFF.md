# iSmile Scheduler — Mobile View + Quick Assignment Update

## What changed

### Mobile View
Added a new top-level tab: **Mobile View**.

This page is intentionally phone-focused and does not attempt to make the entire app mobile-first. It gives photographers the field-facing information they actually need:

- **What We're Photographing Today** at the top
- **Photographer Schedule** below
- Photographer dropdown with core field names:
  - Stephanie
  - Matt
  - Molly
  - Beth
  - Andrew
  - Erin
- Month / Week / Day toggle
- Prev / Next controls
- Event cards showing date, title, arrival/start time, assistant, and event type

Photographer matching uses the existing canonical alias logic, so `Steph` rolls up under `Stephanie`.

### Overview quick assignment
On the Overview page only:

- Clicking an item in **Need Photographer(s) Assigned** opens a quick assignment modal instead of the full drawer.
- Clicking an item in **Need Assistant(s) Assigned** opens the same quick assignment modal focused on assistants.
- You can quickly select photographer(s), assistant(s), or mark `No Assistant`.
- Saving uses the existing event save pipeline so Supabase remains the source of truth.

No SQL migration is required for this update.

## Design intent
This update keeps the full desktop scheduler intact while adding a simple phone-optimized operational page and reducing clicks for common assignment tasks.
