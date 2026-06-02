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
