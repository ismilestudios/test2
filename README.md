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
