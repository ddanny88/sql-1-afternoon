CREATE TABLE Person (
    id INTEGER PRIMARY KEY AUTOINCREMENT
    Name string,
    Age INTEGER,
    Height INTEGER,
    City string,
    FavoriteColor string
);

INSERT INTO Person (Name, Age, Height, City, FavoriteColor)
VALUES ('Daniel', 25, 183, 'El Paso', 'Green')
VALUES ('Sal', 22, 175, 'Floria', 'Red')
VALUES ('David', 26, 180, 'New York', 'Orange')
VALUES ('Gabriel', 20, 181, 'El Paso', 'Blue')
VALUES ('Adam', 29, 160, 'Dallas', 'Pink');


SELECT * 
FROM Person 
ORDER BY Height DESC;


SELECT * 
FROM Person 
ORDER BY Height ASC;

SELECT * 
FROM Person
ORDER BY Age DESC;

SELECT * 
FROM Person 
WHERE Age > 20;

SELECT * 
FROM Person 
WHERE Age = 18;

SELECT * 
FROM Person
WHERE Age < 20
OR Age > 30;

SELECT * 
FROM Person
WHERE Age != 27;

SELECT * 
FROM Person
WHERE FavoriteColor != 'Red';

SELECT * 
FROM Person
WHERE FavoriteColor != 'Red'
AND FavoriteColor != 'Blue'

SELECT * 
FROM Person
WHERE FavoriteColor = 'Orang' 
OR FavoriteColor = 'Green';

SELECT * 
FROM Person
WHERE FavoriteColor
IN ('Orange', 'Green', 'Blue');

SELECT * 
FROM Person
WHERE FavoriteColor 
IN ('Yellow', 'Purple');




--------------------------------------------------

CREATE TABLE Orders (
    PersonID INTEGER,
    ProductName string,
    ProductPrice FLOAT,
    Quantity INTEGER,
);

INSERT INTO Orders (PersonID, ProductName, ProductPrice, Quantity)
VALUES (0,'SmartPhone', 900.00, 1)
VALUES (1,'SmartToaster', 300.50, 2)

SELECT * 
FROM Orders;

SELECT SUM(Quantity)
FROM Orders;

SELECT SUM(ProductPrice * Quantity)
FROM Orders;

SELECT SUM(ProductPrice + Quantity)
FROM Orders
WHERE PersonID = 0;
------------------------------------------------------------

INSERT INTO Artist (ArtistId)
VALUES ('The killers')
VALUES ('Weeer')
VALUES ('Bring Me The Horizon');

SELECT * 
FROM Artist
ORDER BY Name DESC
LIMIT 10;

SELECT * 
FROM Artist
ORDER BY Name ASC
LIMIT 5;

SELECT * 
FROM Artist 
WHERE Name
LIKE 'Black%';

SELECT * 
FROM Artist 
WHERE Name
LIKE '%Black%';

---------------------------------------------------------

SELECT FirstName, LastName
FROM Employee 
WHERE City = 'Calgary';

SELECT FirstName, LastName, Max(BirthDate)
FROM Employee;

SELECT FirstName, LastName, Min(BirthDate)
FROM Employee;

SELECT EmployeeID
FROM Employee
WHERE FirstName = 'Nancy';
SELECT * 
FROM Employee
WHERE ReportsTo = 2;

SELECT COUNT(*)
FROM Employee
WHERE City = 'Lethbridge';

SELECT COUNT(*)
FROM Invoice
WHERE BillingCountry = 'USA';

SELECT COUNT(Total)
FROM Invoice;

SELECT Min(Total)
FROM Invoice;

SELECT * 
FROM Invoice
WHERE Total > 5;

SELECT * 
FROM Invoice
WHERE Total < 5;

SELECT * 
FROM Invoice
WHERE BillingState
IN ('CA', 'TX', 'AZ');

SELECT AVG(Total)
FROM Invoice;

SELECT SUM(Total)
FROM Invoice;

