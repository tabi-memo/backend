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
    date_from TIMESTAMPTZ not null,
    date_to TIMESTAMPTZ,
    cost numeric,
    cost_unit text,
    description text,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    image_url varchar(255)
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
    image_url varchar(255),
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
  );

create table
  activity_uploaded_files (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    activity_id UUID REFERENCES activity (id),
    file_name varchar(255) not null,
    file_url varchar(255) not null,
    content_type varchar(255) not null,
    file_data jsonb,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
  );

create table
  tags (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name VARCHAR(255) NOT NULL,
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT unique_name_by_user UNIQUE(name, user_id)
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
