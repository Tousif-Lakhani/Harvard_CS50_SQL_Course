-- The app needs to send users a summary of their engagement.
-- Find the username of the most popular user, defined as the user who has had the most messages sent to them.

-- Ensure your query uses the search_messages_by_to_user_id index, which is defined as follows:

-- CREATE INDEX "search_messages_by_to_user_id"
-- ON "messages"("to_user_id");

-- EXPLAIN QUERY PLAN
WITH "temp" AS (
    SELECT "id", "from_user_id", "to_user_id", COUNT("to_user_id") AS "Frequency" FROM "messages"
    GROUP BY "to_user_id"
    ORDER BY "Frequency" DESC
    LIMIT 1)
SELECT "username"
FROM "temp" AS "T"
JOIN "users" AS "U" ON "U"."id" = "T"."from_user_id"
WHERE "U"."id" IS "T"."id"
;


-- SELECT * FROM "users"
-- WHERE "username" IS "impressivecommitment918";


-- WITH "L_temp" AS(
--     SELECT "user_id", "friend_id" AS "L_friend" FROM "friends"
--     WHERE "user_id" IN (
--         SELECT "id" FROM "users"
--         WHERE "username" IN ("lovelytrust487","exceptionalinspiration482")
-- )
-- )

-- SELECT "F"."friend_id"
-- FROM "users" AS "U"
-- JOIN "L_temp" AS "L" ON "U"."id" = "L"."user_id"
-- JOIN "friends" AS "F" ON "U"."id" = "F"."user_id"
-- WHERE "F"."user_id" IS 440 AND "F"."friend_id" IN (
--     SELECT "L_friend" FROM "L_temp"
--     WHERE "user_id" IS 284
-- ) LIMIT 3
-- ;
