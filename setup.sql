-- Already applied to the project; kept for reference.
create table public.nodes (id text not null, user_id uuid not null default auth.uid() references auth.users(id) on delete cascade, data jsonb not null default '{}', updated bigint not null, deleted boolean not null default false, synced_at timestamptz not null default now(), primary key (user_id, id));
create index nodes_sync on public.nodes (user_id, synced_at);
alter table public.nodes enable row level security;
create policy "own notes only" on public.nodes for all to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
grant select, insert, update, delete on public.nodes to authenticated;
create function public.touch_synced() returns trigger language plpgsql as $$ begin new.synced_at = now(); return new; end $$;
create trigger nodes_touch before insert or update on public.nodes for each row execute function public.touch_synced();
