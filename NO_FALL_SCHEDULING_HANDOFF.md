# No Fall Scheduling Implementation Handoff

## Purpose
Adds a reversible `No Fall Scheduling` workflow for Carrie View's Fall 2026 To Be Scheduled list.

## Required SQL first
Run:

`/supabase/no_fall_scheduling_fall_2026_migration.sql`

This adds `schools.no_fall_scheduling_fall_2026 boolean not null default false`.

## App behavior
- Carrie View keeps the IRM pill at the top right of each card.
- Each school card now has a bottom-right `No Fall Scheduling` button.
- Clicking it immediately hides that school from the Fall 2026 To Be Scheduled panel.
- A toast appears with `Undo`, allowing quick recovery from accidental clicks.
- School List / Edit School also has a reversible `No Fall Scheduling` checkbox.
- School History Panel shows a `No Fall Scheduling` pill when enabled.

## Logic
Carrie View's Fall 2026 To Be Scheduled list excludes schools where:

`no_fall_scheduling_fall_2026 = true`

This is intentionally scoped to Fall 2026, not a permanent Spring Only/Fall Never setting.
