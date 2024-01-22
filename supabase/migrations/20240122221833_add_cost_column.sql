-- Add cost column to trips table
ALTER TABLE trips ADD COLUMN cost_unit text;

-- Add cost column to activity table
ALTER TABLE activity ADD COLUMN cost_unit text;
