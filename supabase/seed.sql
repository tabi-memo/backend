CREATE FUNCTION auth.handle_new_user()
RETURNS trigger
LANGUAGE plpgsql
SECURITY definer
AS $$
BEGIN
    INSERT INTO public.users
    (id, email, name)
    VALUES
    (new.id, new.email, new.raw_user_meta_data ->> 'name');
    return new;
END;
$$;

CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  for each ROW EXECUTE PROCEDURE auth.handle_new_user();

-- Create Storage bucket & policy & Function
insert into storage.buckets
  (id, name, public)
values
  ('tabi-memo-uploads', 'tabi-memo-uploads', true);

-- Use SQL to create a policy.
-- create policy "Allow authenticated uploads"
-- on storage.objects for insert to authenticated with check (
--   bucket_id = 'tabi-memo-uploads'
-- );

create policy "Public Access Bucket Images Get"
on storage.objects for select
using ( bucket_id = 'tabi-memo-uploads' );

create policy "Public Access Bucket Images Post"
on storage.objects for insert
with check ( bucket_id = 'tabi-memo-uploads' );

-- Create a function to handle uploads.
-- create function storage.handle_new_trip_image()
-- returns trigger
-- language plpgsql
-- security definer
-- as $$
-- declare
--   bucket_id text;
--   object_id text;
--   object_name text;
--   object_url text;
-- begin
--   bucket_id = 'tabi-memo-uploads';
--   object_id = gen_random_uuid();
--   object_name = concat(object_id, '.', storage.objects.name);
--   object_url = concat('https://', bucket_id, '.storage.supabase.io/', object_name);
--   insert into storage.objects
--     (id, bucket_id, name, metadata)
--   values
--     (object_id, bucket_id, object_name, json_build_object('url', object_url));
--   new.object_id = object_id;
--   return new;
-- end;
