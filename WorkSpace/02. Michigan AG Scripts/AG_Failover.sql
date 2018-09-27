
--ONLY FOR DR FAILOVER TO LAS
--=======================================================================
--From PRIMARY, change to synchronous mode
	ALTER AVAILABILITY GROUP MIDOC_AG MODIFY REPLICA ON 'MIDOCSQ3LAS'
		WITH (AVAILABILITY_MODE = SYNCHRONOUS_COMMIT);
--=======================================================================


--FAILOVER STEPS FOR HA in GRR and DR in LAS
--=======================================================================
--From SECONDARY to assume primary role, issue failover command
--Check that failover is ready
	select ag_name, database_name, is_failover_ready 
	from sys.dm_hadr_database_replica_cluster_states a
		inner join sys.dm_hadr_availability_replica_states b on
			a.replica_id =  b.replica_id
		inner join sys.dm_hadr_name_id_map c on 
			b.group_id = c.ag_id
	where role_desc = 'SECONDARY' and ag_name = 'MIDOC_AG';
--If Primary is available or a planned failover
	ALTER AVAILABILITY GROUP MIDOC_AG FAILOVER;
--LAST RESORT, Primary not available
	--ALTER AVAILABILITY GROUP MIDOC_AG FORCE_FAILOVER_ALLOW_DATA_LOSS;
--=======================================================================


--ONLY FOR DR FAILOVER TO LAS
--=======================================================================
--From PRIMARY, change to synchronous mode
	ALTER AVAILABILITY GROUP MIDOC_AG MODIFY REPLICA ON 'MIDOCSQ3LAS'
	   WITH (AVAILABILITY_MODE = ASYNCHRONOUS_COMMIT);

--Change applicable dmOptions (in conjunction with infrastructure changing applicable config file options)

--=======================================================================
