

CREATE PROCEDURE Admin_AGStatus  

  

AS  

  

select b.ag_name, primary_replica, primary_recovery_health_desc, synchronization_health_desc   

 from sys.dm_hadr_availability_group_states a  

 inner join sys.dm_hadr_name_id_map b on   

  a.group_id = b.ag_id  

order by ag_name  



