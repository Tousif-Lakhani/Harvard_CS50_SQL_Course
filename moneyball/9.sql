-- What salaries are other teams paying?
-- In 9.sql, write a SQL query to find the 5 lowest paying teams (by average salary) in 2001.

-- Round the average salary column to two decimal places and call it “average salary”.
-- Sort the teams by average salary, least to greatest.
-- Your query should return a table with two columns, one for the teams’ names and one for their average salary.




WITH "average_sals" AS (
    SELECT "team_id" ,ROUND(AVG("salary"),2) AS "average_salary"
    FROM "salaries"
    WHERE "year" = 2001
    GROUP BY "team_id"
    ORDER BY "average_salary" ASC
    LIMIT 5
)

SELECT "name", "average_salary"
FROM "salaries" AS "S"
JOIN "teams" AS "T" ON "S"."team_id" = "T"."id"
JOIN "average_sals" AS "AS" ON "S"."team_id" = "AS"."team_id"
GROUP BY "T"."name"
ORDER BY "AS"."average_salary" ASC
LIMIT 5;
