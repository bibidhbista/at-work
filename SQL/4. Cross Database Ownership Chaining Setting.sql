-- This value should be 0 or turned off for all DBs except master, msdb, tempdb unless absolutely necessary. 
-- This setting allows ownership chainging but across databases. (SECURITY RISK)
-- For individual database
SELECT [name], value  
FROM [sys].configurations 
WHERE [name] = 'cross db ownership chaining';
 

 --ALTER DATABASE { [database_name] | CURRENT } SET DB_CHAINING ON;


-- for all the databases on the entire server 
SELECT [name] AS [Database], [is_db_chaining_on] 
FROM [sys].databases 
ORDER BY [name];


--EXEC sp_configure 'cross db ownership chaining', 1;
 -- RECONFIGURE;
