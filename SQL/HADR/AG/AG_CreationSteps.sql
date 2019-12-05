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
CREATE LOGIN [ATG\OBSSQLSERVICE] FROM WINDOWS;
GO
-- And Grant this login connect permissions on the endpoint:
GRANT CONNECT ON ENDPOINT::endpoint_mirroring 
   TO [ATG\OBSSQLSERVICE];
GO

--Primary databases are created/restored
--********************************************************************************
--PRESTAGE THE LISTENER NAME IN DNS with Full Control to all computer accounts in the cluster
--********************************************************************************
--Creating the availability group
CREATE AVAILABILITY GROUP OBS_AG WITH (AUTOMATED_BACKUP_PREFERENCE = PRIMARY)
   FOR 
      DATABASE OBS_Tactical, OBS  
   REPLICA ON 
      'APP-OBS01-131' WITH 
         (
         ENDPOINT_URL = 'TCP://APP-OBS01-131.a-t-g.com:7022', 
         AVAILABILITY_MODE = SYNCHRONOUS_COMMIT,
         FAILOVER_MODE = AUTOMATIC,
		 SECONDARY_ROLE (ALLOW_CONNECTIONS = NO)
         ),
      'APP-OBS02-131' WITH 
         (
         ENDPOINT_URL = 'TCP://APP-OBS02-131.a-t-g.com:7022',
         AVAILABILITY_MODE = SYNCHRONOUS_COMMIT,
         FAILOVER_MODE = AUTOMATIC,
		 SECONDARY_ROLE (ALLOW_CONNECTIONS = NO)
         )
	LISTENER 'OBSSQL' (WITH IP (('172.31.1.251','255.255.0.0')), PORT = 1433); 
GO
ALTER AVAILABILITY GROUP OBS_AG ADD LISTENER 'TRSQLADM' (WITH IP (('172.31.1.251','255.255.0.0')), PORT = 1433); 
-- On each server instance that hosts a secondary replica, 
-- join the secondary replica to the availability group:
ALTER AVAILABILITY GROUP OBS_AG JOIN;
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
BACKUP LOG OBS 
TO DISK = N'C:\temp\tlogOBS.trn' 
    WITH NOFORMAT
GO
BACKUP LOG OBS_TACTICAL 
TO DISK = N'C:\temp\tlogOBS_TACTICAL.trn' 
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
ALTER DATABASE ATGDBMON SET HADR AVAILABILITY GROUP = OBS_AG;
GO




--Adding a database to existing AG
-- Connect to the server instance that hosts the primary replica.
-- Add an existing database to the availability group.
ALTER AVAILABILITY GROUP OBS_AG ADD DATABASE TEST;
GO
--folow steps to add to secondary from above
BACKUP DATABASE AMADMIN
TO DISK = N'C:\temp\bkupAMADMIN.bak' 
    WITH NOFORMAT
GO
BACKUP LOG AMADMIN 
TO DISK = N'C:\temp\tlogAMADMIN.trn' 
    WITH NOFORMAT
GO

