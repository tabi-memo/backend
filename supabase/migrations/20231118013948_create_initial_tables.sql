create table
  users (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    email text unique not null,
    name text not null,
    profile_picture_url varchar(255)
  );

create table
  trips (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID REFERENCES users(id),
    title text not null,
    date_from DATE not null,
    date_to DATE,
    cost numeric,
    cost_unit text,
    description text,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    image_storage_object_id uuid -- FK to storage_objects, omitted as per your request
  );

create table
  activity (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    trip_id UUID REFERENCES trips (id),
    title text not null,
    time_from TIMESTAMPTZ not null,
    time_to TIMESTAMPTZ,
    address varchar(255),
    url varchar(255),
    memo text,
    cost numeric,
    cost_unit text,
    image_storage_object_id uuid -- FK to storage_objects, omitted as per your request
  );

create table
  tags (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name varchar(255) not null unique,
    user_id UUID REFERENCES users(id)
  );

create table
  trip_tags (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    trip_id UUID REFERENCES trips (id),
    tag_id UUID REFERENCES tags (id)
  );

create table
  invitations (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    trip_id UUID REFERENCES trips (id),
    invited_by_user_id UUID REFERENCES users(id),
    invitee_user_id UUID REFERENCES users(id),
    email varchar(255) not null,
    invitation_url varchar(255) not null,
    permission_level int not null
  );
