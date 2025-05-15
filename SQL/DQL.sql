--  It uses:

-- Sorting (via ORDER BY)

-- Pagination/limiting (via LIMIT)

-- Ranking logic (by ordering values and choosing top)

SELECT * FROM Cohort;

SELECT * FROM Cohort WHERE percentage>80;

-- It’s a Data Retrieval or Data Query Language (DQL) statement.
-- Fetch the single row with the highest percentage in the Cohort table.
SELECT *
FROM Cohort
ORDER BY percentage DESC
LIMIT 2;
