-- write a SQL query to list the titles of all episodes in Cyberchase’s original season, Season 1

SELECT "title" FROM "episodes"
WHERE "season" = 1;



-- $ sqlite3 cyberchase.db
-- sqlite> .tables
-- episodes
-- sqlite> SELECT "title" FROM "episodes";

-- To run the code use ".read 1.sql"

-- To check your answers run this - check50 cs50/problems/2024/sql/cyberchase
