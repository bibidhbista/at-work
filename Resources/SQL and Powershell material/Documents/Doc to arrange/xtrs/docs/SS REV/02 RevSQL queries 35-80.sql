--2nd part of the revision... PART 35 video INDEXES/TABLE SCANS TO PART 80 DEADLOCK VICTIM SELECTION

--Index: help reduce table scans .. if indexed properly in tables and views
alter table tblperson
add salary int

select * from tblPerson
UPDATE TBLPERSON SET SALARY = 45000 WHERE ID =1
UPDATE TBLPERSON SET SALARY = 40000 WHERE ID =3
UPDATE TBLPERSON SET SALARY = 42000 WHERE ID =4
UPDATE TBLPERSON SET SALARY = 35000 WHERE ID =7
UPDATE TBLPERSON SET SALARY = 37500 WHERE ID =8
UPDATE TBLPERSON SET SALARY = 60000 WHERE ID =17


--creating index
CREATE INDEX IX_tblPerson_Salary
On tblPerson (salary asc)

sp_helpindex tblperson



-- clustered and non clustered index unique 

-- clustered index determines the physical order of the table::::::::: a table can have only one clustered index
--primary keys automatically create a clustered index

-- clustered composite key: sorts the data by each one of the mentioned cols...
create clustered index IX_tblPerson_gender_salary
on tblPerson (genderid desc, salary asc)


drop index tblPerson.[Pk_tblPerson] -- unique const. restricts from dropping this index so delete from gui

select * FROM tblPerson
drop index tblperson.[IX_tblPerson_gender_salary]

Alter table tblperson
add constraint Pk_tblPerson
primary key clustered(id)


--non clustered
create nonclustered index IX_tblPerson_genderNC
on tblPerson (genderid desc)

SELECT * from tblPerson
sp_helpindex tblperson

--unique index : default .. unique const and non clustered
-- pk default unique and clustered

-- views:::: virtual tables
create view vWEmpByDept
as 
select p.id, name, p.salary, IsNull(g.Gender, 'Not Specified') as Gender
from tblPerson p
left join tblGender g
on p.GenderId=g.ID
--exe the view
SELECT * from vwempbydept

sp_helptext vwempbydept


--updateable views
update vwempbydept set name='Richie' where name='Rich' and id =1

---NOTE: when changing keys that join two tables from a view, it actually changes the values in both tables (HR to IT even when deptID was changed for just one person)
--instead make use of INSTEAD OF trigger method

--indexed views: makes the views able to store data
CREATE table tblProduct(
ProductID int identity(1,1) not null Primary Key,
Name nvarchar(50) not null,
UnitPrice int
)


CREATE table tblQuantity(
ProductID int not null ,
QuantitySold int not null
)
insert into tblProduct VALUES ('Books', 20)
insert into tblProduct VALUES ('Pens', 14)
insert into tblProduct VALUES ('Pencil', 11)
insert into tblProduct VALUES ('Clips', 10)

insert into tblQuantity VALUES (1, 10)
insert into tblQuantity VALUES (3,23)
insert into tblQuantity VALUES (4, 21)
insert into tblQuantity VALUES (2, 12)
insert into tblQuantity VALUES (1, 13)
insert into tblQuantity VALUES (3, 12)
insert into tblQuantity VALUES (4, 13)
insert into tblQuantity VALUES (1, 11)
insert into tblQuantity VALUES (2, 12)
insert into tblQuantity VALUES (1, 14)

SELECT * from tblProduct
SELECT * from tblQuantity


-- WITH SCHEMABINDING .. COUNT_BIG(*) FOR CREATING AN INDEXED VIEWS
ALTER VIEW VWTOTALSALES
WITH SCHEMABINDING
AS
	SELECT P.NAME, (SUM(ISNULL(UNITPRICE*QUANTITYSOLD, 0))) AS TOTALSALES, (COUNT_BIG(*)) AS TOTALTRANSACTIONS
	FROM DBO.TBLPRODUCT P
	JOIN DBO.TBLQUANTITY Q
	ON P.PRODUCTID = Q.PRODUCTID
	GROUP BY NAME

SELECT * FROM VWTOTALSALES

-- CREATING THE INDEX ON THE VIEW
CREATE UNIQUE CLUSTERED INDEX UIX_vWTotalSales_NAME
ON VWTOTALSALES(NAME)

--INDEXED VIEWS : SHOULD BE USED WHEN THE DATA DOESN'T CHANGES AS MUCH.... OLAP



--TRIGGERS

--AFTER TRIGGERS
CREATE TABLE TBLAUDITDATA(
ID INT IDENTITY(1,1) PRIMARY KEY,
AUDITDATA NVARCHAR(75)
)

SELECT * FROM TBLPERSON
SELECT * FROM TBLAUDITDATA

CREATE TRIGGER tr_TBLPERSON_FORINSERT
ON TBLPERSON
FOR INSERT
AS
BEGIN
		DECLARE @ID INT
		DECLARE @NAME NVARCHAR(50)
		SELECT @ID = ID FROM INSERTED
		SELECT @NAME = NAME FROM INSERTED

		INSERT INTO TBLAUDITDATA
		VALUES ('NEW EMPLOYEE NAMED '+@NAME+' WITH ID ='
				+ CAST(@ID AS NVARCHAR(5)) +
				' IS ADDED AT '+
				CAST(GETDATE() AS NVARCHAR(20))
				)
END

INSERT INTO tblPerson(ID,Name,EMAIL,GenderId) VALUES (2, 'PLEXI', 'PLEX@I.COM', 2)

--for delete
CREATE TRIGGER tr_TBLPERSON_FORDELETE
ON tblPerson
FOR DELETE
AS 
BEGIN
		DECLARE @ID INT
		DECLARE @NAME NVARCHAR(50)
		SELECT @ID = ID FROM DELETED
		SELECT @NAME = NAME FROM DELETED

		INSERT INTO TBLAUDITDATA
		VALUES ('EMPLOYEE NAMED '+@NAME+' WITH ID ='
				+ CAST(@ID AS NVARCHAR(5)) +
				' WAS DELETED AT '+
				CAST(GETDATE() AS NVARCHAR(20))
				)
END

DELETE FROM tblPerson WHERE ID =2


--for update
ALTER TRIGGER tr_TBLPERSON_FORUPDATE
ON tblPerson
FOR UPDATE
AS 
BEGIN
		DECLARE @ID INT

		DECLARE @NAMEIN NVARCHAR(50)
		DECLARE @NAMEDEL NVARCHAR(50)

		SELECT @ID = ID FROM INSERTED
		SELECT @NAMEIN = NAME FROM INSERTED
		SELECT @NAMEDEL = NAME FROM DELETED

		DECLARE @AUDITSTRING NVARCHAR(1000)

		SELECT * INTO #TEMPTABLE FROM INSERTED

		WHILE(EXISTS(SELECT ID FROM #TEMPTABLE))
		BEGIN
				SET @AUDITSTRING =''

				SELECT TOP 1 @ID = ID, @NAMEIN =NAME
				FROM #TEMPTABLE

				SELECT @NAMEDEL = NAME FROM DELETED WHERE ID = @ID

				SET @AUDITSTRING = ('EMPLOYEE NAMED '+@NAMEDEL+' WITH ID ='
									+ CAST(@ID AS NVARCHAR(5)) +
									' CHANGED')
				IF(@NAMEDEL<>@NAMEIN)
						SET @AUDITSTRING += ' NAME FROM' +@NAMEDEL+' TO= '+@NAMEIN +' AT'+CAST(GETDATE() AS NVARCHAR(20))
				
				INSERT INTO TBLAUDITDATA VALUES (CONVERT(NVARCHAR(100), @AUDITSTRING))
				DELETE FROM #TEMPTABLE WHERE ID = @ID --- WITHOUT THIS .. THIS LOOP WOULD BE AN INFINTE LOOP CAUSE IT WOULD KEEP ACCESSING THE SAME RECORD EVERY TIME
		END
END

SELECT * FROM TBLPERSON
SELECT * FROM TBLAUDITDATA

UPDATE tblPerson SET NAME='MINI', GENDERID =2 WHERE ID =8

ALTER TABLE TBLAUDITDATA
ALTER COLUMN AUDITDATA NVARCHAR(100)

--INSTEADOF TRIGGER
SELECT * FROM TBLPERSON
SELECT * FROM TBLDEPARTMENTS
select * FROM tblGender

-- TO DEMO .. CREATE A VIEW AND TRY TO INSERT RECORDS INTO THE VIEW .. 2 JOINS
ALTER VIEW vWEmpDetails
AS
SELECT P.ID, P.NAME,ISNULL(G.GENDER,'NOT SPECIFIED') AS GENDER, D.DEPARTMENT AS DEPARTMENTNAME
	FROM DBO.TBLPERSON P
		JOIN DBO.TBLGENDER G
		ON P.GENDERID = G.ID
		JOIN DBO.TBLDEPARTMENTS D
		ON P.DEPARTMENTID = D.DEPARTMENTID
		

select * FROM vWEmpDetails
select * FROM tblGender
SELECT * FROM TBLPERSON
SELECT * FROM TBLDEPARTMENTS
--INSERT
INSERT INTO vWEMPDETAILS VALUES (13, 'RHEA', 'FEMALE', 'IT')


-- USING  TRIGGERS CAUSE CAN'T UPDATE/MODIFY VIEWS

-- INSTEAD OF INSERT TABLE
ALTER TRIGGER TR_VWEMPDETAILS_INSTEADOFINSERT
ON VWEMPDETAILS
INSTEAD OF INSERT
AS
BEGIN
		DECLARE @DEPTID INT
		DECLARE @GENID INT

		SELECT @DEPTID = DEPARTMENTID
		FROM TBLDEPARTMENTS
		JOIN INSERTED
		ON INSERTED.DEPARTMENTNAME = TBLDEPARTMENTS.DEPARTMENT

		SELECT @GENID = TBLGENDER.ID
		FROM tblGender
		JOIN INSERTED
		ON INSERTED.Gender = tblGender.Gender


		IF(@DEPTID IS NULL)
		BEGIN
				RAISERROR('INVALID DEPT NAME.',16,1)
				RETURN
		END
		IF(@GENID IS NULL)
		BEGIN
				RAISERROR('INVALID GENDER.',16,1)
				RETURN
		END
		
		DECLARE @EMAIL NVARCHAR(50)
		DECLARE @NAME NVARCHAR(50)
		SELECT @NAME = NAME FROM INSERTED
		SET @EMAIL = (@NAME + '@TEST.COM')
	
		INSERT INTO TBLPERSON(ID,NAME, EMAIL,GENDERID,DEPARTMENTID)
		SELECT ID, NAME,@EMAIL,@GENID, @DEPTID
		FROM INSERTED
END



--INSTEAD OF UPDATE TABLE
CREATE TRIGGER TR_VWEMPDETAILS_INSTEADOFUPDATE
ON VWEMPDETAILS
INSTEAD OF UPDATE
AS
BEGIN
			-- IF EMPLOYEEID IS UPDATED
			IF(UPDATE(ID))
			BEGIN
				RAISERROR('ID CANNOT BE CHANGED', 16, 1)
				RETURN
			END
 
			-- IF DEPTNAME IS UPDATED
			IF(UPDATE(DEPARTMENTNAME)) 
			BEGIN
					DECLARE @DEPTID INT

					SELECT @DEPTID = DEPARTMENTID
						FROM TBLDEPARTMENTS
						JOIN INSERTED
					ON INSERTED.DEPARTMENTNAME = TBLDEPARTMENTS.DEPARTMENT
  
					IF(@DEPTID IS NULL )
					BEGIN
						RAISERROR('INVALID DEPARTMENT NAME', 16, 1)
						RETURN
					END
  
					UPDATE tblPerson SET DEPARTMENTID = @DEPTID
					FROM INSERTED
						JOIN tblPerson
						ON tblPerson.ID = INSERTED.ID
			END
 
			-- IF GENDER IS UPDATED
			IF(UPDATE(GENDER))
			BEGIN
				DECLARE @GENID INT

					SELECT @GENID = TBLGENDER.ID
						FROM tblGender
						JOIN INSERTED
					ON INSERTED.GENDER = tblGender.Gender
  
					IF(@GENID IS NULL )
					BEGIN
						RAISERROR('INVALID GENDER', 16, 1)
						RETURN
					END
  
					UPDATE tblPerson SET GENDERID = @GENID
					FROM INSERTED
						JOIN tblPerson
						ON tblPerson.ID = INSERTED.ID
			END
 
			-- IF NAME IS UPDATED
			IF(UPDATE(NAME))  -- EVEN IF YOU USE THE SAME NAME .. THIS IS TRUE... SO BETTER TO  PERFORM COMPARISON BY YOURSELF
			BEGIN
					UPDATE tblPerson SET NAME = INSERTED.NAME
					FROM INSERTED
							JOIN tblPerson
							ON tblPerson.ID = INSERTED.ID
			END
END

--NOW, LET'S TRY TO UPDATE JOHN'S DEPARTMENT TO IT. 
UPDATE VWEMPDETAILS 
SET DEPARTMENTNAME = 'PAYROLL', GENDER ='FEMALE'
--SET ID = 3               -- PRINTS OUT A ERROR CAUSE ID CAN'T BE CHANGED
WHERE ID = 2


-- INSTEAD OF DELETE TRIGGER
ALTER TRIGGER TR_VWEMPDETAILS_INSTEADOFDELETE
ON VWEMPDETAILS
INSTEAD OF DELETE
AS
BEGIN
		--DELETE tblPerson
		--FROM tblPerson
		--JOIN DELETED
		--ON TBLPERSON.ID = DELETED.ID

		--SUBQUERY
		DELETE FROM TBLPERSON
		WHERE ID IN (SELECT ID FROM DELETED)
END

DELETE FROM VWEMPDETAILS WHERE ID=3
SELECT * FROM VWEMPDETAILS
INSERT INTO VWEMPDETAILS VALUES (3, 'mAX', 'MALE', 'HR')




--DERIVED TABLES
CREATE VIEW VWEMPCOUNT
AS
SELECT D.DEPARTMENT, COUNT(*) AS TOTALEMPLOYEES 
FROM tblPerson P
JOIN TBLDEPARTMENTS D
ON P.DEPARTMENTID = D.DEPARTMENTID
GROUP BY D.DEPARTMENT

--QUERYING THE VIEW
SELECT * FROM VWEMPCOUNT
WHERE TOTALEMPLOYEES>=2

--CAUSE IT'S ONLY USED ONCE ... CAN BE REPLACED BY OTHER OPTIONS LIKE CTE, DERIVED TABLES, TEMP TABLES, TABLE VAR

--USING TEMP TABLES
SELECT D.DEPARTMENT, COUNT(*) AS TOTALEMPLOYEES INTO #TEMPEMPCOUNT
FROM tblPerson P
JOIN TBLDEPARTMENTS D
ON P.DEPARTMENTID = D.DEPARTMENTID
GROUP BY D.DEPARTMENT

SELECT * FROM #TEMPEMPCOUNT
WHERE TOTALEMPLOYEES>=2

DROP TABLE #TEMPEMPCOUNT

--USING TABLE VARIABLE  SCOPE OF A TABLE VARIABLE IS THE BATCH, STORED PROCEDURE, OR STATEMENT BLOCK IN WHICH IT IS DECLARED. 
DECLARE @TBLEMPCOUNT TABLE
(DPTNAME NVARCHAR(20), DEPID INT, TOTALEMPLOYEES INT)

INSERT @TBLEMPCOUNT
SELECT D.DEPARTMENT, D.DEPARTMENTID, COUNT(*) AS TOTALEMPLOYEES 
FROM tblPerson P
JOIN TBLDEPARTMENTS D
ON P.DEPARTMENTID = D.DEPARTMENTID
GROUP BY D.DEPARTMENT, D.DEPARTMENTID

Select DPTNAME, TOTALEMPLOYEES
From @TBLEMPCOUNT
where  TotalEmployees >= 2

--USING DERIVED TABLES: ONLY AVAILABLE IN THE CONTEXT OF CURRENT QUERY
Select DPTNAME, TotalEmployees
from 
 (
	SELECT D.DEPARTMENT AS DPTNAME,  COUNT(*) AS TOTALEMPLOYEES 
	FROM tblPerson P
	JOIN TBLDEPARTMENTS D
	ON P.DEPARTMENTID = D.DEPARTMENTID
	GROUP BY D.DEPARTMENT)
as EmployeeCount
where TotalEmployees >= 2


-- USING COMMON TABLE EXPRESSION   CTE
WITH EMPCOUNT(DPTNAME, DEPTID, TOTALEMPLOYEES)
AS
(SELECT D.DEPARTMENT , D.DEPARTMENTID, COUNT(*)  
	FROM tblPerson P
	JOIN TBLDEPARTMENTS D
	ON P.DEPARTMENTID = D.DEPARTMENTID
	GROUP BY D.DEPARTMENT, D.DEPARTMENTID)
SELECT DPTNAME, DEPTID, TOTALEMPLOYEES FROM
EMPCOUNT WHERE TOTALEMPLOYEES>=2
-- SELECT * FROM EMPCOUNT -- DOESNT WORK CAUSE CTE'S EXECUTION SCOPE IS A SINGLE SELECT,INSERT,DELETE, UPDATE OR CREATE VIEW STATEMENT


--VW
--CREATE .... SELECT ..

--TT
--SELECT ..INTO #TEMP TABLE....
--SELECT..

--TV
--DECLARE @TBLVAR 
--INSERT @TBLVAR
--SELECT QUERY

--DT
--SELECT A, B
--FROM
--		sELECT QUERY
--WHERE COND

--CTE
--WITH EMPCOUNT
--AS
--		SELECT QUERY
--SELECT QUERY FROM EMP COUNT

--
--UPDATEABLE CTE : 1. IF IT ONLY AFFECTS ONE BASE TABLE: ALLOWED
--IF 2 OR MORE BASE TABLES ... UPDATE SUCEESS BUT NOT ALWAYS 



--RECURSIVE CTE
--SELFJOIN

Create Table tblEmployee
(
  EmployeeId int Primary key,
  Name nvarchar(20),
  ManagerId int
)

Insert into tblEmployee values (1, 'Tom', 2)
Insert into tblEmployee values (2, 'Josh', null)
Insert into tblEmployee values (3, 'Mike', 2)
Insert into tblEmployee values (4, 'John', 3)
Insert into tblEmployee values (5, 'Pam', 1)
Insert into tblEmployee values (6, 'Mary', 3)
Insert into tblEmployee values (7, 'James', 1)
Insert into tblEmployee values (8, 'Sam', 5)
Insert into tblEmployee values (9, 'Simon', 1)


SELECT * FROM tblEmployee

WITH EMPLOYEESCTE (EMPLOYEEID, NAME, MANAGERID, [LEVEL])
  AS
  (
  --BASE CASE
    SELECT EMPLOYEEID, NAME, MANAGERID, 1
    FROM TBLEMPLOYEE
    WHERE MANAGERID IS NULL
    
    UNION ALL
    --RECURSIVE PART
    SELECT TBLEMPLOYEE.EMPLOYEEID, TBLEMPLOYEE.NAME, 
    TBLEMPLOYEE.MANAGERID, EMPLOYEESCTE.[LEVEL] + 1
    FROM TBLEMPLOYEE
    JOIN EMPLOYEESCTE
    ON TBLEMPLOYEE.MANAGERID = EMPLOYEESCTE.EMPLOYEEID
  )

SELECT EMPCTE.NAME AS EMPLOYEE, ISNULL(MGRCTE.NAME, 'SUPER BOSS') AS MANAGER, 
EMPCTE.[LEVEL] 
FROM EMPLOYEESCTE EMPCTE
LEFT JOIN EMPLOYEESCTE MGRCTE
ON EMPCTE.MANAGERID = MGRCTE.EMPLOYEEID


-- PIVOT OPERATOR 
drop table tblproductsales
Create Table tblProductSales
(
 SalesAgent nvarchar(50),
 SalesCountry nvarchar(50),
 SalesAmount int 
)
Insert into tblProductSales values('Tom', 'UK', 200)
Insert into tblProductSales values('John', 'US', 180)
Insert into tblProductSales values('John', 'UK', 260)
Insert into tblProductSales values('David', 'India', 450)
Insert into tblProductSales values('Tom', 'India', 350)
Insert into tblProductSales values('David', 'US', 200)
Insert into tblProductSales values('Tom', 'US', 130)
Insert into tblProductSales values('John', 'India', 540)
Insert into tblProductSales values('John', 'UK', 120)
Insert into tblProductSales values('David', 'UK', 220)
Insert into tblProductSales values('John', 'UK', 420)
Insert into tblProductSales values('David', 'US', 320)
Insert into tblProductSales values('Tom', 'US', 340)
Insert into tblProductSales values('Tom', 'UK', 660)
Insert into tblProductSales values('John', 'India', 430)
Insert into tblProductSales values('David', 'India', 230)
Insert into tblProductSales values('David', 'India', 280)
Insert into tblProductSales values('Tom', 'UK', 480)
Insert into tblProductSales values('John', 'US', 360)
Insert into tblProductSales values('David', 'UK', 140) 

SELECT * FROM tblProductSales

--GROUP BY METHOD
SELECT SALESAGENT, SALESCOUNTRY, SUM(SALESAMOUNT) AS [TOTAL SALES]
FROM tblProductSales
GROUP BY SalesAgent, SalesCountry
ORDER BY SALESAGENT, SalesCountry

--PIVOT METHOD:: NOTE IF THE TABLE CONTAINS OTHER COLUMNS THAN YOU'RE OPERATING ON THEN IT GIVES UNEXPECTED RESULTS: USE DERIVED TABLES TO REMEDY THAT
-- TURN ROWS INTO COLS
SELECT * FROM tblProductSales
SELECT SALESAGENT, INDIA, US, UK FROM tblProductSales
PIVOT(SUM(SalesAmount) FOR SALESCOUNTRY IN ([INDIA],[US],[UK]))   AS PIVOTTABLE

-- USING DT TO REMEDY UNEXPECTED OUTPUT
SELECT SALESAGENT, INDIA, US, UK INTO PIVOTTABLEEX FROM
(
	SELECT SALESAGENT, SALESCOUNTRY,SALESAMOUNT FROM tblProductSales
) AS SOURCETABLE
PIVOT(SUM(SalesAmount) FOR SALESCOUNTRY IN ([INDIA],[US],[UK]))   AS PIVOTTABLE



--unpivot table: TURN COLS INTO ROWS
SELECT SalesAgent, Country, SalesAmount
FROM PIVOTTABLEEX
UNPIVOT
(
       SalesAmount
       FOR Country IN (India, US ,UK)
) AS UnpivotExample

--reverse the pivot table
-- cant revert if the data has been aggregated

--ERROR HANDLING USING BEGIN TRY END TRY BEGIN CATCH END CATCH

-- TRANSACTIONS: BEGIN TRANSACTION END TRANSACTION COMMIT .. ROLLBACK
Create Table tblMailingAddress
(
   AddressId int NOT NULL primary key,
   EmployeeNumber int,
   HouseNumber nvarchar(50),
   StreetAddress nvarchar(50),
   City nvarchar(10),
   PostalCode nvarchar(50)
)

Insert into tblMailingAddress values (1, 101, '#10', 'King Street', 'Londoon', 'CR27DW') 



Create Table tblPhysicalAddress
(
 AddressId int NOT NULL primary key,
 EmployeeNumber int,
 HouseNumber nvarchar(50),
 StreetAddress nvarchar(50),
 City nvarchar(10),
 PostalCode nvarchar(50)
)

Insert into tblPhysicalAddress values (1, 101, '#10', 'King Street', 'Londoon', 'CR27DW')

SELECT * FROM tblPhysicalAddress
SELECT * FROM tblMailingAddress
--TRAN : HERE... THE CHAR SET FOR CITY IS 10 SO .. ONE OF THE TWO UPDATES FAILS ... AND THE TRANS IS ROLLED BACK SO BOTH UPDATES ARE CANCELLED

Alter Procedure spUpdateAddress
AS
Begin
	Begin Try
		Begin Transaction
			Update dbo.tblMailingAddress set City = 'LONDON12' 
			where AddressId = 1 and EmployeeNumber = 101
   
			Update tblPhysicalAddress set City = 'LONDON LONDON' 
			where AddressId = 1 and EmployeeNumber = 101
		Commit Transaction
	End Try
	Begin Catch
		 Rollback Transaction
	End Catch
End



-- CREATING A LARGE TABLE WITH RANDOM DATA FOR PERF TESTING

-- if table exists drop and recreate

if(EXISTS(SELECT * 
		from INFORMATION_SCHEMA.TABLES
		where TABLE_NAME = 'tblProductSales'))
BEGIN 
	DROP TABLE tblProductSales
END

IF(EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'TBLPRODUCTs'))
BEGIN
	DROP TABLE tblProducts
END


-- Recreate tables
Create Table tblProducts
(
 [Id] int identity primary key,
 [Name] nvarchar(50),
 [Description] nvarchar(250)
)

Create Table tblProductSales
(
 Id int primary key identity, 
 ProductId int FOREIGN key REFERENCES tblProducts(id),
 UnitPrice int,
 QuantitySold int
)

--Insert Sample data into tblProducts table
Declare @Id int
Set @Id = 1

While(@Id <= 300000)
Begin
 Insert into tblProducts values('Product - ' + CAST(@Id as nvarchar(20)), 
 'Product - ' + CAST(@Id as nvarchar(20)) + ' Description')
 
 Print @Id
 Set @Id = @Id + 1
End


SELECT * from tblProducts
select * from tblProductSales

-- Declare variables to hold a random ProductId, 
-- UnitPrice and QuantitySold
declare @RandomProductId int
declare @RandomUnitPrice int
declare @RandomQuantitySold int

-- Declare and set variables to generate a 
-- random ProductId between 1 and 100000
declare @UpperLimitForProductId int
declare @LowerLimitForProductId int

set @LowerLimitForProductId = 1
set @UpperLimitForProductId = 100000

-- Declare and set variables to generate a 
-- random UnitPrice between 1 and 100
declare @UpperLimitForUnitPrice int
declare @LowerLimitForUnitPrice int

set @LowerLimitForUnitPrice = 1
set @UpperLimitForUnitPrice = 100

-- Declare and set variables to generate a 
-- random QuantitySold between 1 and 10
declare @UpperLimitForQuantitySold int
declare @LowerLimitForQuantitySold int

set @LowerLimitForQuantitySold = 1
set @UpperLimitForQuantitySold = 10

--Insert Sample data into tblProductSales table
Declare @Counter int
Set @Counter = 1

While(@Counter <= 45000)
Begin
 select @RandomProductId = Round(((@UpperLimitForProductId - @LowerLimitForProductId) * Rand() + @LowerLimitForProductId), 0)
 select @RandomUnitPrice = Round(((@UpperLimitForUnitPrice - @LowerLimitForUnitPrice) * Rand() + @LowerLimitForUnitPrice), 0)
 select @RandomQuantitySold = Round(((@UpperLimitForQuantitySold - @LowerLimitForQuantitySold) * Rand() + @LowerLimitForQuantitySold), 0)
 
 Insert into tblProductsales 
 values(@RandomProductId, @RandomUnitPrice, @RandomQuantitySold)

 Print @Counter
 Set @Counter = @Counter + 1
End




--subquery vs joins
-- clear query and exec plan cache
CHECKPOINT; 
GO 
DBCC DROPCLEANBUFFERS; -- Clears query cache
Go
DBCC FREEPROCCACHE; -- Clears execution plan cache
GO
--subquery
Select Id, Name, Description
from tblProducts
where ID IN
(
 Select ProductId from tblProductSales
) 

--join
Select distinct tblProducts.Id, Name, Description
from tblProducts
inner join tblProductSales
on tblProducts.Id = tblProductSales.ProductId


--1 sec 263,754 rows
Select Id, Name, [Description]
from tblProducts
where Not Exists(Select * from tblProductSales where ProductId = tblProducts.Id)

--1 sec 263,754 rows
Select tblProducts.Id, Name, [Description]
from tblProducts
left join tblProductSales
on tblProducts.Id = tblProductSales.ProductId
where tblProductSales.ProductId is null     -- list of product not sold .. not even at least once.. null because the product sale wont have product id eq to the resp id in tbl products

select * from tblProducts
select * from tblProductSales

-- cursor vs joins.. joins win .. 43 sec vs 2 sec for 300000 rows


-- get list of all the tables in db
select * from sys.tables
--all tables/views
select * from INFORMATION_SCHEMA.TABLES
--procedures/function
select* from INFORMATION_SCHEMA.ROUTINES

select distinct xtype from sysobjects


--rerunnable sql server scripts
USE [PRAGIM_YTUBE]
if not exists(select * from INFORMATION_SCHEMA.tables where TABLE_NAME ='tblEmployee')
begin
		CREATE TABLE TBLEMPLOYEE(
			ID INT IDENTITY PRIMARY KEY,
			NAME NVARCHAR (100),
			GENDER NVARCHAR(10),
			DATEOFBIRTH DATETIME
			)
			PRINT 'TABLE TBLEMPLOYEE SUCCESSFULLY CREATED'
END
ELSE 
BEGIN	
		PRINT 'TABLE TBLEMPLOYEE ALREADY EXISTS!'
END


--ALTER COLUMNS WITHOUT DROPPING TABLE

SELECT NAME, SUM(SALARY) AS TOTAL
FROM tblPerson
GROUP BY NAME

ALTER TABLE TBLPERSON 
ALTER COLUMN SALARY INT



--optional parameters 
-- @name	nvarchar(50) = null -- default value

-- merge statement ... combination of insert UPDATE DELETE statement

Create table StudentSource
(
     ID int primary key,
     Name nvarchar(20)
)
GO

Insert into StudentSource values (1, 'Mike')
Insert into StudentSource values (2, 'Sara')
GO

SELECT * FROM StudentSource
SELECT * FROM StudentTARGET

Create table StudentTarget
(
     ID int primary key,
     Name nvarchar(20)
)
GO

Insert into StudentTarget values (1, 'Mike M')
Insert into StudentTarget values (3, 'John')
GO

MERGE StudentTarget AS T
USING StudentSource AS S
ON T.ID = S.ID
WHEN MATCHED THEN
     UPDATE SET T.NAME = S.NAME
WHEN NOT MATCHED BY TARGET THEN
     INSERT (ID, NAME) VALUES(S.ID, S.NAME)
WHEN NOT MATCHED BY SOURCE THEN
     DELETE;           -- <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< MERGE STATEMENT ENDS WITH ;


-- concurency probs : dirty read : side effect of jj
												--set transaction isolation level READ UNCOMMITTED  or 
												--select * from tblinventory (NOLOCK) where id =1



--lost update : SEffect of (DEFAULT)READ COMMITTED AND READ UNCOMMITTED : to slv use higher isltn levels .. repeatable read
-- when two transactions are updating the table at the same time... inconsistent data are recorded 

-- DEADLOCKS: WHEN TWO TRASACTIONS ARE WAITING ON RESOURCES FROM EACH OTHER.. SO NO WAY OUT OF THE QUERY EXECUTION
Create table TableA
(
    Id int identity primary key,
    Name nvarchar(50)
)
Go

Insert into TableA values ('Mark')
Insert into TableA values ('Ben')
Insert into TableA values ('Todd')
Insert into TableA values ('Pam')
Insert into TableA values ('Sara')
Go

Create table TableB
(
    Id int identity primary key,
    Name nvarchar(50)
)
Go

Insert into TableB values ('Mary')
Go

-- DEADLOCK PRIORITY :DEFAULT IS NORMAL.... CHOOSES THE LEAST IMPACT TO ROLLBACK AS VICTIM.. IF PRIOR IS  DEFINED  DECIDES ACC TO PRIORITY
-- Transaction 1
Begin Tran
Update TableA Set Name = Name + ' Transaction 1' where Id IN (1, 2, 3, 4, 5)
-- From Transaction 2 window execute the first update statement

Update TableB Set Name = Name + ' Transaction 1' where Id = 1
-- From Transaction 2 window execute the second update statement

Commit Transaction



-- ON A DIFFERENT SESSION-----------------------------------
-- Transaction 2
SET DEADLOCK_PRIORITY HIGH
GO
Begin Tran
Update TableB Set Name = Name + ' Transaction 2' where Id = 1

-- From Transaction 1 window execute the second update statement

Update TableA Set Name = Name + ' Transaction 2' where Id IN (1, 2, 3, 4, 5)

-- After a few seconds notice that Transaction 2 will be chosen as the
-- deadlock victim as it's DEADLOCK_PRIORITY (Normal) is lower than the
-- DEADLOCK_PRIORITY this transaction (HIGH)
Commit Transaction


SELECT * FROM TABLEA
SELECT * FROM TABLEB

TRUNCATE TABLE TABLEA
TRUNCATE TABLE TABLEB


