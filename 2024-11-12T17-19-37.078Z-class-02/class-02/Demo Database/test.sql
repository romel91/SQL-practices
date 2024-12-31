SELECT * FROM users;

select `firstName` , `lastName`, `email` from users;

INSERT INTO users
(`firstName`, `lastName`, `email`, `mobile`, `password`, `otp`)
VALUES
('Amit', 'Kumar', 'jF4oU@example.com', '123-456-7890', 'encrypted_password1', '123456');

SELECT "Hello, World!" AS COL1;--col1 is the alias name for the column

--variable declaration

SET @var1 = 10;
SET @var2 = 20;

SELECT 
@var1 + @var2 AS Addition,
@var1 - @var2 AS Subtraction,
@var1 * @var2 AS Multiplication,
@var1 / @var2 AS Division,
@var1 % @var2 AS Modulus;


--Random number generation
SELECT RAND() AS RandomNumber;

--find minimum and maximum value from the table
SELECT LEAST(10, 20, 30, 40, 50) AS MinimumValue,
GREATEST(10, 20, 30, 40, 50) AS MaximumValue;