# Photographer Alias Rollup Fix

Implemented a lightweight canonical photographer-name layer so legacy/imported events that say `Steph` count and display as `Stephanie`.

## What changed
- Weekly Rollout hover/load cards aggregate `Steph` + `Stephanie` into one row.
- Week View photographer load aggregates the same way.
- Rollout counts use unique canonical photographer names, so an event cannot double-count `Steph` and `Stephanie` as two people.
- Photographer availability checks canonicalize names before deciding who is booked/open.
- Recent/history photographer lists display canonical names.
- Loaded photographer team-member lists are deduped through the same canonical-name helper.

## Current alias rule
- `Steph` → `Stephanie`

No database rewrite is required. Existing old event text can stay as-is; the app normalizes it during display/calculation.
