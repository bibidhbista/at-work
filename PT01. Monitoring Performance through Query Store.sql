--Enabling the Query Store
alter database deepdive set query_store=ON;

-- plan store
-- runtime stats store
-- wait stats store
-- information from query store
SELECT Txt.query_text_id, Txt.query_sql_text, Pl.plan_id, Qry.*  
FROM sys.query_store_plan AS Pl  
INNER JOIN sys.query_store_query AS Qry  
    ON Pl.query_id = Qry.query_id  
INNER JOIN sys.query_store_query_text AS Txt  
    ON Qry.query_text_id = Txt.query_text_id ;



-- Go to query store folder in the database to monitor performance

