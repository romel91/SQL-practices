SELECT * FROM `Tracks` LIMIT 5; //it shows first 5 rows of the table

SELECT * FROM `Tracks` LIMIT 10,5; //get 5 records starting from 10th record

SELECT * FROM `Albums` WHERE title LIKE 'A%'; //get all records from Albums table where title starts with 'A'

SELECT * FROM `Artists` ORDER BY name; //get all records from Artists table ordered by name

SELECT * FROM `Artists` ORDER BY name DESC; //get all records from Artists table ordered by name in descending order

SELECT * FROM `Artists` ORDER BY name DESC LIMIT 5; //get first 5 records from Artists table ordered by name in descending order

SELECT * FROM `Artists` ORDER BY name ASC LIMIT 5; //get first 5 records from Artists table ordered by name in ascending order


