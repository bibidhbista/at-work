AG-Cumulative Updates/Patching


1. Find what the primary and secondary nodes are:

get-clustergroup

2. Patch secondary nodes (in this case it was: MIDOCSQ3LAS, MIDOCSQ1GRR)

\\midocts1grr\util$\SQL2017\CU11\SQLServer2017-KB4462262-x64

3. Manual Failover (run on whichever node you want to make PRIMARY)

-- To check if the node is failover ready 
select ag_name, database_name, is_failover_ready 
	from sys.dm_hadr_database_replica_cluster_states a
		inner join sys.dm_hadr_availability_replica_states b on
			a.replica_id =  b.replica_id
		inner join sys.dm_hadr_name_id_map c on 
			b.group_id = c.ag_id
	where role_desc = 'SECONDARY' and ag_name = 'MIDOC_AG';
	
--If Primary is available or a planned failover
	ALTER AVAILABILITY GROUP MIDOC_AG FAILOVER;

4. Move the Cluster resources to the current Primary node (from RDP session in the new PRIMARY Node after the failover)
	1. 

4. Patch the, now secondary, node (MIDOCSQ2GRR) with that CU.

