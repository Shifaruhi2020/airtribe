-- create
CREATE TABLE Cohort (
  rollNumber INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  branch TEXT NOT NULL
);

ALTER TABLE Cohort
ADD COLUMN city TEXT,
ADD COLUMN percentage INTEGER NOT NULL;

-- drop the existing column
DROP COLUMN branch;
