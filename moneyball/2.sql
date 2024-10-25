-- Your general manager (i.e., the person who makes decisions about player contracts) asks you whether the team should trade a current player for Cal Ripken Jr.,
-- a star player who’s likely nearing his retirement.
-- In 2.sql, write a SQL query to find Cal Ripken Jr.’s salary history.

-- Sort by year in descending order.
-- Your query should return a table with two columns, one for year and one for salary.

#PLAYER ID = 15726
SELECT * FROM "players"
WHERE "first_name" is "Cal";

SELECT "year", "salary" FROM "salaries"
WHERE "player_id" = (
    SELECT "id" FROM "players"
    WHERE "first_name" is "Cal" AND "last_name" IS "Ripken"
)
ORDER BY "year" DESC;
