
-- create
CREATE TABLE Cohort (
  rollNumber INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  branch TEXT NOT NULL
);

-- insert
-- INSERT INTO Cohort VALUES (0001, 'Clark', 'Cloud',70);
-- INSERT INTO Cohort VALUES (0002, 'Dave', 'Dev',30);
-- INSERT INTO Cohort VALUES (0003, 'Ava', 'front-end',90);

-- fetch 
SELECT * FROM Cohort;
-- SELECT * FROM EMPLOYEE
SHOW tables;

-- add new columns
ALTER TABLE Cohort
ADD COLUMN city TEXT,
ADD COLUMN percentage INTEGER NOT NULL;

-- drop the existing column
-- DROP COLUMN branch;


INSERT INTO Cohort VALUES (0001, 'Clark', 'Cloud','Bangalore',70);
INSERT INTO Cohort VALUES (0002, 'Dave', 'Dev','Mumbai',30);
INSERT INTO Cohort VALUES (0003, 'Ava', 'front-end','Hyderabad',90);

SELECT * FROM Cohort;

SELECT * FROM Cohort WHERE percentage>80;

SELECT AVG(percentage) AS average_percentage
FROM Cohort;

SELECT *
FROM Cohort
ORDER BY percentage DESC
LIMIT 2;

SELECT branch, AVG(percentage) AS avg_percentage
FROM Cohort
GROUP BY branch;

-- which branch has more than 50%
SELECT branch, AVG(percentage) AS avg_percentage
FROM Cohort
GROUP BY branch
HAVING AVG(percentage) > 50;

-- this query gives an error and to show we can't use where but have to use having
SELECT branch, AVG(percentage)
FROM Cohort
WHERE AVG(percentage) > 50
GROUP BY branch;



-- SELECT * FROM Cohort;

