-- Tables
-- Users - first_name, last_name, username, password
-- Schools and Universities - name, type, location, foundation_year
-- Companies - name, industry, location
-- Connection -

CREATE TABLE IF NOT EXISTS "Users"(
    "id" NUMBER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL,
    "password",
     PRIMARY KEY("id")
);

-- INSERT INTO "Users"
-- ("id","first_name", "last_name", "username", "password")
-- VALUES
-- (1, "Alan", "Garber", "alan", "password"),
-- (2, "Reid", "Hoffman", "reid", "password");


-- SELECT * FROM "Users";
-- DROP TABLE "Users";

CREATE TABLE IF NOT EXISTS "Schools_and_Universities"(
    "id" NUMBER,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "foundation_year" INTEGER,
     PRIMARY KEY("id")
);

-- INSERT INTO "Schools_and_Universities"
-- ("id","name", "type", "location", "foundation_year")
-- VALUES
-- (1, "Harvard", "University", "Cambridge, Massachusetts", 1636);

-- SELECT * FROM "Schools_and_Universities";

CREATE TABLE IF NOT EXISTS "Companies"(
    "id" NUMBER,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
     PRIMARY KEY("id")
);

-- INSERT INTO "Companies"
-- ("id","name", "industry", "location")
-- VALUES
-- (1, "LinkedIn", "technology ", "Sunnyvale, California.");

-- SELECT * FROM "Companies";
