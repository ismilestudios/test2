# iSmile Scheduler — Supabase Setup

This zip adds the first safe Supabase foundation:

- Supabase packages in `package.json`
- browser/server Supabase clients
- middleware for auth session refresh
- `/login` magic-link login page
- `/auth/callback` route
- `.env.example`
- starter database schema at `supabase/schema.sql`

The current scheduler data is **not migrated yet**. The app should still function with the existing local/code data while Supabase is being configured.

## 1. Create Supabase project

Create a new Supabase project. After it is created, copy:

- Project URL
- anon public key

## 2. Add Vercel environment variables

In Vercel → Project → Settings → Environment Variables, add:

```bash
NEXT_PUBLIC_SUPABASE_URL=https://YOUR-PROJECT.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=YOUR-ANON-KEY
```

Add them for Production, Preview, and Development.

## 3. Run database schema

In Supabase → SQL Editor, paste and run:

```bash
supabase/schema.sql
```

This creates the starter tables for:

- users/profiles
- schools
- staff members
- school contacts
- events
- event assignments
- school notes
- school images

It also turns on Row Level Security.

## 4. First login

Deploy to Vercel, then visit:

```bash
/login
```

Enter your email. Supabase will send a magic login link.

The first user starts as `viewer`. In Supabase SQL Editor, promote your account:

```sql
update public.profiles
set role = 'admin'
where email = 'YOUR_EMAIL_HERE';
```

## 5. Next migration step

The next code pass should move data in this order:

1. staff members
2. schools
3. events
4. event assignments
5. notes/history
6. images/storage

Do not migrate everything at once. Keep one fallback version before each step.


## Auth callback note

This build supports both Supabase email callback formats:

- `?code=...` via `exchangeCodeForSession`
- `?token_hash=...&type=email` via `verifyOtp`

If login redirects to the app but still shows "Login", check Vercel logs for `Supabase auth callback error`.


## Password login test flow

This build uses email/password login instead of magic links.

For the smoothest first test, in Supabase go to:

Authentication → Providers → Email

Recommended while testing:
- Keep Email provider enabled.
- Either create the first user manually in Authentication → Users, OR use "Create account" in the app.
- If email confirmation is enabled, confirm the email before logging in.
- If you want the quickest internal test, temporarily turn off "Confirm email" while creating your first test user, then turn it back on later if desired.


## Team Members moved to Supabase

This build reads active photographers and assistants from the existing `public.staff_members` table.

Run this extra migration in Supabase SQL Editor after the original schema:

`supabase/team_members_migration.sql`

Important behavior:
- Add = inserts a staff member, or reactivates an existing inactive one with the same name/role.
- Trash icon = deactivates the staff member by setting `active = false`.
- Historical schedules should later keep references to inactive people instead of losing them.
- If the table is empty, the app seeds the starter photographer/assistant lists into Supabase on first load.


## School List moved to Supabase

This build reads and writes School List records through the `public.schools` table.

Run this extra migration in Supabase SQL Editor after the original schema:

`supabase/schools_migration.sql`

Important behavior:
- If the schools table is empty, the app seeds the current built-in `SCHOOLS` list into Supabase.
- Edit School saves changes with `upsert` using `original_name` as the stable key.
- Merge School saves the source school's `merged_into` value instead of using browser-only localStorage.
- Current event/calendar data is still frontend/local data for now; only School List records moved in this step.


## Events moved to Supabase

This build saves new/custom events into the existing `public.events` table.

Run this extra migration in Supabase SQL Editor after the original schema:

`supabase/events_migration.sql`

Important behavior:
- Built-in imported/historical events remain in the app as the read-only baseline.
- New events from Overview, Calendar View, and Carrie View save to Supabase.
- Calendar, Overview, and Carrie View read those Supabase events together with the built-in historical events.
- Full historical event import can happen later after this create/read flow is stable.


## Historical events imported to Supabase

This build imports the built-in code-baseline `EVENTS` into Supabase automatically on first authenticated load.

Run this migration first:

`supabase/events_historical_import_migration.sql`

Important behavior:
- Imported events get `source = imported_code_baseline`.
- Imported events get `source_event_id = original code event id`.
- The app checks existing `source_event_id` values so the same historical events are not imported twice.
- Once Supabase has event rows, Calendar/Overview/Carrie/School History use Supabase events instead of the hardcoded fallback.
- The hardcoded `EVENTS` array remains only as a fallback if Supabase has no event rows or fails before import.
