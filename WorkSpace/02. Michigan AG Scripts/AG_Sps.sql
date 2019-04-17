sp_helptext Admin_AGStatus
sp_helptext Admin_AGStatusDetails

CREATE PROCEDURE Admin_AGStatus  
  
AS  
  
select b.ag_name, primary_replica, primary_recovery_health_desc, synchronization_health_desc   
 from sys.dm_hadr_availability_group_states a  
 inner join sys.dm_hadr_name_id_map b on   
  a.group_id = b.ag_id  
order by ag_name  

GO

  
  
CREATE PROCEDURE [dbo].[Admin_AGStatusDetails]   
  
AS  
  
select   
 b.ag_name,  
 c.replica_server_name,  
 db_name(database_id) as database_name,   
 d.connected_state_desc, /*a.synchronization_health_desc,*/   
 synchronization_state_desc,   
 a.redo_queue_size,  
 a.log_send_queue_size  
from sys.dm_hadr_database_replica_states a  
 inner join sys.dm_hadr_name_id_map b on   
  a.group_id = b.ag_id  
 inner join sys.dm_hadr_availability_replica_cluster_states c on   
  a.replica_id = c.replica_id  
 inner join sys.dm_hadr_availability_replica_states d on  
  a.replica_id = d.replica_id  
 --where a.is_primary_replica=0   
order by ag_name, database_name, replica_server_name   
  
GO

  
