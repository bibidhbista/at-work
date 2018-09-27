Declare @schemaName nvarchar (20)= 'ATG\%';
set nocount on

-- Generate Drop Procedure Statements
SELECT 'DROP PROCEDURE [' + S.NAME + '].[' + O.NAME + '];' as [--Drop Procedure]
FROM SYS.OBJECTS O 
INNER JOIN SYS.SCHEMAS S ON S.SCHEMA_ID = O.SCHEMA_ID
WHERE  --S.NAME LIKE @schemaName AND 
O.TYPE = 'P' AND S.NAME != 'SYS' ORDER BY S.NAME

-- Generate Drop View Statements
SELECT 'DROP VIEW [' + S.NAME + '].[' + O.NAME + '];' as [--Drop View]
FROM SYS.OBJECTS O 
INNER JOIN SYS.SCHEMAS S ON S.SCHEMA_ID = O.SCHEMA_ID
WHERE  --S.NAME LIKE @schemaName AND
 O.TYPE = 'V' AND S.NAME != 'SYS' ORDER BY S.NAME


 -- Generate Drop Table Statements
SELECT 'DROP TABLE [' + S.NAME + '].[' + O.NAME + '];' as [--Drop Table]
FROM SYS.OBJECTS O 
INNER JOIN SYS.SCHEMAS S ON S.SCHEMA_ID = O.SCHEMA_ID
WHERE  --S.NAME LIKE @schemaName AND 
O.TYPE = 'U' AND S.NAME != 'SYS' ORDER BY S.NAME


-- Generate Drop Schema Statements
SELECT 'DROP SCHEMA [' + S.NAME + '];' as [--Drop Schema]
FROM SYS.SCHEMAS S WHERE S.NAME LIKE @schemaName


-- Generate Drop User Statements
SELECT 'DROP USER [' + S.NAME + '];' as [--Drop User]
 FROM SYS.SYSUSERS S WHERE S.NAME LIKE @schemaName

