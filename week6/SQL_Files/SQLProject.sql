
-- ***1.1 Write a query that lists all Customers in either Paris or London. Include Customer ID, Company Name and all address fields.***

-- SELECT CustomerID, CompanyName, Address+ ', '+ City + ', ' + Country + ', '+ PostalCode AS "Adress" FROM Customers WHERE City = 'Paris' OR City = 'London';


-- ***1.2	List all products stored in bottles.***

-- SELECT ProductID, ProductName, QuantityPerUnit FROM Products WHERE QuantityPerUnit LIKE '%bottle%';


-- ***1.3 	Repeat question above, but add in the Supplier Name and Country.***

-- Inner Join the suppliers to get the company name.

-- SELECT ProductID, ProductName, CompanyName, Country, QuantityPerUnit FROM Products p
-- INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
-- WHERE QuantityPerUnit LIKE '%bottle%';



-- ***1.4	Write an SQL Statement that shows how many products there are in each category. Include Category Name in result set and list the highest number first.***

-- Join products to the categories and then group them by  Category and count

-- SELECT CategoryName, Count(ProductName) AS "Products in Category" FROM Categories c 
-- INNER JOIN Products p ON c.CategoryID = p.CategoryID GROUP BY CategoryName ORDER BY Count(productName) DESC;


-- ***1.5	List all UK employees using concatenation to join their title of courtesy, first name and last name together. Also include their city of residence. ***

-- SELECT TitleOfCourtesy + FirstName + ' '+ LastName AS "Employee Name", City FROM Employees WHERE Country ='UK';


-- ***1.6	List Sales Totals for all Sales Regions (via the Territories table using 4 joins) with a Sales Total greater than 1,000,000. Use rounding or FORMAT to present the numbers. ***

--  Regions joins to territories which joins to employee territories, from there use the employeeID to get the order and order details. Then SUM the order sales.

-- SELECT RegionDescription AS "Region", FORMAT(SUM(UnitPrice*Quantity*(1-Discount)), 'C', 'en-us') AS "Total Sales" FROM Region r
-- INNER JOIN Territories t ON r.RegionID = t.RegionID
-- INNER JOIN EmployeeTerritories et ON et.TerritoryID = t.TerritoryID
-- INNER JOIN Orders o ON et.EmployeeID = o.EmployeeID
-- INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
-- Group BY RegionDescription HAVING SUM(UnitPrice*Quantity*(1-Discount)) >= 1000000;


-- 1.7	Count how many Orders have a Freight amount greater than 100.00 and either USA or UK as Ship Country.

-- SELECT COUNT(OrderID) AS "Number of 100+ Fright from UK and USA" FROM Orders WHERE (ShipCountry = 'USA' OR ShipCountry = 'UK') AND Freight > 100.00;

--1.8	Write an SQL Statement to identify the Order Number of the Order with the highest amount of discount applied to that order.

-- Calculate the savings of each product ordered and then group by order ID to get orders total savings, Top 1 to only get the highest value saving.

-- SELECT TOP 1 OrderID, FORMAT(SUM(UnitPrice*Quantity*Discount), 'C', 'en-us') AS 'Savings' FROM [Order Details] GROUP BY OrderID 
-- ORDER BY SUM(UnitPrice*Quantity*Discount) DESC;



-- **************************************************************************************************************************************************************


-- Question 2

-- 2.1 Design and build a suitable set of fully normalised tables to store the following information:

-- Set up empty Database
-- CREATE DATABASE SpartaAcademy;


-- Drop tables so that they can be reinatilised when ran
-- Ordered so that foreing keys are dropped before the key they call upon

DROP TABLE CourseScheduleTrainers
DROP TABLE CourseScheduleAttendees
DROP TABLE CourseSchedule
DROP TABLE Employees
DROP TABLE CourseCatalog
DROP TABLE Rooms;
DROP TABLE Academies;




-- As with the drop tables the tables are ordered so that Primary keys are set up before the foreign keys that call them.
-- IDs set up as primary keys and identities
-- 


CREATE TABLE Academies(
    AcademyID INT IDENTITY NOT NULL PRIMARY KEY,
    AcademyName VARCHAR(15) NOT NULL,
);

CREATE TABLE Rooms(
    RoomID INT IDENTITY NOT NULL PRIMARY KEY,
    AcademyID INT NOT NULL FOREIGN KEY REFERENCES Academies(AcademyID),
    RoomName VARCHAR(15) NOT NULL,
    Description VARCHAR(50),
    Capacity INT NOT NULL
    CHECK( Capacity<= 25),
);

CREATE TABLE CourseCatalog(
    CourseID INT IDENTITY NOT NULL PRIMARY KEY,
    CourseName VARCHAR(15) NOT NULL,
    Duration INT NOT NULL,
);

CREATE TABLE Employees(
    EmployeeID INT IDENTITY NOT NULL PRIMARY KEY,
    FirstName VARCHAR(15) NOT NULL,
    LastName VARCHAR(15) NOT NULL,
    Employeetype VARCHAR(1) NOT NULL
    CHECK(Employeetype = 'T' OR Employeetype = 'S'),
    StartDate DATE ,
);


CREATE TABLE CourseSchedule(
    CousreScheduleID INT IDENTITY NOT NULL PRIMARY KEY,
    AcademyID INT NOT NULL FOREIGN KEY REFERENCES Academies(AcademyID),
    RoomID INT NOT NULL FOREIGN KEY REFERENCES Rooms(RoomID),
    CourseID INT NOT NULL FOREIGN KEY REFERENCES CourseCatalog(CourseID),
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
);


CREATE TABLE CourseScheduleTrainers(
    CourseScheduleID INT NOT NULL FOREIGN KEY REFERENCES CourseSchedule(CousreScheduleID),
    TrainerID INT NOT NULL FOREIGN KEY REFERENCES Employees(EmployeeID),
    TrainerType VARCHAR(1) NOT NULL
    CHECK( TrainerType = 'T' OR TrainerType = 'A'),
);

CREATE TABLE CourseScheduleAttendees(
    CourseScheduleID INT NOT NULL FOREIGN KEY REFERENCES CourseSchedule(CousreScheduleID),
    AttendeeID INT NOT NULL FOREIGN KEY REFERENCES Employees(EmployeeID),
    Active INT NOT NULL,
);



-- Populate the database with the given data
-- Insert values from SPartaAcademyDML.sql 
-- Academies moved above rooms to generate priimary keys to be calles upon by rooms as a foreign key
USE SpartaAcademy;


INSERT INTO [Academies]
           ([AcademyName])
     VALUES
           ('Richmond')
;


INSERT INTO [Academies]
           ([AcademyName])
     VALUES
           ('Birmingham')
;

INSERT INTO [Academies]
           ([AcademyName])
     VALUES
           ('Leeds')
;


INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 1'
           ,'Next to the new Lo; sign'
           ,12)
;

INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 2'
           ,'Behind the new Sparta sign'
           ,18)
;
INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 3'
           ,'No air-con'
           ,18)
;

INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Room 4'
           ,'Has second door with number lock'
           ,10)
;

INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (1
           ,'Boardroom'
           ,'Use as last resort'
           ,14)
;
INSERT INTO [Rooms]
           ([AcademyID]
           ,[RoomName]
           ,[Description]
           ,[Capacity])
     VALUES
           (2
           ,'I-centrum 1'
           ,'In the I-centrum building'
           ,15)
;
INSERT INTO [CourseCatalog]
           ([CourseName]
           ,[Duration])
     VALUES
           ('BA-Test',
           7)
;
INSERT INTO [CourseCatalog]
           ([CourseName]
           ,[Duration])
     VALUES
           ('Engineering',
           12)
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           ,[StartDate]
           )
     VALUES
	 		     ('Tim','Cawte','T','07/14/2017')
				 ;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           ,[StartDate]
           )
     VALUES
	 		     ('Richard','Gurney','T','07/01/2017')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Adam','Smith','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('John','Williams','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Nick','Willis','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Jenny','Jones','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Katie','Prince','S')
;
INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Peter','Brown','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Mo','Khan','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Juan','Carlos','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Jan','Miller','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Kyle','Carpenter','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Alvarao','Carlos','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Margaret','Baker','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Oti','Mwase','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Joe','Mann','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Steve','Harris','S')
;

INSERT INTO [dbo].[CourseSchedule]
           ([AcademyID]
           ,[RoomID]
           ,[CourseID]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (1
           ,1
           ,1
           ,'01/15/2018'
           ,'03/02/2018'
		  )
;

INSERT INTO [dbo].[CourseSchedule]
           ([AcademyID]
           ,[RoomID]
           ,[CourseID]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (1
           ,3
           ,2
           ,'01/22/2018'
           ,'03/03/2018'
		  )
;
INSERT INTO [CourseScheduleTrainers]
           ([CourseScheduleID]
           ,[TrainerID]
           ,[TrainerType])
     VALUES
           (1
           ,1
           ,'T')
;
INSERT INTO [CourseScheduleTrainers]
           ([CourseScheduleID]
           ,[TrainerID]
           ,[TrainerType])
     VALUES
           (2
           ,2
           ,'T')
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,3
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,4
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,5
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,6
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,7
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (1
           ,8
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,9
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,10
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,11
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,12
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,13
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,14
           ,1)
;

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (2
           ,15
           ,1)
;

-- 2.3 Add more sample data to include all current trainers and at least one TA (Training Assistant) and Spartans on your current course. (Included in above marks)
-- Added employees to employees then set up a course and asigned the trainer and ateendes respectivly.

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Jozef','McLaughlin','S')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Robert','Whitehouse','T')
;

INSERT INTO [Employees]
           ([FirstName]
           ,[LastName]
           ,[EmployeeType]
           
           )
     VALUES
	 		     ('Tom','Shirley','S')
;

INSERT INTO [dbo].[CourseSchedule]
           ([AcademyID]
           ,[RoomID]
           ,[CourseID]
           ,[StartDate]
           ,[EndDate])
     VALUES
           (2
           ,6
           ,2
           ,'12/03/2018'
           ,'03/16/2019'
		  );

INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (3
           ,18
           ,1)
;
INSERT INTO [CourseScheduleAttendees]
           ([CourseScheduleID]
           ,[AttendeeID]
           ,[Active])
     VALUES
           (3
           ,20
           ,1)
;
INSERT INTO [CourseScheduleTrainers]
           ([CourseScheduleID]
           ,[TrainerID]
           ,[TrainerType])
     VALUES
           (3
           ,19
           ,'T')
;


-- 3.1 Produce a report similar to the above table (see 2.1) from all 7 tables using one SQL statement (use FORMAT for the dates). 

-- Rooms calls upon Academy and is in turn called by courseschedule, Courseschedule also calls upon coursecatalog. The trainers and atendees then call upon the Scedule,
-- The employees are are called on by the Trainer and Atendee IDs depending on the employee type.
-- After all being joined the relevent fields are selected and the date arranged for dd/MM/yyyy layout.

-- SELECT CourseName, FORMAT(cs.StartDate, 'dd/MM/yyyy') AS "Start Date", FORMAT(EndDate, 'dd/MM/yyyy') AS "End Date",
-- AcademyName AS "Academy Name", RoomName AS "Room Name", e1.FirstName+ ' '+ e1.LastName AS "Trainer", e2.FirstName+ ' '+ e2.LastName AS "Spartan" FROM CourseCatalog cc 
-- INNER JOIN CourseSchedule cs ON cc.CourseID = cs.CourseID
-- INNER JOIN Academies a ON cs.AcademyID = a.AcademyID
-- INNER JOIN Rooms r ON cs.RoomID = r.RoomID
-- INNER JOIN CourseScheduleAttendees csa ON csa.CourseScheduleID = cs.CousreScheduleID
-- INNER JOIN CourseScheduleTrainers cst ON cst.CourseScheduleID = cs.CousreScheduleID
-- INNER JOIN Employees e1 ON e1.EmployeeID = cst.TrainerID
-- INNER JOIN Employees e2 ON e2.EmployeeID = csa.AttendeeID;


-- 3.2 Repeat 3.1 above but replace the Spartan Name column with Spartan Initials. 
-- Using the same joins as before the spartan column has been altered using the LEFT function to select only the first letter of the first and last names.

-- SELECT CourseName, FORMAT(cs.StartDate, 'dd/MM/yyyy') AS "Start Date", FORMAT(EndDate, 'dd/MM/yyyy') AS "End Date",
-- AcademyName AS "Academy Name", RoomName AS "Room Name", e1.FirstName+ ' '+ e1.LastName AS "Trainer",
--  LEFT(e2.FirstName,1)+ '.'+ LEFT(e2.LastName,1) AS "Spartan Initials" FROM CourseCatalog cc 
-- INNER JOIN CourseSchedule cs ON cc.CourseID = cs.CourseID
-- INNER JOIN Academies a ON cs.AcademyID = a.AcademyID
-- INNER JOIN Rooms r ON cs.RoomID = r.RoomID
-- INNER JOIN CourseScheduleAttendees csa ON csa.CourseScheduleID = cs.CousreScheduleID
-- INNER JOIN CourseScheduleTrainers cst ON cst.CourseScheduleID = cs.CousreScheduleID
-- INNER JOIN Employees e1 ON e1.EmployeeID = cst.TrainerID
-- INNER JOIN Employees e2 ON e2.EmployeeID = csa.AttendeeID;



-- 3.3 Add a new column after End Date headed “Check Date” which uses the DATEADD function to add 8 weeks to the Start Date column for BA Test courses and 12 weeks for any others. 
-- CASE added to determine which course type is relevent then DATEADD used to increment the couses start date by the relevant number of weeks.

-- SELECT CourseName, FORMAT(cs.StartDate, 'dd/MM/yyyy') AS "Start Date", FORMAT(EndDate, 'dd/MM/yyyy') AS "End Date", 
-- CASE WHEN cc.CourseName = 'BA-Test' THEN FORMAT(DATEADD(WEEK,8, cs.StartDate), 'dd/MM/yyyy')
--     ELSE FORMAT(DATEADD(WEEK,12, cs.StartDate), 'dd/MM/yyyy')
-- END AS "Check Date",
-- AcademyName AS "Academy Name", RoomName AS "Room Name", e1.FirstName+ ' '+ e1.LastName AS "Trainer", e2.FirstName+ ' '+ e2.LastName AS "Spartan" FROM CourseCatalog cc 
-- INNER JOIN CourseSchedule cs ON cc.CourseID = cs.CourseID
-- INNER JOIN Academies a ON cs.AcademyID = a.AcademyID
-- INNER JOIN Rooms r ON cs.RoomID = r.RoomID
-- INNER JOIN CourseScheduleAttendees csa ON csa.CourseScheduleID = cs.CousreScheduleID
-- INNER JOIN CourseScheduleTrainers cst ON cst.CourseScheduleID = cs.CousreScheduleID
-- INNER JOIN Employees e1 ON e1.EmployeeID = cst.TrainerID
-- INNER JOIN Employees e2 ON e2.EmployeeID = csa.AttendeeID;


