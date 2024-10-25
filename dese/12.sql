-- A parent asks you for advice on finding the best public school districts in Massachusetts.
-- In 12.sql, write a SQL query to find public school districts with above-average per-pupil expenditures and an above-average percentage of teachers rated “exemplary”.
-- Your query should return the districts’ names, along with their per-pupil expenditures and percentage of teachers rated exemplary.
-- Sort the results first by the percentage of teachers rated exemplary (high to low), then by the per-pupil expenditure (high to low).

-- THere is a hint



SELECT "name", "per_pupil_expenditure", "exemplary"
FROM "districts" AS 'D'
JOIN "expenditures" AS 'E' ON "D"."id" = "E"."district_id"
JOIN "staff_evaluations" AS 'S' ON "D"."id" = "S"."district_id"
WHERE "type" IS "Public School District" AND
"per_pupil_expenditure" > (SELECT AVG("per_pupil_expenditure") FROM "expenditures")
AND "exemplary" > (SELECT AVG("exemplary") FROM "staff_evaluations")
ORDER BY "exemplary" DESC, "per_pupil_expenditure" DESC;





