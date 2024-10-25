
-- The first number in the triplet is the sentence number referenced by the encoder.
-- The second number in the triplet is the character number, within that sentence, at which the message begins.
-- The third number in the triplet is the message length in characters
-- (i.e., how many characters to read from the first, including spaces and punctuation).
SELECT substr("sentence",98,4) FROM "sentences"
WHERE "id" = 14;

SELECT substr("sentence",3,5) FROM "sentences"
WHERE "id" = 114;

SELECT substr("sentence",72,9) FROM "sentences"
WHERE "id" = 618;

SELECT substr("sentence",7,3) FROM "sentences"
WHERE "id" = 630;

SELECT substr("sentence",12,5) FROM "sentences"
WHERE "id" = 932;

SELECT substr("sentence",50,7) FROM "sentences"
WHERE "id" = 2230;

SELECT substr("sentence",44,10) FROM "sentences"
WHERE "id" = 2346;

SELECT substr("sentence",14,5) FROM "sentences"
WHERE "id" = 3041;

CREATE TABLE "temp" (
    "phrase" TEXT NOT NULL
);

INSERT INTO "temp"
("phrase")
VALUES
("find"),
("me in"),
("the place"),
("you"),
("least"),
("expect."),
("behind the"),
("books");

CREATE VIEW "message" AS
SELECT * FROM "temp";

SELECT "phrase" FROM "message";
