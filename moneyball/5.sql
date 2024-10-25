-- It’s a bit of a slow day in the office. Though Satchel no longer plays, in 5.sql, write a SQL query to find all teams that Satchel Paige played for.

-- Your query should return a table with a single column, one for the name of the teams

#PLAYER ID = 14190
-- SELECT * FROM "players"
-- WHERE "first_name" is "Satchel" AND "last_name" IS "Paige";

#TEAM ID
-- SELECT DISTINCT("team_id") FROM "performances"
-- WHERE "player_id" = 14190;

SELECT "name" FROM "teams"
WHERE "id" IN (
    SELECT DISTINCT("team_id") FROM "performances"
    WHERE "player_id" = 14190
);

