-- Write a single SQL query to list the first and last names of all players of above average height, sorted tallest to shortest, then by first and last name.

SELECT "first_name", "last_name", "height" FROM "players"
WHERE "height" > 72.3745383770835
ORDER BY "height" DESC, "first_name","last_name";
-- LIMIT 10;

-- WHERE "height" > AVG("height")
-- SELECT AVG("height") FROM "players";
