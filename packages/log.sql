-- *** The Lost Letter ***

-- Senders name = Aneke
-- Senders Address = 900 Somerville Avenue
-- Recepients name = Varsha
-- Recepients Address = 2 Finnegan Street, uptown
-- Content = congratulatory note—a cheery little paper hug

# ID of senders address = 432
-- SELECT "id" FROM "addresses"
-- WHERE "address" is '900 Somerville Avenue';

#Identification of the correct receivers address = 2 Finnigan Street
-- SELECT "id", "address" FROM "addresses"
-- WHERE "address" LIKE '%2 ________ Street%';

#ID of receivers address = 854
-- SELECT "id" FROM "addresses"
-- WHERE "address" is '2 Finnigan Street';

#Package ID = 384
-- SELECT "id" FROM "packages"
-- WHERE "from_address_id" is 432 AND "to_address_id" is 854;

#Address id where the package was dropped = 854
-- SELECT "address_id" FROM "scans"
-- WHERE "package_id" is 384 AND "action" is 'Drop';

#Address name of where the package was dropped = 2 Finnigan Street
-- SELECT "address", "type" FROM "addresses"
-- WHERE "id" is 854;

#Content of the Letter is Congratulatory Letter
-- SELECT "contents" FROM "packages"
-- WHERE "from_address_id" is 432 AND "to_address_id" is 854;





-- *** The Devious Delivery ***

#Package ID = 5098
-- SELECT * FROM "packages"
-- WHERE "contents" LIKE '%duck%' AND "from_address_id" is NULL;

#Address id of the scanned package = 348
-- SELECT * FROM "scans"
-- WHERE "package_id" = 5098 AND "action" is 'Drop';

#Address name where the package was scanned is 7 Humboldt Place
-- SELECT * FROM "addresses"
-- WHERE "id" = 348;





-- *** The Forgotten Gift ***

-- Receivers Address = 728 Maple Place
-- Senders Address = 109 Tileston Street.

# ID of senders address = 9873
-- SELECT "id" FROM "addresses"
-- WHERE "address" is '109 Tileston Street';

#ID of receivers address = 4983
-- SELECT "id" FROM "addresses"
-- WHERE "address" is '728 Maple Place';

#Package ID = 9523 AND Contents is Flowers
-- SELECT * FROM "packages"
-- WHERE "from_address_id" is 9873 AND "to_address_id" is 4983;

#Address id of the scanned package = 7432
-- SELECT * FROM "scans"
-- WHERE "package_id" = 9523;

#Address name where the package was scanned is 950 Brannon Harris Way
-- SELECT * FROM "addresses"
-- WHERE "id" = 7432;

#Drivers name who repicked the package
-- SELECT * FROM "drivers"
-- WHERE "id" = 17;
