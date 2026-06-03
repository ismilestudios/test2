# iSmile Scheduler

Internal September + October + November 2025 prototype for iSmile Studios.

## What this is

A Vercel-ready Next.js prototype for school scheduling, historical staffing reference, notes, and photographer/assistant visibility.

This is intentionally **not** auto-scheduling software. Humans make scheduling decisions. The app supports the team with clear history, search, and planning views.

## Included

- Next.js 14 app structure
- TailwindCSS
- Framer Motion
- Lucide icons
- Planning Board
- Month View
- Week View
- Day View
- Search across schools, photographers, assistants, event types, and notes
- Event detail drawer
- Seeded September 2025 prototype data
- Staff lists
- IRM display as informational only
- Canonical school matching examples

## Important data note

The current seed data lives in:

`lib/scheduleData.js`

Replace or extend the `EVENTS` array with the full September 2025 imported rows from the original PDFs / previous prototype source when available.

## Run locally

1. Install Node.js.
2. Open Terminal in this folder.
3. Run:

```bash
npm install
npm run dev
```

4. Open the local URL shown in Terminal.

## Deploy to Vercel using GitHub

1. Create a new GitHub repository.
2. Upload all files from this folder to that repo.
3. Go to Vercel.
4. Click **Add New Project**.
5. Import the GitHub repo.
6. Leave the default Next.js settings.
7. Click **Deploy**.

## Deployment goal

Get a sharable internal prototype URL for Matt, Stephanie, and Carrie to review.

## Future backend

Supabase can be added later for persistent data, auth, and live edits. Do not add backend complexity yet.


## Vercel upload note

When uploading to GitHub, open this folder and upload the contents directly to the repository root. The repository root should show `app`, `components`, `lib`, and `package.json` immediately, not another nested `ismile-scheduler` folder.

## Build note

Dependencies are pinned to Next.js 14, React 18, and TailwindCSS 3 to avoid the Tailwind v4 PostCSS plugin mismatch on Vercel.


## Data update in this package

This package imports the September 2025 historical schedule dataset from `September Data.txt` into `lib/scheduleData.js`. The app now defaults to Month View and renders every September 2025 event included in the uploaded import file.


## Data wiring note

This version is wired to the real imported September 2025 schedule data in `lib/scheduleData.js`. The UI imports `EVENTS` from that file and renders those records across Planning Board, Month View, Week View, Day View, Search, and the event detail drawer.

If the live Vercel site still shows Craig Elementary / Skano / Bell Top placeholder dates, GitHub is still using an older file. Replace the full repo contents with the contents of this folder, commit changes, and let Vercel redeploy.


## Latest data import

This package includes the real September, October, and November 2025 schedule imports. The app reads from `lib/scheduleData.js`; Vercel redeploys after pushing these files to GitHub.


## April 2026 careful import

This build adds April 2026 from the uploaded April schedule PDF, including school/account master-list additions where missing. School-facing events after February are treated as Spring Picture Day unless they are clearly seniors, sports, rain dates, meetings, headshots, photo booth, or special events.


## March 2026 careful import
Added March 2026 schedule data from School Schedule MASTER COPY - March 2026.pdf, including March school events, Spring Picture Day classification after February, non-school event preservation, April 1-3 spillover items, and missing school/account additions to the master list.

## Rollout logic update

This build fixes Week View rollout counting so rollouts are based only on assigned photographers, not title text such as "1 Team" or "2 Teams." Assistants are intentionally ignored. Sports, Seniors, Fall Picture Day, Spring Picture Day, Makeup Day, Rain Date, Family Photos, and field-crew Special Events can contribute rollouts when photographers are assigned. This fixes cases like Duanesburg Sports and BKW Sports not showing rollout pills/counters because the title did not use consistent team wording.

Validated with:

```bash
npm run build
```


## Latest Update — School Log Notes

- Correlated notes from `School Log.pdf` into the School List data.
- Notes are appended to each matched school in this format: `From School Log: ...`.
- Included operational/logistical notes for schools such as Albany ASH, Shen Arongen, Cairo-Durham, Central Park, Childhood Friends Rotterdam, Duanesburg Elementary, Eagle Point, Gardner Dickinson, Heatly, Hoosic Valley, Keane, KinderCare Niskayuna, Lincoln, Little Scholars, Malta Ave, Okte, Orenda, Schenectady JCC, Shaker Seniors, Shen United Methodist PK, TSL Troy, and Pleasant Valley.
- Preserved prior School List notes; School Log notes were appended, not replaced.

## Update: School List Edit + Merge Controls

Added School List page controls:

- **Edit** button on each school detail page.
  - Allows editing school name, IRM, and notes.
  - Saves to browser localStorage as `ismile.schoolOverrides` while the app remains frontend-only.
  - Existing seeded notes, including `From School Log:` notes, can be revised in-place.

- **Merge** button on each school detail page.
  - Lets the user choose another school/account to merge into.
  - Source school is hidden from the main School List.
  - Source school's imported schedule history appears under the target school.
  - Source notes are appended under the target page with a `Merged from ...` label.
  - Saves to browser localStorage as `ismile.schoolOverrides`.

Build check completed successfully with `npm run build` before packaging.


## Latest update: School reference images

School List pages now include a Reference Images section underneath Notes. Use the Edit button on a school page to add JPG/PNG images, edit captions, or remove images. Images are stored in the same browser-local school override data as editable notes for now; Supabase/cloud storage can make these shared later.

## v0.6 Operational Intelligence Pass

Added in this build:

- Assignment workflow improvements: photographer assignment picker now shows weekly rollout workload for the selected date, same-day conflicts, selected rollout count, and recent-school badges.
- Photographer history intelligence: School List detail pages now summarize photographer history by school, including assignment count and most recent assignment.
- Global search: the top search now surfaces cross-app results for schools, contacts, notes, photographers, assistants, and imported events. School results jump to School List; event results open the event drawer.

Build check: `npm run build` passed locally after installing dependencies with `npm install --ignore-scripts`.

---

## Latest ICS Import Update Package

This ZIP includes the latest ICS comparison/import update in the same full-project format as the normal iSmile Scheduler handoff ZIPs.

- Delta SQL: `supabase/ics_latest_import/ismile_calendar_import_DELTA_from_previous_ics.sql`
- Full latest SQL: `supabase/ics_latest_import/ismile_calendar_import_FULL_latest_after_2025_05_31.sql`
- Review workbook and CSVs: `import_reports/ics_latest/`
- Detailed handoff: `ICS_LATEST_IMPORT_HANDOFF.md`

Use the Delta SQL only if the previous ICS import was already applied. Use the Full latest SQL if no ICS import has been applied yet.


## SQL correction note

If the earlier FULL SQL throws `ERROR: 42P01: relation "the" does not exist`, use:

`/sql/ismile_calendar_import_FULL_latest_after_2025_05_31_DOLLAR_QUOTED_SAFE.sql`

This version uses PostgreSQL dollar-quoted text literals so apostrophes/quotes inside Picture Day Info cannot break the SQL parser.
