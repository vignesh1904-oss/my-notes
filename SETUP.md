# My Notes – setup (about 15 minutes, free, no card needed)

Your notes are saved on each device and sync through YOUR OWN free Supabase project.
Nobody else can read them (row-level security), and there is no subscription.

## Step 1 – Create the free cloud database
1. Go to https://supabase.com → Sign up → New project (any name, pick the nearest region, save the database password).
2. Open **SQL Editor → New query**, paste everything from `setup.sql`, press **Run**.
3. Open **Authentication → Sign In / Providers → Email** and switch **Confirm email OFF** (otherwise you must click an email link once).
4. Open **Project Settings → API** and copy two things: the **Project URL** and the **anon / publishable key**.
   (The anon key is meant to be public; the SQL above is what keeps your notes private.)

## Step 2 – Put the app online (on your MacBook)
Easiest: go to https://app.netlify.com/drop, sign up free, and drag this whole folder onto the page. You get a link like `https://something.netlify.app`.
(Alternative: a free GitHub repository with GitHub Pages turned on.)

## Step 3 – Install on every device
- **iPhone / iPad:** open the link in **Safari → Share → Add to Home Screen**.
- **MacBook:** open the link in **Safari → File → Add to Dock** (or in Chrome → Install).

## Step 4 – Turn on sync (once per device)
Tap the **☁︎** button at the top → paste the Project URL and key → type your email + a password →
**Create account** on the first device, **Sign in** on the others (same email and password everywhere).

## Good to know
- Works offline; changes upload when you are back online (it also syncs every 30 seconds).
- If two devices edit the same page at the same time, the most recent edit wins.
- Use **Backup** now and then for a safety copy file.
- Pictures are stored inside the notes; the free tier (500 MB) holds thousands of photos.
