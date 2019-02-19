-- create database
-- CREATE DATABASE my_db;


-- USE my_db;

-- *******************************************************************************
-- Create the table
-- CREATE TABLE film_table (
--     film_id INT IDENTITY NOT NULL PRIMARY KEY,
--     film_name VARCHAR(20) NOT NULL,
--     film_type VARCHAR(15),
--     date_of_release DATE,
--     director VARCHAR(30),
--     writer VARCHAR(30),
--     star VARCHAR(30),
--     film_language VARCHAR(15),
--     official_website VARCHAR(40),
--     plot_summary TEXT NOT NULL DEFAULT 'No current summary is available',
-- );

-- *******************************************************************************
-- get information on the table
-- SP_HELP film_table


-- *******************************************************************************
-- delete the table
-- DROP TABLE film_table

-- *******************************************************************************
-- Edit table
-- ALTER TABLE film_table
--     -- add a new column
--     -- ADD run_time TINYINT; 
--     -- Edit existing column
--     -- ALTER COLUMN film_name VARCHAR(20) NOT NULL;
--     ADD CONSTRAINT df_plot_summary DEFAULT 'No current summary is available' FOR plot_summary;


-- *******************************************************************************
-- Seed data to table
-- INSERT INTO table_name(col1,col2....) VALUES (val1,val2......)
-- single quotes around varchar/char/date values
-- order of columns you give  does not matter as long as values match the order given

-- INSERT INTO film_table (film_name, film_type, director, film_language ) VALUES ('Jaws', 'Horror', 'Speilberg', 'English')
-- INSERT INTO film_table (film_name, film_type, director, film_language ) VALUES ('Hot Fuzz', 'Comedy', 'Edgar Wright', 'English')
-- INSERT INTO film_table (film_name, film_type, director, film_language ) VALUES ('Shaun of the Dead', 'Comedy', 'Edgar Wright', 'English')

-- Won't work as needs non null film-name
-- INSERT INTO film_table (film_type, director, film_language ) VALUES ('Horror', 'Ridley Scott', 'English')

-- *******************************************************************************
-- update table data
-- UPDATE table SET attribute WHERE query
-- UPDATE film_table SET film_type ='Thriller' WHERE film_name='Jaws';


-- *******************************************************************************
-- Delete table data
-- DELETE FROM table WHERE query
-- DELETE FROM film_table WHERE director='Edgar Wright'


-- *******************************************************************************
-- Queries
-- * = Wildcard returns all columns
-- SELECT col1, col2 ....FROM table_name WHERE query ORDER BY col_name
-- SELECT * FROM film_table  ORDER BY film_name;

-- *******************************************************************************

-- opperators still work and even work with letters
-- SELECT TOP x - returns the top x results from the query
-- AND/ OR statements work just like if statements
-- SELECT * FROM products WHERE Discontinued=1 AND UnitsInStock!=0 ORDER BY UnitPrice DESC;
-- SELECT ProductName, UnitPrice, UnitsInStock FROM products WHERE UnitPrice<=30 AND UnitsInStock!=0;

--Distinct returns results without duplicates
-- SELECT DISTINCT City FROM Customers;


-- Wildcard searches
-- _ is a blank char, % is any number of blank chars
-- [abc] is a range of values a,b and c ;  [^abc] returns results not in the range
-- SELECT CustomerID, ContactName FROM Customers WHERE ContactName LIKE '[ABC]%[abc]%[abc]' ORDER BY ContactName;


--Where col_name IN ('option1','option2',...)
-- SELECT * FROM Customers WHERE Region IN ('AK','SP') ORDER BY Region;

-- BETWEEN - Selects values between a range of values
-- SELECT * FROM EmployeeTerritories WHERE TerritoryID BETWEEN 06897 AND 10038;

-- SELECT ProductName, ProductID FROM Products WHERE UnitPrice<5;

-- SELECT * FROM Categories WHERE CategoryName LIKE '[BS]%';

-- SELECT Count(*) FROM Orders WHERE EmployeeID IN (5,7);


-- AS - column name given as an alias
--  col1 + col2 will concatenate the data
-- SELECT CompanyName AS "Company Name", city+', '+Country AS city FROM Customers;

-- SELECT CompanyName AS "Company Name", city+', '+Country AS city, Region FROM Customers WHERE Region IS NULL;

-- SELECT DISTINCT country FROM Customers WHERE Region IS NOT NULL;

-- *******************************************************************
-- Arithmetic operators
-- +, -, *, / and % work the same as before 

-- SELECT UnitPrice, Quantity, Discount, UnitPrice*Quantity*(1-Discount) AS "Net Total" FROM [Order Details] ORDER BY "Net Total" DESC;

--OREDER BY col_name; DESC-descending , ASC- Ascending

-- *******************************************************************
-- String Functions
-- See sceenshot on teams for details on the commands

-- SELECT UPPER(CompanyName), LEFT(PostalCode,(CHARINDEX(' ',PostalCode)-1)) AS 'Post Code Area', LEN(REPLACE(companyName, ' ','')) , CHARINDEX(' ',PostalCode) AS 'index of space' FROM Customers WHERE Country ='UK';

-- SELECT ProductName, CHARINDEX('''', ProductName) FROM Products WHERE CHARINDEX('''', ProductName) > 0;

-- *******************************************************************
-- Dates
-- See teams for screenshot

-- SELECT OrderID, YEAR(OrderDate) AS "Year of Order", MONTH(OrderDate) AS "Month of Order", DAY(OrderDate) AS "Day of Order" FROM Orders;

-- SELECT OrderDate, DATEADD(m,5,OrderDate) AS "Due Date" FROM Orders;


-- *******************************************************************
-- Case Statements

-- SELECT OrderID,  CASE
--     WHEN DATEDIFF(d,OrderDate,ShippedDate) < 7 THEN 'On Time'
--     ELSE 'Overdue'
-- END AS "Status" FROM Orders;



-- SELECT EmployeeID, LastName, FirstName, DATEDIFF(yy,BirthDate,GETDATE()) AS 'Age', CASE
--     WHEN DATEDIFF(d,BirthDate, GETDATE())/365.25 > 65 THEN 'Retired'
--     WHEN DATEDIFF(d,BirthDate,GETDATE())/365.25 > 60 THEN 'Near Retirment'
--     ELSE 'Keep Working'
-- END AS "Retirment Status" FROM Employees ORDER BY BirthDate DESC;



-- SELECT  SupplierID ,SUM(UnitsOnOrder) AS "Total on Order",
--      AVG(UnitsOnOrder) AS "Average on Order", 
--      MIN(UnitsOnOrder) AS "Min on Order", 
--      MAX(UnitsOnOrder) AS "Max on Order" 
--      FROM Products GROUP BY SupplierID;

-- SELECT CategoryID ,AVG(ReorderLevel) AS "Average Reorder Level" FROM Products GROUP BY CategoryID ORDER BY "Average Reorder Level"DESC;

-- SELECT SupplierID, SUM(UnitsOnOrder) AS "Total on Order", AVG(UnitsOnOrder) AS "Average on Order" FROM Products GROUP BY SupplierID HAVING SUM(UnitsOnOrder) > 50;



-- *****************************************************************************************************************************************

-- Subqueries
-- Query for all customers with orders then compares with list of all customers then returns list of those without orders
-- SELECT CompanyName AS "Customer" FROM Customers WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

-- SELECT OrderID, ProductID, UnitPrice, Quantity, Discount, (SELECT MAX(UnitPrice)FROM [Order Details]) AS "MaxPrice" FROM [Order Details];

-- *****************************************************************************************************************************************
-- UNION ALL includes duplicates whilst UNION only returns unique values
-- SELECT EmployeeID AS "Employee/Supplier", FirstName + ' ' + Lastname AS "Name" FROM Employees UNION ALL SELECT SupplierID, CompanyName FROM Suppliers;


-- SELECT *  FROM [Order Details] WHERE
--    ProductID NOT IN (SELECT ProductID FROM Products WHERE Discontinued = 1);



-- *****************************************************************************************************************************************
-- INNER JOIN - returns all rows where there is at least in 1 match in both tables
-- LEFT JOIN/ LEFT OUTER JOIN - Return all rows from the left table and mathes in the right table
-- RIGHT JOIN/ RIGHT OUTER JOIN - Returns rigtht table and matches from left
-- FULL JOIN - returns all results regardless of if they match or not where no matches exist result will contain null

-- Suppliers, products, supplierID
-- SELECT p.SupplierID AS "Supplier ID" , CompanyName AS "Company Name", AVG(UnitsOnOrder) AS "Average Units on Order" FROM Products p INNER JOIN Suppliers s  ON s.SupplierID = p.SupplierID GROUP BY p.SupplierID, CompanyName;

-- SELECT ProductName, UnitPrice, CompanyName AS "Supplier", CategoryName AS "Category" FROM Products p
-- INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
-- INNER JOIN Categories c ON p.CategoryID = c.CategoryID;


-- SELECT CompanyName, Region, Productname FROM Suppliers s
-- INNER JOIN Products p ON s.SupplierID = p.SupplierID;

-- SELECT OrderID, OrderDate, Freight, CompanyName AS "Customer", FirstName + ' ' + LastName AS "EmployeeName" FROM Orders o
-- INNER JOIN Customers c ON o.CustomerID = c.CustomerID 
-- INNER JOIN Employees e ON o.EmployeeID = e.EmployeeID;


-- *****************************************************************************************************************************************
-- Convert

-- SELECT OrderId, OrderDate FROM orders;

-- Pre 2012 CONVERT(new_var_type, )
-- SELECT OrderID, CONVERT(VAECHAR(100), OrderDate, 121) From Orders;

-- Post 2012 
-- SELECT OrderID, FORMAT(OrderDate, 'dd/MM/yyyy') From Orders;