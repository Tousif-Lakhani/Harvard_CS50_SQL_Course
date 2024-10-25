-- The app needs to rank a user’s “best friends,” similar to Snapchat’s “Friend Emojis” feature.
-- Find the user IDs of the top 3 users to whom creativewisdom377 sends messages most frequently.
-- Order the user IDs by the number of messages creativewisdom377 has sent to those users, most to least.

-- Ensure your query uses the search_messages_by_from_user_id index, which is defined as follows:



-- EXPLAIN QUERY PLAN

WITH "temp" AS (
    SELECT "id", "from_user_id", "to_user_id", COUNT("to_user_id") AS "Frequency" FROM "messages"
    WHERE "from_user_id" IS (
        SELECT "id" FROM "users"
        WHERE "username" IS "creativewisdom377"
)
GROUP BY "to_user_id"
ORDER BY "Frequency" DESC
LIMIT 3)

SELECT "to_user_id" FROM "temp";

