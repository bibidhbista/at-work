--=======================================================================
--From SECONDARY to assume primary role, issue failover command
--Check that failover is ready
	select ag_name, database_name, is_failover_ready 
	from sys.dm_hadr_database_replica_cluster_states a
		inner join sys.dm_hadr_availability_replica_states b on
			a.replica_id =  b.replica_id
		inner join sys.dm_hadr_name_id_map c on 
			b.group_id = c.ag_id
	where role_desc = 'SECONDARY' and ag_name = 'OBS_AG';
	
	
--If Primary is available or a planned failover
	ALTER AVAILABILITY GROUP OBS_AG FAILOVER;
--LAST RESORT, Primary not available
	--ALTER AVAILABILITY GROUP OBS_AG FORCE_FAILOVER_ALLOW_DATA_LOSS;
--=======================================================================


