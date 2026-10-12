# Babeekaira — Cashfree + Telegram + Backend Admin Dashboard

The public website reads the price from Supabase through `/api/public-settings`. Cashfree order creation reads that same price server-side. After a successful server-side payment verification, `/api/telegram-redirect` reads the private Telegram invite from Supabase and redirects the user.

## Quick setup
1. Run `SUPABASE-SETUP.sql` in Supabase SQL Editor.
2. Add `SUPABASE_URL`, `SUPABASE_SERVICE_ROLE_KEY`, and `ADMIN_PASSWORD` to Vercel Environment Variables, keeping existing Cashfree variables.
3. Deploy the files to the same Vercel project.
4. Open `/admin.html`, enter the admin password, load settings, and save updates.

See `ADMIN-PANEL-SETUP.txt` for exact step-by-step deployment instructions.

Security: the Supabase service-role key, Cashfree secret, admin password, and private Telegram invite must never be placed in public HTML or committed to GitHub. The `settings` table has no public RLS policy; only the server-side API accesses it.
