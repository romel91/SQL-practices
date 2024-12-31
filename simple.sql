-- Active: 1735643552550@@127.0.0.1@3306@Practice relationship database
SELECT * FROM `Tracks` LIMIT 5; --it shows first 5 rows of the table

SELECT * FROM `Tracks` LIMIT 10,5; --get 5 records starting from 10th record

SELECT * FROM `Albums` WHERE title LIKE 'A%'; --get all records from Albums table where title starts with 'A'

SELECT * FROM `Artists` ORDER BY name; --get all records from Artists table ordered by name

SELECT * FROM `Artists` ORDER BY name DESC; --get all records from Artists table ordered by name in descending order

SELECT * FROM `Artists` ORDER BY name DESC LIMIT 5; --get first 5 records from Artists table ordered by name in descending order

SELECT * FROM `Artists` ORDER BY name ASC LIMIT 5; --get first 5 records from Artists table ordered by name in ascending order

SELECT * FROM `Albums` WHERE id <16; --get all records from Albums table where id is less than 16

SELECT * FROM `Albums` WHERE Title ='Facelift'; --get all records from Albums table where title is 'Facelift'

SELECT COUNT(*) FROM `Albums`; --get the count of records in Albums table

SELECT sum(amount) FROM `loans` WHERE type ='B'; --get the sum of amount from loans table where type is 'B'

INSERT INTO `Albums` (Title, ArtistId) VALUES ('Test', 1); --insert a record into Albums table

DELETE FROM `Albums` WHERE id = 1; --delete a record from Albums table where id is 1

UPDATE loans SET amount = 100 WHERE id = 1; --update the amount in loans table where id is 1

SELECT * FROM users;--get all records from users table

