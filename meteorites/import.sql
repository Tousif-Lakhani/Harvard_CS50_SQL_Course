-- In import.sql, write a series of SQL (and SQLite) statements to import and clean the data from meteorites.csv into a table, meteorites, in a database called meteorites.db

.mode csv
.import meteorites.csv temp

CREATE TABLE IF NOT EXISTS "meteorites"(
    "id" NUMBER,
    "name" TEXT,
    "class",
    "mass" FLOAT,
    "discovery" TEXT NOT NULL CHECK("discovery" IN ("Fell","Found")),
    "year" FLOAT,
    "lat" FLOAT,
    "long" FLOAT,
     PRIMARY KEY("id")
);

-- SELECT * FROM "temp"
-- WHERE "long" IS NULL
-- LIMIT 15;


UPDATE "temp"
SET "mass" = NULL
WHERE "mass" = "";

UPDATE "temp"
SET "year" = NULL
WHERE "year" = "";

UPDATE "temp"
SET "lat" = NULL
WHERE "lat" = "";

UPDATE "temp"
SET "long" = ROUND("long",2);

UPDATE "temp"
SET "lat" = ROUND("lat",2);

UPDATE "temp"
SET "mass" = ROUND("mass",2);

-- SELECT * FROM "temp"
-- WHERE "nametype" = "Relict"
-- LIMIT 10;

DELETE FROM "temp"
WHERE "nametype" = "Relict";

-- ALTER TABLE "temp"
-- DROP COLUMN "nametype";

INSERT INTO "meteorites"
("id","name","class","mass","discovery","year","lat","long")
SELECT
"id","name","class","mass","discovery","year","lat","long"
FROM "temp";


-- SELECT * FROM "temp" LIMIT 15;

SELECT * FROM "meteorites"
ORDER BY "year", "name"
LIMIT 5;

-- DROP TABLE "meteorites";



