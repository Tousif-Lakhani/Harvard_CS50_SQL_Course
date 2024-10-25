-- Is there a relationship between school expenditures and graduation rates?
-- In 11.sql, write a SQL query to display the names of schools, their per-pupil expenditure, and their graduation rate.
-- Sort the schools from greatest per-pupil expenditure to least. If two schools have the same per-pupil expenditure, sort by school name.

-- You should assume a school spends the same amount per-pupil their district as a whole spends.


-- SELECT "name" FROM "schools" LIMIT 10;

-- SELECT "per_pupil_expenditure" FROM "expenditures" LIMIT 10;

-- SELECT "graduated" FROM "graduation_rates" LIMIT 10;


SELECT "name", "per_pupil_expenditure", "graduated"
FROM "schools" AS 'S'
JOIN "expenditures" AS 'E' ON "S"."district_id" = "E"."district_id"
JOIN "graduation_rates" AS 'G' ON "S"."id" = "G"."school_id"
ORDER BY "per_pupil_expenditure" DESC, "name";
-- LIMIT 10;
