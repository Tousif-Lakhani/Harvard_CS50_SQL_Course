-- write a SQL query to count how many prints by Hiroshige have English titles that refer to the “Eastern Capital”.
-- Hiroshige’s prints were created in Japan’s “Edo period,” referencing the eastern capital city of Edo, now Tokyo.

SELECT COUNT("english_title") FROM "views"
where "artist" is 'Hiroshige'
AND "english_title" LIKE '%Eastern Capital%';
