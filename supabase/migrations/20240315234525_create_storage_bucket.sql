-- Create Storage bucket & policy & Function
insert into storage.buckets
  (id, name, public)
values
  ('tabi-memo-uploads', 'tabi-memo-uploads', true);

create policy "Public Access Bucket Images Get"
on storage.objects for select
using ( bucket_id = 'tabi-memo-uploads' );

create policy "Public Access Bucket Images Post"
on storage.objects for insert
with check ( bucket_id = 'tabi-memo-uploads' );
