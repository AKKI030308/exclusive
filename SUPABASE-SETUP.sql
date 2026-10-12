-- Run this once in Supabase SQL Editor.
-- This table is private: do NOT create a public SELECT/UPDATE policy.
CREATE TABLE IF NOT EXISTS public.settings (
  id integer PRIMARY KEY CHECK (id = 1),
  price text NOT NULL CHECK (price ~ '^[0-9]+([.][0-9]{1,2})?$'),
  telegram_link text NOT NULL
);

ALTER TABLE public.settings ENABLE ROW LEVEL SECURITY;

INSERT INTO public.settings (id, price, telegram_link)
VALUES (1, '599', 'https://t.me/replace_with_your_private_invite')
ON CONFLICT (id) DO NOTHING;

-- No anon/public policies are needed. The Vercel backend uses the
-- Supabase service-role key, which must NEVER be exposed in frontend HTML.
