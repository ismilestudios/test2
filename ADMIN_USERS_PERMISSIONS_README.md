# Admin Users & Permissions

This build adds a simple **Admin → Users & Permissions** section.

## Run once before using it

Run this SQL in Supabase SQL Editor:

`supabase/admin_users_permissions_migration.sql`

## What it adds

- Users list with name/email
- Role selector: Admin, Scheduler, Viewer / Photographer
- Active/inactive control
- Add user form
- Reload Users button

Detailed role enforcement can be tightened later. For now this is a simple access-management foundation and visibility list.
