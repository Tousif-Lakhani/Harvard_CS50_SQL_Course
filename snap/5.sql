-- For any two users, the app needs to quickly show a list of the friends they have in common.
-- Given two usernames, lovelytrust487 and exceptionalinspiration482, find the user IDs of their mutual friends.
-- A mutual friend is a user that both lovelytrust487 (284) and exceptionalinspiration482 (440) count among their friends.

-- Ensure your query uses the index automatically created on primary key columns of the friends table.
-- This index is called sqlite_autoindex_friends_1.


-- SELECT "id" FROM "users"
-- WHERE "username" IN ("lovelytrust487","exceptionalinspiration482");

-- EXPLAIN QUERY PLAN
WITH "L_temp" AS(
    SELECT "user_id", "friend_id" AS "L_friend" FROM "friends"
    WHERE "user_id" IN (
        SELECT "id" FROM "users"
        WHERE "username" IN ("lovelytrust487","exceptionalinspiration482")
)
)

SELECT "F"."friend_id"
FROM "users" AS "U"
JOIN "L_temp" AS "L" ON "U"."id" = "L"."user_id"
JOIN "friends" AS "F" ON "U"."id" = "F"."user_id"
WHERE "F"."user_id" IS 440 AND "F"."friend_id" IN (
    SELECT "L_friend" FROM "L_temp"
    WHERE "user_id" IS 284
) LIMIT 3
;

-- SELECT * FROM "friends"
-- WHERE "user_id" IN (284,440);


