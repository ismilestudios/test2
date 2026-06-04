# Admin Users: Supabase Auth Sync

This update makes Admin → Users & Permissions show everyone who has created a Supabase Auth account, not just manually added app users.

## Run first

Run this SQL in Supabase SQL Editor:

`supabase/admin_auth_users_sync_migration.sql`

## What it does

- Creates/updates `public.app_users`.
- Backfills existing Supabase Auth users into `app_users`.
- Preserves existing roles/status where possible.
- Keeps `matt@ismilestudios.com` as Admin.
- Adds a trigger so future Supabase signups automatically appear on the Admin page.

## After running

Deploy the ZIP, open Admin, and click **Reload Users**.
