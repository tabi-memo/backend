-- Adding user_id index to the 'trips' table
CREATE INDEX idx_trip_user_id ON trips (user_id);

-- Adding trip_id index to the 'activity' table
CREATE INDEX idx_activity_trip_id ON activity (trip_id);
