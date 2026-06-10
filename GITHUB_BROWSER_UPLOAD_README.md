# iSmile Scheduler v0.91 — GitHub Browser Upload Edition

This package is trimmed so it can be uploaded through GitHub's website uploader without hitting the 100-file warning.

## Upload instructions

1. Unzip this file on your computer.
2. Open the unzipped folder.
3. Drag the contents into GitHub's upload page.
4. Make sure `package.json`, `app/`, `components/`, and `lib/` are at the repo root.
5. Commit the upload.
6. Redeploy/import the GitHub repo in Vercel.

## Important

This ZIP keeps the source code and needed config files. It removes bulky reports/export review files that are not needed for Vercel deployment.

The `/supabase` folder is kept for reference/migrations, but it is not required for the app to launch if your database is already migrated.
