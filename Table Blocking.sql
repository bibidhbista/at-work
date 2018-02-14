 SELECT 
     SessionID = s.Session_id,
     resource_type,   
     DatabaseName = DB_NAME(resource_database_id),
     request_mode,
     request_type,
     login_time,
     host_name,
     program_name,
     client_interface_name,
     login_name,
     nt_domain,
     nt_user_name,
     s.status,
     last_request_start_time,
     last_request_end_time,
     s.logical_reads,
     s.reads,
     request_status,
     request_owner_type,
     objectid,
     dbid,
     a.number,
     a.encrypted ,
     a.blocking_session_id,
     a.text       
 FROM   
     sys.dm_tran_locks l
     JOIN sys.dm_exec_sessions s ON l.request_session_id = s.session_id
     LEFT JOIN   
     (
         SELECT  *
         FROM    sys.dm_exec_requests r
         CROSS APPLY sys.dm_exec_sql_text(sql_handle)
     ) a ON s.session_id = a.session_id
 WHERE  
     s.session_id > 50


--  verifying if a lock is applied on a table or not

SELECT resource_type, resource_associated_entity_id,
    request_status, request_mode,request_session_id,
    resource_description, o.object_id, o.name, o.type_desc 
FROM sys.dm_tran_locks l, sys.objects o
WHERE l.resource_associated_entity_id = o.object_id
    and resource_database_id = DB_ID()

-- Specific table
SELECT 
 * 
from 
 sys.dm_tran_locks 
where 
  resource_associated_entity_id = object_id('dbo.UserMaster')




--  finding both login name of the user and the query being run

SELECT
 DB_NAME(resource_database_id)
 , s.original_login_name
 , s.status
 , s.program_name
 , s.host_name
 , (select text from sys.dm_exec_sql_text(exrequests.sql_handle))
 ,*
from
  sys.dm_tran_locks dbl
     JOIN sys.dm_exec_sessions s ON dbl.request_session_id = s.session_id
  INNER JOIN  sys.dm_exec_requests exrequests on dbl.request_session_id = exrequests.session_id
where
 DB_NAME(dbl.resource_database_id) = 'tsoxxl'
 
 UPDATE usermaster set deleted = 'Y' where username not in ('Administrator','TAdministrator','ZAdministrator','NOT FOUND','NOT APPLICABLE') and domainid = 1 


 sp_who2