-- Change time_from to NOT NULL on activity table
ALTER TABLE activity ALTER COLUMN time_from SET NOT NULL;

-- Change date_from to NOT NULL on trip table
ALTER TABLE trips ALTER COLUMN date_from SET NOT NULL;
