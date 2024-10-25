-- Your task at hand is to create a SQLite database for ATL from scratch, as by writing a set of CREATE TABLE statements in a schema.sql file.
-- The implementation details are up to you, though you should minimally ensure your database meets the airport’s requirements and that it can represent the given sample data.

-- Tables
-- Passenger - first_name, last_name, age
-- Check_ins - date, time, flights
-- Airlines - name, concourse
-- Flights - flight_no, airline, departing_airport_code, arriving_airport_code, expected_dep_date, expected_dep_time, expected_arr_date, expected_arr_time
-- check50 cs50/problems/2024/sql/atl


CREATE TABLE "Passengers" (
	"id" INTEGER,
    "first_name" TEXT not null,
    "last_name" TEXT not null,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "Flights" (
	"id" INTEGER,
    "flight_no" INTEGER not null,
    "airline_name" TEXT NOT NULL,
    "dep_air_code" TEXT NOT NULL,
    "arr_air_code" TEXT NOT NULL,
    "exp_dep_date_time" NUMERIC,
    "exp_arr_date_time" NUMERIC,
    PRIMARY KEY("id")
    -- FOREIGN KEY("airline_name") REFERENCES "Airlines"("name")
);

CREATE TABLE "Check-Ins" (
	"id" INTEGER,
    "flight_no" INTEGER not null,
    "datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY("id")
    -- FOREIGN KEY("flight_no") REFERENCES "Flights"("flight_no")
);

CREATE TABLE "Airlines" (
	"id" INTEGER,
    "name" TEXT not null,
    -- "concourse" TEXT NOT NULL CHECK("concourse" IN ("A","B","C","D","E","F","T")),
    "concourse" TEXT NOT NULL CHECK("concourse" IS "A" OR "B" OR "C" OR "D" OR "E" OR "F" OR "T"),
    PRIMARY KEY("id")
);



INSERT INTO "Passengers"
("id", "first_name", "last_name", "age")
VALUES
(1, "Amelia", "Earhart", 39);

-- SELECT * FROM "Passengers";
-- SELECT * FROM "Airlines";

INSERT INTO "Airlines"
("id", "name", "concourse")
VALUES
(1, "Delta", "A");

-- DROP TABLE "Airlines";
-- DROP TABLE "Flights";
-- DROP TABLE "Check-Ins";

INSERT INTO "Flights"
("id", "flight_no", "airline_name", "dep_air_code","arr_air_code","exp_dep_date_time","exp_arr_date_time")
VALUES
(1, 300, "Delta", "ATL", "BOS", "2023-08-03 06:46:00", "2023-08-03 09:09:00");

-- SELECT * FROM "Flights";

INSERT INTO "Check-Ins"
("id", "flight_no", "datetime")
VALUES
(1, 300, "2023-08-03 03:03:0");

-- SELECT * FROM "Check-Ins";
