create table
  users (
    id BIGSERIAL primary key not null,
    uuid uuid not null unique default uuid_generate_v4(),
    email text unique not null,
    name text not null,
    profile_picture_url varchar(255)
  );

create table
  trips (
    id BIGSERIAL primary key not null,
    uuid uuid not null unique default uuid_generate_v4(),
    user_id bigint references users(id),
    title text not null,
    date_from DATE,
    date_to DATE,
    cost numeric,
    description text,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    image_storage_object_id uuid -- FK to storage_objects, omitted as per your request
  );

create table
  activity (
    id BIGSERIAL primary key not null,
    uuid uuid not null unique default uuid_generate_v4(),
    trip_id bigint references trips (id),
    title text not null,
    time_from TIMESTAMPTZ,
    time_to TIMESTAMPTZ,
    address varchar(255),
    url varchar(255),
    memo text,
    cost numeric,
    image_storage_object_id uuid -- FK to storage_objects, omitted as per your request
  );

create table
  tags (
    id BIGSERIAL primary key not null,
    uuid uuid not null unique default uuid_generate_v4(),
    name varchar(255) not null unique
  );

create table
  trip_tags (
    id BIGSERIAL primary key not null,
    uuid uuid not null unique default uuid_generate_v4(),
    trip_id bigint references trips (id),
    tag_id bigint references tags (id)
  );

create table
  invitations (
    id BIGSERIAL primary key not null,
    uuid uuid not null unique default uuid_generate_v4(),
    trip_id bigint references trips (id),
    invited_by_user_id bigint references users(id),
    invitee_user_id bigint references users(id),
    email varchar(255) not null,
    invitation_url varchar(255) not null,
    permission_level int not null
  );
