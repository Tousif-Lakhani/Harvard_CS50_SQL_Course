-- Hits are great, but so are RBIs! In 12.sql, write a SQL query to find the players among the 10 least expensive players per hit and among the 10 least expensive players per RBI in 2001.

-- Your query should return a table with two columns, one for the players’ first names and one of their last names.
-- You can calculate a player’s salary per RBI by dividing their 2001 salary by their number of RBIs in 2001.
-- You may assume, for simplicity, that a player will only have one salary and one performance in 2001.
-- Order your results by player ID, least to greatest (or alphabetically by last name, as both are the same in this case!).
-- Keep in mind the lessons you’ve learned in 10.sql and 11.sql!

-- SELECT * FROM "salaries" LIMIT 10;
ALTER TABLE "salaries" ADD "SPR";

WITH "performance_sums" AS (
    SELECT "player_id", "H" ,SUM("RBI") AS "total_rbi"
    FROM "performances"
    WHERE "H" > 0
    GROUP BY "player_id"
)
UPDATE "salaries"
SET "SPR" = "salary" / "performance_sums"."total_rbi"
FROM "performance_sums"
WHERE "salaries"."player_id" = "performance_sums"."player_id"
AND "salaries"."year" = 2001;

SELECT "players"."first_name","players"."last_name","salaries"."SPR","salaries"."dollars per hit"
FROM "performances"
JOIN "salaries" ON "performances"."player_id" = "salaries"."player_id"
JOIN "players" ON "performances"."player_id" = "players"."id"
WHERE "salaries"."year" = 2001 AND "SPR" IS NOT NULL
GROUP BY "players"."first_name", "players"."last_name"
ORDER BY "dollars per hit", "players"."id"
LIMIT 10;
