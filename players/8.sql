-- In 8.sql, write a SQL query to find the average height and weight, rounded to two decimal places, of baseball players who debuted on or after January 1st, 2000.
-- Return the columns with the name “Average Height” and “Average Weight”, respectively.

-- SELECT ROUND(AVG("height"),2) FROM "players";
-- SELECT ROUND(AVG("weight"),2) FROM "players";

SELECT
ROUND(AVG("height"), 2) AS 'Average height',
ROUND(AVG("weight"), 2) AS 'Average weight'
FROM "players"
WHERE "debut" BETWEEN '2000-01-01' AND '2024-01-01';

-- SELECT ROUND(AVG("height"),2) FROM "players" WHERE "debut"
