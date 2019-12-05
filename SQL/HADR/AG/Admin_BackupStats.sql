
ALTER PROCEDURE [dbo].[Admin_BackupStats]

AS

DECLARE @PrimaryReplica smallint, @ReadableSecondary smallint

select 
	@PrimaryReplica = CASE WHEN primary_replica=@@SERVERNAME THEN 1 ELSE 0 END,
	@ReadableSecondary = CASE WHEN secondary_role_allow_connections <> 0 THEN 1 ELSE 0 END
from master.sys.availability_replicas a 
inner join master.sys.dm_hadr_availability_group_states b on
	a.group_id = b.group_id
where replica_server_name = @@SERVERNAME

IF @PrimaryReplica=1 
BEGIN

	select
		ISNULL(z.ServerNm,@@SERVERNAME) as ServerNm,
		y.name as DatabaseNm,
		ISNULL(z.BackupType,y.Type) as BackupType,
		z.StartDt,
		z.ElapsedSeconds,
		z.BackupSize,
		ISNULL(z.FileNm,'<font color=red><b><i>*** missing file ***</i></b></font>') as FileNm,
		CASE WHEN z.DatabaseNm IS NULL THEN 0 ELSE 1 END as Status
	from
	(select name, type from
		(select name, 'DB' as type from master.dbo.sysdatabases where name not in ('tempdb','model','MIDOC_INTERFACE_H','MIDOC_DOCUMENTSTORE_BASEPHOTO','MIDOC_DOCUMENTSTORE_MEDW1','MIDOC_DOCUMENTSTORE_MIGRATION')
		 union
		 select name, 'LOG' as type from master.dbo.sysdatabases where name not in ('master','msdb','tempdb','model','MIDOC_INTERFACE_H','MIDOC_DOCUMENTSTORE_BASEPHOTO','MEDISPAN','MIDOC_DOCUMENTSTORE_MEDW1','MIDOC_DOCUMENTSTORE_MIGRATION')
		) k
	) y
	left join 
	(select 
		bs.server_name as ServerNm, 
		CASE bs.type WHEN 'D' THEN 'FULL' WHEN 'I' THEN 'DIFFERENTIAL' ELSE 'LOG' END as BackupType, 
		bs.database_name as DatabaseNm, 
		bs.backup_start_date as StartDt, 
		DATEDIFF(ss,bs.backup_start_date,bs.backup_finish_date) as ElapsedSeconds, 
		convert(decimal(10,0),bs.compressed_backup_size*1.0/1024) as BackupSize, 
		RIGHT(bmf.physical_device_name,charindex('\',REVERSE(bmf.physical_device_name),1)-1) as FileNm
		--,bf.backed_up_page_count as PageCount
		--,CASE WHEN bf.file_number=2 THEN 'LOG' ELSE bf.filegroup_name END as FilegroupNm
		--,bf.file_size,bf.logical_name,bf.physical_name
	from msdb.dbo.backupset bs
	inner join msdb.dbo.backupmediafamily bmf on
		bs.media_set_id = bmf.media_set_id
	--inner join msdb.dbo.backupfile bf on
	--	bs.backup_set_id = bf.backup_set_id
	--	and bf.state_desc<>'DROPPED'
	where backup_start_date > getdate()-1
	) z on
		y.name = z.DatabaseNm
		and y.type = CASE WHEN z.BackupType = 'LOG' THEN 'LOG' ELSE 'DB' END
	order by BackupType, DatabaseNm, StartDt

END
ELSE
BEGIN
	IF @ReadableSecondary=1
	BEGIN
	
		select
			ISNULL(z.ServerNm,@@SERVERNAME) as ServerNm,
			y.name as DatabaseNm,
			ISNULL(z.BackupType,y.Type) as BackupType,
			z.StartDt,
			z.ElapsedSeconds,
			z.BackupSize,
			ISNULL(z.FileNm,'<font color=red><b><i>*** missing file ***</i></b></font>') as FileNm,
			CASE WHEN z.DatabaseNm IS NULL THEN 0 ELSE 1 END as Status
		from
		(select name, type from
			(select name, 'DB' as type from master.dbo.sysdatabases where name not in ('tempdb','model','MIDOC_INTERFACE_H','MIDOC_DOCUMENTSTORE_BASEPHOTO')
			) k
		) y
		left join 
		(select 
			bs.server_name as ServerNm, 
			CASE bs.type WHEN 'D' THEN 'FULL' WHEN 'I' THEN 'DIFFERENTIAL' ELSE 'LOG' END as BackupType, 
			bs.database_name as DatabaseNm, 
			bs.backup_start_date as StartDt, 
			DATEDIFF(ss,bs.backup_start_date,bs.backup_finish_date) as ElapsedSeconds, 
			convert(decimal(10,0),bs.compressed_backup_size*1.0/1024) as BackupSize, 
			RIGHT(bmf.physical_device_name,charindex('\',REVERSE(bmf.physical_device_name),1)-1) as FileNm
			--,bf.backed_up_page_count as PageCount
			--,CASE WHEN bf.file_number=2 THEN 'LOG' ELSE bf.filegroup_name END as FilegroupNm
			--,bf.file_size,bf.logical_name,bf.physical_name
		from msdb.dbo.backupset bs
		inner join msdb.dbo.backupmediafamily bmf on
			bs.media_set_id = bmf.media_set_id
		--inner join msdb.dbo.backupfile bf on
		--	bs.backup_set_id = bf.backup_set_id
		--	and bf.state_desc<>'DROPPED'
		where backup_start_date > getdate()-1
		) z on
			y.name = z.DatabaseNm
			and y.type = CASE WHEN z.BackupType = 'LOG' THEN 'LOG' ELSE 'DB' END
		order by BackupType, DatabaseNm, StartDt
	
	END
	ELSE
	BEGIN
		select
			@@SERVERNAME as ServerNm,
			'NODB' as DatabaseNm,
			'' as BackupType,
			'' as StartDt,
			0 as ElapsedSeconds,
			0 as BackupSize,
			'' as FileNm,
			1 as Status	
	END
END

