--3RD PART : PART 81--135 LOGGING DEADLOCKS IN SQL SERVER

-- -1 to turn trace on globally
DBCC Traceon(1222, -1) 

--To check the status of the trace flag
DBCC TraceStatus(1222, -1) 

--To turn off the trace flag
DBCC Traceoff(1222, -1)



--SQL Script to create stored procedures
Create procedure spTransaction1
as
Begin
    Begin Tran
    Update TableA Set Name = 'Mark Transaction 1' where Id = 1
    Waitfor delay '00:00:05'
    Update TableB Set Name = 'Mary Transaction 1' where Id = 1
    Commit Transaction
End

--different session
Create procedure spTransaction2
as
Begin
    Begin Tran
    Update TableB Set Name = 'Mark Transaction 2' where Id = 1
    Waitfor delay '00:00:05'
    Update TableA Set Name = 'Mary Transaction 2' where Id = 1
    Commit Transaction
End

execute sys.sp_readerrorlog

-- finding blocking queries
dbcc OPENTRAN --gives the oldest active trans

-- to list all the open ones
SELECT
    [s_tst].[session_id],
    [s_es].[login_name] AS [Login Name],
    DB_NAME (s_tdt.database_id) AS [Database],
    [s_tdt].[database_transaction_begin_time] AS [Begin Time],
    [s_tdt].[database_transaction_log_bytes_used] AS [Log Bytes],
    [s_tdt].[database_transaction_log_bytes_reserved] AS [Log Rsvd],
    [s_est].text AS [Last T-SQL Text],
    [s_eqp].[query_plan] AS [Last Plan]
FROM
    sys.dm_tran_database_transactions [s_tdt]
JOIN
    sys.dm_tran_session_transactions [s_tst]
ON
    [s_tst].[transaction_id] = [s_tdt].[transaction_id]
JOIN
    sys.[dm_exec_sessions] [s_es]
ON
    [s_es].[session_id] = [s_tst].[session_id]
JOIN
    sys.dm_exec_connections [s_ec]
ON
    [s_ec].[session_id] = [s_tst].[session_id]
LEFT OUTER JOIN
    sys.dm_exec_requests [s_er]
ON
    [s_er].[session_id] = [s_tst].[session_id]
CROSS APPLY
    sys.dm_exec_sql_text ([s_ec].[most_recent_sql_handle]) AS [s_est]
OUTER APPLY
    sys.dm_exec_query_plan ([s_er].[plan_handle]) AS [s_eqp]
ORDER BY
    [Begin Time] ASC;
GO



--except operator
DROP table tablea
drop table tableb

Create Table TableA
(
    Id int primary key,
    Name nvarchar(50),
    Gender nvarchar(10)
)
Go

Insert into TableA values (1, 'Mark', 'Male')
Insert into TableA values (2, 'Mary', 'Female')
Insert into TableA values (3, 'Steve', 'Male')
Insert into TableA values (4, 'John', 'Male')
Insert into TableA values (5, 'Sara', 'Female')
Go

Create Table TableB
(
    Id int primary key,
    Name nvarchar(50),
    Gender nvarchar(10)
)
Go

Insert into TableB values (4, 'John', 'Male')
Insert into TableB values (5, 'Sara', 'Female')
Insert into TableB values (6, 'Pam', 'Female')
Insert into TableB values (7, 'Rebeka', 'Female')
Insert into TableB values (8, 'Jordan', 'Male')
Go

--returns unique rows from the left quert that aren't in the right query's result
select id, name, gender from TableA 
except
select id, name, gender from TableB

--using except in the same table
Create table tblEmployeesForExcept
(
    Id int identity primary key,
    Name nvarchar(100),
    Gender nvarchar(10),
    Salary int
)
Go

Insert into tblEmployeesForExcept values ('Mark', 'Male', 52000)
Insert into tblEmployeesForExcept values ('Mary', 'Female', 55000)
Insert into tblEmployeesForExcept values ('Steve', 'Male', 45000)
Insert into tblEmployeesForExcept values ('John', 'Male', 40000)
Insert into tblEmployeesForExcept values ('Sara', 'Female', 48000)
Insert into tblEmployeesForExcept values ('Pam', 'Female', 60000)
Insert into tblEmployeesForExcept values ('Tom', 'Male', 58000)
Insert into tblEmployeesForExcept values ('George', 'Male', 65000)
Insert into tblEmployeesForExcept values ('Tina', 'Female', 67000)
Insert into tblEmployeesForExcept values ('Ben', 'Male', 80000)
Go


select id, name, gender, salary from tblEmployeesForExcept where salary >50000
EXCEPT
select id,name, gender,salary from tblEmployeesForExcept where name = 'mark'

--not in operator
--1. Except filters duplicates and returns only DISTINCT rows from the left query
--2. EXCEPT operator expects the same number of columns in both the queries, where as NOT IN, compares a single column from the outer query with a single column from the subquery.
select id, name, gender from TableA
where id not in (SELECT id from tableb)


--intersect op
SELECT * from tableb
insert into TableB VALUES (9,'John', 'Male')

-- filters out duplicates reutrns distinct vs inner join
select id, name, gender from TableB
INTERSECT
select id, name, gender from tableA

select A.id, a.name, a.gender from TableA A
inner JOIN TableB B
on B.id = A.Id

-- cross apply
select * from tbldepartments
select * from tblPerson
insert into tbldepartments VALUES (5, 'SALES')

-- inner join only matching rows.. so if one of the field is NULL.. it is not returned
select d.department, P.name, P.EMAIL,G.GENDER from tbldepartments D
inner join tblPerson p									
on p.departmentid = d.departmentid
JOIN tblGender g
on p.GenderId = g.ID

-- left join... matching rows and non matching rows from left table
select d.department, p.name, p.EMAIL, g.gender from tbldepartments d
LEFT join tblPerson p
on p.departmentid = d.departmentid
LEFT JOIN tblGender g
on p.GenderId = g.ID

CREATE FUNCTION FN_GETEMPLOYEESBYDEPARTMENTID(@DEPARTMENTID INT)
RETURNS TABLE
AS
RETURN
(
	SELECT * FROM tblPerson
	WHERE DEPARTMENTID = @DEPARTMENTID
)

SELECT * FROM FN_GETEMPLOYEESBYDEPARTMENTID(1)


-- CROSS APPLY IMP: MATHCHING ROWS FROM THE TABLE AND TVF
select d.department, P.name, P.EMAIL, G.GENDER from tbldepartments D
--inner join tblPerson p									WE WANT TO BE ABLE TO JOIN A TABLE AND A TVF WHICH ISN'T POSSIBLE WITH INNER JOIN
--INNER JOIN  FN_GETEMPLOYEESBYDEPARTMENTID(D.ID) P           SENDS AN ERROR SO USE CROSS APPLY INSTEAD
CROSS APPLY FN_GETEMPLOYEESBYDEPARTMENTID(D.DEPARTMENTID) P
--on p.departmentid = d.departmentid
LEFT JOIN tblGender g
on p.GenderId = g.ID

-- OUTER APPLY : MATCHING AND					NON-MATCHING FROM LEFT
SELECT D.DEPARTMENT, P.NAME, P.EMAIL,G.GENDER FROM TBLDEPARTMENTS D
OUTER APPLY FN_GETEMPLOYEESBYDEPARTMENTID(D.DEPARTMENTID) p
LEFT JOIN tblGender G
ON G.ID = P.GENDERID



-- DDL TRIGGERS : CREATE/ALTER/DROP TABLE|INDEX|FUNCTION|PROC

--CREATE_TABLE
ALTER TRIGGER TRMYFIRSTTRIGGER
ON DATABASE
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS
BEGIN
	PRINT 'YOU HAVE JUST CREATED, ALTERED OR DROPPED A TABLE'
END

CREATE TABLE TEST (ID INT)
DROP TABLE TEST

-- PREVENT ALTER/DROP
ALTER TRIGGER TRMYFIRSTTRIGGER
ON DATABASE
FOR ALTER_TABLE, DROP_TABLE
AS
BEGIN
	ROLLBACK
	PRINT 'YOU CAN''T ALTER OR DROP TABLE'
END

DROP TRIGGER TRMYFIRSTTRIGGER ON DATABASE


-- TRIGGER FOR RENAME EVENT
CREATE TRIGGER TRRENAMEEVENT
ON DATABASE
FOR RENAME
AS
BEGIN
	PRINT 'YOU HAVE JUST RENAMED SOMETHING'
END

CREATE TABLE TEST (ID INT)
SP_RENAME 'TEST', 'MYNEWTEST'
DROP TRIGGER TRRENAMEEVENT ON DATABASE

-- SEVER SCOPED TRIGGER: MAKE TRIGGER PRESENT THROUGHOUT THE SERVER
CREATE TRIGGER TR_SERVERSCOPETRIGGER
ON ALL SERVER
FOR CREATE_TABLE, ALTER_TABLE
AS
BEGIN
	PRINT 'YOU CAN''T CREATE OR ALTER TABLE'
END

CREATE TABLE TEST (ID INT)
-- DISABLE TRIGGER TR_SERVERSCOPETRIGGER ON ALL SERVER
DROP TRIGGER TR_SERVERSCOPETRIGGER ON ALL SERVER
DROP TABLE TEST 


-- SERVER SCOPED TRIGGER WILL ALWAYS FIRE OFF BEFORE DATABASE SCOPED TRIGGERS
-- SP_SETTRIGGERORDER CAN BE USED TO CHANGE IT

EXEC sp_settriggerorder
@triggername = 'tr_DatabaseScopeTrigger1',
@order = 'none',
@stmttype = 'CREATE_TABLE',
@namespace = 'DATABASE'
GO


-- AUDIT TABLE CHANGES
ALTER TRIGGER TR_AUDITTABLECHANGES
ON ALL SERVER
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS
BEGIN
	SELECT EVENTDATA()
END

CREATE TABLE TEST (ID INT)

-- MAKING THE TABLE TO STORE THE DATA FROM XML FILE
Create table TableChanges
(
    DatabaseName nvarchar(250),
    TableName nvarchar(250),
    EventType nvarchar(250),
    LoginName nvarchar(250),
    SQLCommand nvarchar(2500),
    AuditDateTime datetime
)

-- IMPORTING DATA FROM XML FILE INTO A TABLE
ALTER TRIGGER TR_AUDITTABLECHANGES
ON ALL SERVER
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS
BEGIN
	DECLARE @EVENTDATA XML
	SELECT @EVENTDATA = EVENTDATA()

	INSERT INTO PRAGIM_YTUBE.DBO.TableChanges
	(DatabaseName, TableName, EventType, LoginName, SQLCommand, AuditDateTime)
	VALUES(
		 @EventData.value('(/EVENT_INSTANCE/DatabaseName)[1]', 'varchar(250)'),
         @EventData.value('(/EVENT_INSTANCE/ObjectName)[1]', 'varchar(250)'),
         @EventData.value('(/EVENT_INSTANCE/EventType)[1]', 'nvarchar(250)'),
         @EventData.value('(/EVENT_INSTANCE/LoginName)[1]', 'varchar(250)'),
         @EventData.value('(/EVENT_INSTANCE/TSQLCommand)[1]', 'nvarchar(2500)'),
         GetDate()
    )
END 

ALTER TABLE TEST
ALTER COLUMN ID NVARCHAR(15)

DROP TABLE TEST

SELECT * FROM TableChanges



--LOGON TRIGGER
SELECT is_user_process, original_login_name, * FROM SYS.dm_exec_sessions
ORDER BY login_time DESC


-- BLOCK LOGIN FOR FOURTH CONNECTION 
CREATE TRIGGER TR_AUDITLOGIN
ON ALL SERVER
FOR LOGON 
AS
BEGIN	
	DECLARE @LoginName NVARCHAR(100)
    Set @LoginName = ORIGINAL_LOGIN()

    IF (SELECT COUNT(*) FROM sys.dm_exec_sessions
         WHERE is_user_process = 1
         AND original_login_name = @LoginName) > 3
    BEGIN
         Print 'Fourth connection of ' + @LoginName + ' blocked'
         ROLLBACK
    END
END

DISABLE TRIGGER TR_AUDITLOGIN ON ALL SERVER

-- READ THE ERROR LOG FILE
EXECUTE SP_READERRORLOg


-- SELECT INTO STATEMENT: COPY RECORDS FROM ONE TABLE TO A NEW TABLE: XLY USEFUL FOR BACKUP
SELECT * INTO EMPLOYEEBCKUP FROM tblPerson
SELECT * FROM EMPLOYEEBCKUP
DROP TABLE EMPLOYEEBCKUP

-- COPY INTO ANOTHER DB
SELECT ID, NAME, EMAIL INTO SAMPLETEXT.DBO.EMPLOYEEBCKUP FROM tblPerson
DROP TABLE SampleText.dbo.EMPLOYEEBCKUP

-- COPY COLUMNS FROM 2 OR MORE TABLES
SELECT P.*, D.DEPARTMENT INTO EmployeesBackup
FROM tblPerson P
INNER JOIN TBLDEPARTMENTS D
ON P.DepARtMENTId = D.DepartmentId
SELECT * FROM EmployeesBackup
DROP TABLE EMPLOYEESBACKUP

-- CREATE A NEW TABLE WHOSE COLS AND DATATYPES MATCH WITH AN EXISTING TABLE
SELECT * INTO EmployeesBackup FROM TBLPERSON WHERE 1 <> 1
SELECT * FROM EMPLOYEESBACKUP

-- TO SELECT DATA INTO AN EXISTING TABLE .. USE INSERT INTO .. SELECT STATEMENT
INSERT INTO EMPLOYEESBACKUP
SELECT * FROM tblPerson

SELECT * FROM EMPLOYEESBACKUP



--where vs having
--where to filter individual rows
--having to filter groups
Create table Sales
(
    Product nvarchar(50),
    SaleAmount int
)
Go

Insert into Sales values ('iPhone', 500)
Insert into Sales values ('Laptop', 800)
Insert into Sales values ('iPhone', 1000)
Insert into Sales values ('Speakers', 400)
Insert into Sales values ('Laptop', 600)


select PRODUCT, SUM(SaleAmount) FROM Sales
GROUP BY Product

-- HAVING CLAUSE
select PRODUCT, SUM(SaleAmount) FROM Sales
GROUP BY Product
HAVING SUM(SaleAmount)>1000  -- CANT USE WHERE CAUSE LEADS TO AN ERROR

-- HAVING FOR AGGREGATE FUNC
-- WHERE CLAUSE FILTERS BEFORE AGG CALC...  HAVING FILTERS AFTER AGG CALC .. SO TAKES IN ALL THE RECORDS AND CHOOSES SOME.. SO BETTER TO CHOOSE WHERE WHEN POSSIBLE


-- table valued parameter : passing table as a read only table
Create Table Employees
(
    Id int primary key,
    Name nvarchar(50),
    Gender nvarchar(10)
)
Go

--Step 1 : Create User-defined Table Type 

CREATE TYPE EmpTableType AS TABLE
(
    Id INT PRIMARY KEY,
    Name NVARCHAR(50),
    Gender NVARCHAR(10)
)
Go

select * from Employees

-- step 2 use the user defind table type as param in sp
ALTER PROCEDURE spInsertEmployees
@EmpTableType EmpTableType READONLY
AS
BEGIN
    INSERT INTO Employees
    SELECT * FROM @EmpTableType
END

-- declare a table var, insert data rows and pass table var as a param to sp
DECLARE @EmployeeTableType EmpTableType

INSERT INTO @EmployeeTableType VALUES (1, 'Mark', 'Male')
INSERT INTO @EmployeeTableType VALUES (2, 'Mary', 'Female')
INSERT INTO @EmployeeTableType VALUES (3, 'John', 'Male')
INSERT INTO @EmployeeTableType VALUES (4, 'Sara', 'Female')
INSERT INTO @EmployeeTableType VALUES (5, 'Rob', 'Male')


EXECUTE spInsertEmployees @EmployeeTableType


--grouping sets
alter table tblPerson
add country NVARCHAR(50)

SELECT * FROM tblPerson
SELECT * FROM tblGender;

--WITH Top2Rows AS (
--    SELECT TOP 2 *
--    FROM tblGender
   
--)
--SELECT P.COUNTRY, G.GENDER, SUM(P.SALARY) TOTALSALARY FROM tblPerson P
--LEFT JOIN Top2Rows G ON P.GENDERID = G.ID
--GROUP BY
--	GROUPING SETS
--	(
--		(P.COUNTRY, G.Gender),					--SUM OF SALARY BY COUNTRY & GENDER
--		(P.COUNTRY),							--SUM OF SALARY BY COUNTRY
--		(g.Gender),							--SUM OF SALARY BY GENDER
--		()										--GRAND TOTAL
--	)
--ORDER BY GROUPING(P.COUNTRY), GROUPING(G.Gender), G.Gender

SELECT P.COUNTRY, G.GENDER, SUM(P.SALARY) TOTALSALARY FROM tblPerson P
LEFT JOIN tblGender G ON P.GENDERID = G.ID
GROUP BY
	GROUPING SETS
	(
		(P.COUNTRY, G.Gender),					--SUM OF SALARY BY COUNTRY & GENDER
		(P.COUNTRY),							--SUM OF SALARY BY COUNTRY
		(g.Gender),							--SUM OF SALARY BY GENDER
		()										--GRAND TOTAL
	)
ORDER BY GROUPING(P.COUNTRY), GROUPING(G.Gender), G.Gender

-- GROUP ROLLUP
SELECT COUNTRY, GENDERID, SUM(SALARY) TOTALSALES
FROM tblPerson
GROUP BY COUNTRY,GenderId WITH ROLLUP


-- cube function

SELECT COUNTRY, GENDERID, SUM(SALARY) TOTALSALES
FROM tblPerson
GROUP BY cube(COUNTRY,GenderId)                  -- or GROUP BY COUNTRY,GENDERID WITH CUBE

-- cube gets all the combinations of specified columns while rollup only gets the hierarchy of columns mentioned

-- grouping function: returns 0 or 1 based on if the record has been aggregated or not

-- grouping id : combines multiple binary results from different grouping functions and represents it as an integer... helps to classify cubed or rolled up data in different sub categories

--debugging sql server sp: immediate window.. call stack..

-- over clause : combined with partition by to divide the table into specified num of columns present in the table
-- over clause vs group by.... group by only works if there's aggregated values... but if we want group non aggregated values we have to use over ... partition by 

-- row_num rank dense_rank requires order by() clause
-- row num : unique starting from 1
-- rank : unique starting from 1 ... when there are duplicates..same rank for equal records... for different ones skips the ranking and gives rank as if the duplicates weren't given the same ranking....1 1 1 1 5 5 7 8
--dense_rank: like rank but.. when duplicates are present... same rank given... for different records.. starts off from the next integer... 1 1 1 1 2 2 3 4 5

-- running total
select name, genderid, salary, 
	sum(salary) over (order by id)  runningtotal			-- we use id instead of using salary to order the table is because id is the primary key so it is guaranteed to be unique
from tblperson

--partition: the running total starts off per partition
select name, genderid, salary, 
	sum(salary) over (partition by genderid order by id)  runningtotal
from tblperson


--ntile function 
--order by req ... partition by opt
--distributes the rows into a specified numberof groups
SELECT * from tblPerson

-- not evenly distributed as 7 isn't divisible by 3 
select name,genderid, salary,
	ntile(3) over (order by salary) as [ntile]
	from tblPerson

--using partition by in the above query
select name,genderid, salary,
	ntile(3) over (partition by genderid order by salary) as [ntile]
	from tblPerson


--lead lag: displays record either after or before the current record
--order by req ...... partition by optional

select name, genderid, salary,
		lead(salary) over (order by salary) as lead,
		LAG(salary,2,-1) over (order by salary) as lag,  -- offset of 2 rows.... default value -1
		lead(salary,2,-1) over (partition by genderid order by salary) as leadWPart,  -- 
		LAG(salary,2,-1) over (partition by genderid order by salary) as lagWPart  -- crosses the boundry of the partition and sets the values to -1 
from tblPerson


--first value funct
--returns first value from specified cols
--order by req ... partition by optional

select name, GenderId, salary,
	FIRST_VALUE(name) over (order by salary) as firstvalue        -- lowest paid employee on the table
from tblPerson

select name, GenderId, salary,
	FIRST_VALUE(name) over (partition by genderid order by salary) as firstvalue			-- lowest paid female.. male .. and unkown on the table
from tblPerson

--window function
--agg fun... sum max min avg
--ranking fun ... rank dense_rank row_number
--analyticalfunction ... lead, lag, first_value,last_value

--over clause defines the partitioning and ordering of rows(ie a window) for the above functions to operate on
--order by ... partition by .... rows or range clause
-- by default the range is set to ......  RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW  <<<<<<<<<<<<< this is how the running total ex worked 

SELECT Name, GenderId, Salary,
        AVG(Salary) OVER(ORDER BY Salary) AS Average
FROM tblPerson -->>>>>>>>>>>>>>>>>>>> running average ////// which is not what we want

-- defining the range 
select name, genderid, salary, avg(salary) over(order by salary rows between UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS AVERAGE
FROM tblPerson

-- AVG OF THE PREV.. CURRENT AND ONE AFTER THE CURRENT RECORD
select name, genderid, salary, avg(salary) over(order by salary rows between 1 PRECEDING AND 1 FOLLOWING) AS AVERAGE
FROM tblPerson

--DIFFERENCE BETWEEN ROWS AND RANGE 
--RANGE CLAUSE TREATS DUPLICATES AS A SINGLE ENTITY ......EX... 1ST ROW 1000 ... 2ND 1000 RUNNING TOTAL FOR BOTH ..1. 2000 2. 2000
SELECT NAME, SALARY,
	SUM(SALARY) OVER (ORDER BY ID RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS RUNNINGTOTAL
FROM TBLPERSON

--USING ROWS CLAUSE: ACCOUNTS FOR DUPLICATE DATA TOO!   EX... 1ST ROW 1000 ... 2ND 1000 RUNNING TOTAL FOR BOTH ..1. 1000 2. 2000
SELECT NAME, SALARY,
	SUM(SALARY) OVER (ORDER BY ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS RUNNINGTOTAL
FROM TBLPERSON

--LAST_VALUE ::: NOTE... CHANGE THE DEFAULT RANGE .. BCOOZ AS DEFAULT IS UNB PREC TO CURRENT ROW
SELECT NAME, GENDERID, SALARY,
	LAST_VALUE(NAME) OVER (ORDER BY SALARY ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LASTVALUE 
FROM tblPerson




--choose function: returns the item at the specified index from the list of available values


select choose(2, 'india', 'us', 'uk') as country -- returns us.. index starts at 0 = null
SELECT * from tblperson

SELECT name, email, dateofbirth,
	case datepart(mm, dateofbirth)
		--when null then 'null'
		when 1 then 'January'
		when 2 then 'February'
		when 3 then 'March'
		when 4 then 'April'
		when 5 then 'May'
		when 6 then 'June'
		when 7 then 'July'
		when 8 then 'August'
		when 9 then 'September'
		when 10 then 'October'
		when 11 then 'November'
		when 12 then 'December'
		End 
		As [Month]
from tblperson
--using choose to simplify the above query
select name, email, dateofbirth, choose(datepart(mm, dateofbirth), 'January','February','March','April','May','June','July','August','September','October','November','December') as [MONTH]
FROM tblPerson


--IIF FUNCTION ... SHORTHAND FOR CASE EXP

select name, genderid, case 
					   when GenderId=1 then 'Male'
					   when GenderId=2 then 'Female'
					   else 'Not specified'
					   end as Gender											
 from tblPerson

 -- using iif function
 select name, genderid, 
		iif(genderid=1, 'Male', iif(genderid=2, 'Female','Not specified')) as Gender
from tblPerson

--try_parse function
-- converts string to date/time or num type
--returns null if the provided string 

select try_parse ('99' as int) result
select try_parse ('abc' as int) result -- doesnt throw error... returns null
--meaningful message 
SELECT
CASE WHEN TRY_PARSE('ABC' AS INT) IS NULL
           THEN 'Conversion Failed'
           ELSE 'Conversion Successful'
END AS Result

select iif(try_parse('abc' as int) is null, 'Con failed', 'con success') as result
-- parse/convert function does the same thing except that it throws error while try_parse doesnt give out errors
--try convert can be used to convert general types of data whereas try_parse can only handle data into datetime or num types
--Converting a string to XML data type using TRY_PARSE
SELECT TRY_PARSE('<root><child/></root>' AS XML) AS [XML]
SELECT TRY_CONVERT(XML, '<root><child/></root>') AS [XML] --------------------- only this works



-- datefromparts function... returns date type from provided day month year
select datefromparts(2016,01,11) [date]
select DATETIME2FROMPARTS(2016,01,11,20,55,55,1,7) [datetime2] --fractions and precision 1,7           7>nano ..1sec = 1nanosec ...... if 5,3      3>>milli     5sec so 5millisec
-- max value of precision is 7            for 5,3            5/(10^3)

select timefromparts(20,55,55,5,3) as [timefromparts]        -- returns 20:55:55.005


-- smalldate time : jan 1 1900 to june 6 2079
-- datetime : jan 1 1753 to dec 31 9999
--datetime2: jan 1 0001 to dc 31 9999
--only reason to choose datetime over datetime2 is backward compatability ... size is the same
declare @temptable TABLE
(
	datetime2precision0 datetime2(0),
	datetime2precision1 datetime2(1),
	datetime2precision2 datetime2(2),
	datetime2precision3 datetime2(3),
	datetime2precision4 datetime2(4),
	datetime2precision5 datetime2(5),
	datetime2precision6 datetime2(6),
	datetime2precision7 datetime2(7)
	)			
insert into @temptable VALUES
(
	'2015-10-20 15:09:12.1234567',
	'2015-10-20 15:09:12.1234567',
	'2015-10-20 15:09:12.1234567',
	'2015-10-20 15:09:12.1234567',
	'2015-10-20 15:09:12.1234567',
	'2015-10-20 15:09:12.1234567',
	'2015-10-20 15:09:12.1234567',
	'2015-10-20 15:09:12.1234567'
)

DECLARE @COUNTER INT, @datetime2precision nvarchar(50)

SELECT @COUNTER =0, @datetime2precision ='datetime2precision'

WHILE @COUNTER <8
	BEGIN
		set @datetime2precision = (@datetime2precision + (CONVERT(NVARCHAR(10), @counter)))
		--WITH PRECISION = counter
		
	
		SELECT @COUNTER AS 'PRECISION',
				@datetime2precision AS [DATETIME],
				DATALENGTH(@datetime2precision)-32 AS [STORAGESIZE]
		FROM @TEMPTABLE
		set @datetime2precision = 'datetime2precision'
		set @counter+=1
	END


-- fetch : to fetch rows from a table .. with an offset
select * from tblPerson
order by id
offset 3 ROWS
FETCH next 10 rows ONLY

-- paging 
CREATE PROCEDURE spGetRowsByPageNumberAndSize
@PageNumber INT,
@PageSize INT
AS
BEGIN
    SELECT * FROM tblproducts
    ORDER BY Id
    OFFSET (@PageNumber - 1) * @PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY
END

execute spGetRowsByPageNumberAndSize 2, 10  -- >>>>>>>>>>>>> page 2 with 10 rows


-- dependencies: gui 
--OR
--sys.dm_sql_referenced_entities
SELECT * from sys.dm_sql_referenced_entities('dbo.tblperson','object')  --entities it refers to
SELECT * from sys.dm_sql_referencing_entities('dbo.tblperson','object') -- entities that refer to tblperson table

--shcema bound vs non schema bound....... sbound locks the ability to delete if it is referenced somewhere else


-- sp_depends
exec sys.sp_depends 'dbo.tblperson'
exec sys.sp_depends 'tr_TBLPERSON_FORINSERT'


--sequence object
--creating a seq obj
CREATE SEQUENCE [dbo].[SequenceObject] 
AS INT
START WITH 1
INCREMENT BY 1

-- selecting next value from the seq obj
SELECT NEXT VALUE FOR [dbo].[SequenceObject]

--Alter the Sequence object to reset the sequence value : 
ALTER SEQUENCE [SequenceObject] RESTART WITH 8

--Select the next sequence value to make sure the value starts from 1
SELECT NEXT VALUE FOR [dbo].[SequenceObject]

-- inserting incremental values in the table
select * from Employees

insert into employees VALUES
	(next VALUE FOR [DBO].[SEQUENCEOBJECT], 'BEN', 'MALE')

INSERT INTO Employees VALUES
	(next VALUE FOR [DBO].[SEQUENCEOBJECT], 'SARA', 'FEMALE')
delete from Employees WHERE id in(8,9,10,11)
SET NOCOUNT OFF
insert into Employees values (11, 'subhramanyam', 'male')


--CREATING A DECREMENTAL SEQ OBJ
CREATE SEQUENCE [DBO].[DECSEQOBJ]
AS INT
START WITH 100
INCREMENT BY -1
MINVALUE 5
MAXVALUE 100

SELECT NEXT VALUE FOR [DBO].[DECSEQOBJ]

DROP SEQUENCE [DBO].[SEQUENCEOBJECT]
DROP SEQUENCE [DBO].[DECSEQOBJ]


-- SEQUENCE VS IDENTITY 





--version
select @@version


--number of logins or attempted since sql server was started
SELECT GETDATE() AS 'Today''s Date and Time', 
@@CONNECTIONS AS 'Login Attempts'

--configure settings: global configuration settings for the current server.
sp_configure

--The maximum number of simultaneous connections that can be made with SQL Server in this computer environment. 
--The user can configure SQL Server for any number of connections less than or equal to the value of @@max_connections with sp_configure ''number of user connections''.  
select @@max_connections as [Max Connections]


--amt of time in ticks that CPU has spent doing SQL server work since last time SQL server was started
SELECT @@TIMETICKS
select @@cpu_busy
SELECT @@CPU_BUSY * CAST(@@TIMETICKS AS FLOAT) AS 'CPU microseconds', 
		GETDATE() AS 'As of' 


--USED TO CHECK THE ERROR STATUS OF THE RECENTLY EXE STATEMENT ............ 0 IF SUCCESS 1 FOR FAILURE
SELECT @@error
IF @@error<>0
	PRINT 'SOMETHING WENT HORRIBLY WOOOOOONG';

-- RETURNS LAST VALUE INSERTED INTO AN IDENTITY COLUMN BY AN INSERT OR SELECT INTO STATEMENT
-- RETURNS LAST VALUE EVEN IF THE INSERT FAILS TO COMMIT
SELECT * FROM TBLPERSON
INSERT INTO TBLPERSON VALUES ('BISTA', 1, 

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME ='TBLPERSON'
