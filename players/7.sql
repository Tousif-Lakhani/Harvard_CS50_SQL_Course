-- In 7.sql, write a SQL query to count the number of players who bat (or batted) right-handed and throw (or threw) left-handed, or vice versa.

SELECT COUNT("first_name") FROM "players"
WHERE "bats" is 'R' AND "throws" is 'L'
OR "bats" is 'L' AND "throws" is 'R';
-- LIMIT 10;
