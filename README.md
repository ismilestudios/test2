# iSmile Scheduler

Internal September 2025 prototype for iSmile Studios.

## What this is

A Vercel-ready Next.js prototype for school scheduling, historical staffing reference, notes, and photographer/assistant visibility.

This is intentionally **not** auto-scheduling software. Humans make scheduling decisions. The app supports the team with clear history, search, and planning views.

## Included

- Next.js app structure
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
