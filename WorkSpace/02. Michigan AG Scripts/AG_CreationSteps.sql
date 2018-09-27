--********************************************************************************
-- Use SQL Configuration Manager to ensure AlwaysOn AvailabilityGroup 
-- feature is enabled on all participating instances
--********************************************************************************

--Create the mirroring endpoint on both primary and secondary servers
CREATE ENDPOINT endpoint_mirroring
    STATE = STARTED
    AS TCP ( LISTENER_PORT = 7022 )
    FOR DATABASE_MIRRORING (ROLE=ALL);
GO

select * from sys.endpoints

--If the service accounts of the server instances that are to host your availability replicas 
--run under the same domain account this step is unnecessary. 
--Skip it and go directly to the next step. 
USE master;
GO
CREATE LOGIN [MIDOC\SQLSvcProd$] FROM WINDOWS;
GO
-- And Grant this login connect permissions on the endpoint:
GRANT CONNECT ON ENDPOINT::endpoint_mirroring 
   TO [MIDOC\SQLSvcProd$];
GO

--Primary databases are created/restored

--********************************************************************************
--PRE-STAGE THE LISTENER NAME IN DNS with Full Control to all computer accounts in the cluster
--********************************************************************************
--Creating the availability group
CREATE AVAILABILITY GROUP MIDOC_AG WITH (CLUSTER_TYPE = WSFC)
   FOR 
      DATABASE ATGDBMON  --MIDOC_INTERFACE, MIDOC_CASEMGMT, MIDOC_FIDUCIARY, MIDOC_FOODSERVICE, MIDOC_MEDICAL, MIDOC_MIACCESS
   REPLICA ON 
      'MIDOCSQ1GRR' WITH 
         (
         ENDPOINT_URL = 'TCP://MIDOCSQ1GRR.MIDOC.LOCAL:7022', 
         AVAILABILITY_MODE = SYNCHRONOUS_COMMIT,
         FAILOVER_MODE = AUTOMATIC,
		 SECONDARY_ROLE (ALLOW_CONNECTIONS = NO)
         ),
      'MIDOCSQ2GRR' WITH 
         (
         ENDPOINT_URL = 'TCP://MIDOCSQ2GRR.MIDOC.LOCAL:7022',
         AVAILABILITY_MODE = SYNCHRONOUS_COMMIT,
         FAILOVER_MODE = AUTOMATIC,
		 SECONDARY_ROLE (ALLOW_CONNECTIONS = NO)
         ),
      'MIDOCSQ3LAS' WITH 
         (
         ENDPOINT_URL = 'TCP://MIDOCSQ3LAS.MIDOC.LOCAL:7022',
         AVAILABILITY_MODE = ASYNCHRONOUS_COMMIT,
         FAILOVER_MODE = MANUAL,
		 SECONDARY_ROLE (ALLOW_CONNECTIONS = ALL)
         )
	LISTENER 'MIDOCSQL' (WITH IP (('172.31.5.10','255.255.0.0'),('192.168.201.22','255.255.255.0')), PORT = 1433); 
GO

-- On each server instance that hosts a secondary replica, 
-- join the secondary replica to the availability group:
ALTER AVAILABILITY GROUP MIDOC_AG JOIN;
GO

-- On each server instance that hosts a secondary replica, 
-- Restore each database backup using the WITH NORECOVERY option:
RESTORE DATABASE ATGDBMON FROM DISK = 'C:\temp\bkupATGDbMon_Base.bak' WITH 
MOVE 'ATGDbMon_data' TO 'D:\MSSQL\MSSQL\Data\ATGDbMon_Data.mdf', 
MOVE 'ATGDbMon_log' TO 'C:\MSSQL\MSSQL\Data\ATGDbMon_Log.ldf', NORECOVERY

-- On the server instance that hosts the primary replica, 
-- Backup the transaction log on each primary database:
-- Note***(Typically, a log backup must be taken on each primary database and then restored 
--			on the corresponding secondary database (using WITH NORECOVERY). 
--			However, this log backup might be unnecessary if the database has just been created and no log backup has been taken yet 
--			or the recovery model has just been changed from SIMPLE to FULL.)
BACKUP LOG ATGDBMON 
TO DISK = N'C:\temp\tlogATBDBMON.trn' 
    WITH NOFORMAT
GO

-- Restore the transaction log on each secondary databases
-- using the WITH NORECOVERY option:
RESTORE LOG ATGDBMON 
    FROM DISK = N'C:\temp\tlogATBDBMON.trn' 
    WITH FILE=1, NORECOVERY
GO

-- On each server instance that hosts a secondary replica, 
-- join each secondary database to the availability group:
ALTER DATABASE ATGDBMON SET HADR AVAILABILITY GROUP = MIDOC_AG;
GO




--Adding a database to existing AG
-- Connect to the server instance that hosts the primary replica.
-- Add an existing database to the availability group.
ALTER AVAILABILITY GROUP MIDOC_AG ADD DATABASE TEST;
GO
--folow steps to add to secondary from above