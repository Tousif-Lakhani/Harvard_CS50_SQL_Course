-- Which teams might be the biggest competition for the A’s this year?
-- In 6.sql, write a SQL query to return the top 5 teams, sorted by the total number of hits by players in 2001.

-- Call the column representing total hits by players in 2001 “total hits”.
-- Sort by total hits, highest to lowest.
-- Your query should return two columns, one for the teams’ names and one for their total hits in 2001.



WITH "performance_sums" AS (
    SELECT "team_id" ,SUM("H") AS "total_hits"
    FROM "performances"
    WHERE "year" = 2001
    GROUP BY "team_id"
    ORDER BY "total_hits" DESC
    LIMIT 5
)

SELECT "name", "total_hits"
FROM "performances" AS "P"
JOIN "teams" AS "T" ON "P"."team_id" = "T"."id"
JOIN "performance_sums" AS "PS" ON "P"."team_id" = "PS"."team_id"
GROUP BY "T"."name"
ORDER BY "PS"."total_hits" DESC
LIMIT 5;
