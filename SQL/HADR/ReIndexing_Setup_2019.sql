-- Create Necessary TABLES to support Re-Indexing -- 

-- This table helps to track the total number of times ReIndexing has Occurred -- 
/****** Object:  Table [dbo].[_IndexStatCycleRunJob]    Script Date: 6/13/2019 3:49:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[_IndexStatCycleRunJob](
                [CycleRun] [int] NULL
) ON [PRIMARY]

GO

-- insert the starting value for this new table -- 
Insert INTO _IndexStatCycleRunJob Values (1)

GO


-- Table tracks all Table related data to help determine is Re-Indexing should occur -- 
/****** Object:  Table [dbo].[_IndexStats_PSUThreshold]    Script Date: 6/13/2019 3:49:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[_IndexStats_PSUThreshold](
                [RunDate] [datetime] NOT NULL,
                [SchemaName] [sysname] NOT NULL,
                [TableName] [nvarchar](128) NULL,
                [IndexName] [sysname] NULL,
                [Index_type_desc] [nvarchar](60) NULL,
                [avg_fragmentation_in_percent] [float] NULL,
                [avg_page_space_used_in_percent] [float] NULL,
                [page_count] [bigint] NULL,
                [index_level] [tinyint] NULL,
                [CycleRun] [int] NULL
) ON [PRIMARY]

GO


-- History Table of table objects that are Reindexed -- 
/****** Object:  Table [dbo].[_IndexStatsTableNameHistory]    Script Date: 6/13/2019 3:55:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[_IndexStatsTableNameHistory](
                [TableNm] [varchar](50) NOT NULL,
                [IndexNm] [varchar](200) NOT NULL,
                [StartDt] [datetime] NOT NULL,
                [EndDt] [datetime] NULL,
                [CycleRun] [int] NULL,
CONSTRAINT [PK__IndexStatsTableNameHistory] PRIMARY KEY CLUSTERED 
(
                [TableNm] ASC,
                [IndexNm] ASC,
                [StartDt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/* If there is already a table called _IndexStatsTableNameHistory, may have to add one additional column */
ALTER TABLE [_IndexStatsTableNameHistory]
  ADD [CycleRun] [int] NULL

-- select * from [_IndexStatsTableNameHistory]


-- Stored Procedures for new Re-Indexing -- 


/****** Object:  StoredProcedure [dbo].[Admin_ReIndexSnapShot_PSU]    Script Date: 6/13/2019 3:47:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Admin_ReIndexSnapShot_PSU]        
        
AS        
  
Declare @CycleRun int   
      
SET NOCOUNT ON;        
  
-- Perform cleanup --       
Delete from _IndexStats_PSUThreshold where RunDate < DATEADD(day,-180,GetDate())        
  
-- Update the statistics on the database  
Exec sp_updatestats  
  
-- Grab Value from _IndexStatCycleRunJob --  
Select @CycleRun = CycleRun from _IndexStatCycleRunJob  
-- Update the CycleRun Value for Next Time
Update _IndexStatCycleRunJob Set CycleRun = CycleRun + 1
      
Insert INTO _IndexStats_PSUThreshold        
SELECT         
 GetDate() as RunDate,        
 SS.name as [SchemaName] ,        
 object_name(IPS.object_id) AS [TableName],         
 SI.name AS [IndexName],         
 IPS.Index_type_desc,         
 IPS.avg_fragmentation_in_percent,         
 IPS.avg_page_space_used_in_percent,         
 IPS.page_count,        
 index_level,  
 @CycleRun as CycleRun     
FROM sys.dm_db_index_physical_stats(db_id(), NULL, NULL, NULL , 'SAMPLED') IPS        
   JOIN sys.tables ST WITH (nolock) ON IPS.object_id = ST.object_id        
   JOIN sys.indexes SI WITH (nolock) ON IPS.object_id = SI.object_id AND IPS.index_id = SI.index_id        
   join sys.schemas SS with (nolock) on ST.schema_id = ss.schema_id        
WHERE ST.is_ms_shipped = 0   
and object_name(IPS.object_id) not in ('IncMsgActions','OutMsgActions') -- Don't need these tables.  ReIndexing performed separately! (* Partitioned Tables *)        
and object_name(IPS.object_id) not like '[_]%' and alloc_unit_type_desc <> 'LOB_DATA'   
and index_type_desc in ('NONCLUSTERED INDEX','CLUSTERED INDEX') and index_level=0        
ORDER BY avg_fragmentation_in_percent desc        


GO

GO

/****** Object:  StoredProcedure [dbo].[Admin_ReIndex_WhenNeeded_PSU]    Script Date: 6/13/2019 3:47:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Admin_ReIndex_WhenNeeded_PSU]                                
                                
AS                                
                                
declare @CurDt datetime                              
declare @StopDt datetime                                                              
declare @BeginDt datetime, @EndDt datetime              
Declare @DayofWeek varchar(25)                      
DECLARE @schemaname nvarchar(258);              
DECLARE @objectname nvarchar(258);              
DECLARE @indexname nvarchar(258);              
DECLARE @frag float;              
DECLARE @PageSpageUsed float;             
DECLARE @command varchar(8000);              
Declare @CycleRun int           
                    
-- Thresholds            
Declare @PageNoThreshold int = 10000                    
Declare @MaxMinutesToRun int = 60                                
Declare @PSUThreshold int = 70            
Declare @FillFactor int = 100            
            
                              
Set @CurDt = convert(datetime, convert(varchar(11), getdate()))                                
Set @StopDt = dateadd(n, @MaxMinutesToRun, getdate())              
Set @DayofWeek = DATENAME(dw,GetDate())                            
                             
-- Cleanup up _IndexStatsTableNameHistory             
Delete from _IndexStatsTableNameHistory where StartDt < DATEADD(day,-180,GetDate())                              
              
-- Grab the LAST MAX Value for Cycle Run from _IndexStatCycleRunJob --        
Select @CycleRun = MAX(CycleRun) from  _IndexStats_PSUThreshold       
        
DECLARE IdxRecs CURSOR FOR 
SELECT schemaname,tablename,indexname,avg_fragmentation_in_percent,avg_page_space_used_in_percent             
FROM _IndexStats_PSUThreshold               
 where CycleRun = @CycleRun          
and avg_page_space_used_in_percent < 70            
and page_count > 1000        
and TableName NOT IN ('cm_InmateMediaDeviceVerifications')    -- Exclusion LIST!!!!       
ORDER BY IndexName desc            
             
-- Open the cursor.              
OPEN IdxRecs;              
              
--Loop through the IdxRecs.              
FETCH NEXT              
FROM IdxRecs              
INTO @schemaname, @objectname, @indexname, @frag, @PageSpageUsed;              
              
WHILE @@FETCH_STATUS = 0  and @StopDt > getdate()               
              
BEGIN;              
              
set @fillfactor =     
 Case when @indexname like 'IX[_]%' or @indexname in ('PK_InmateUnitCredits','PK_cm_InmateSampleLog','PK_cm_InmateMediaSaveForLater') then 90 else 100 end               
    
Set @BeginDt = GETDATE() -- Timestamp Before Starting the ReIndex               
SELECT @command = 'ALTER INDEX ' + @indexname + ' ON ' + @schemaname + '.' + @objectname + ' REBUILD WITH (Fillfactor = ' + cast(@FillFactor as varchar(5)) + ');';              
EXEC (@command);              
-- PRINT @command;              
Set @EndDt = GETDATE() -- After the ReIndex                        
                
INSERT INTO _IndexStatsTableNameHistory  (TableNm, IndexNm, StartDt, EndDt, CycleRun) Values (@objectname, @indexname, @BeginDt, @EndDt, @CycleRun)                         
              
FETCH NEXT FROM IdxRecs INTO @schemaname, @objectname, @indexname, @frag, @PageSpageUsed;              
END;              
--Close and deallocate the cursor.              
CLOSE IdxRecs;              
DEALLOCATE IdxRecs;              
        
    
GO

GO
       

-- SQL Agent Jobs - FTS_ReorgCatalog (* New Process using Fragments as a measure *)

-- FTS_OTHER Database Script
declare @TempCountLockInc int, @MinCountLockInc int, @TempCountLockOut int, @MinCountLockOut int, @i int=1, @MaxFragments int = 20
declare @TempCountStaffInc int, @MinCountStaffInc int, @TempCountStaffOut int, @MinCountStaffOut int
declare @TempCountDraft int, @MinCountDraft int, @TempCountSIS int, @MinCountSIS int
declare @StatDt datetime = getdate()

select @MinCountLockInc = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('LockedIncomingMessages')
select @MinCountLockOut = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('LockedOutgoingMessages')
select @MinCountStaffInc = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('StaffIncomingMessages')
select @MinCountStaffOut = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('StaffOutgoingMessages')
select @MinCountDraft = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('DraftMessages')
select @MinCountSIS = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('SISOutgoingMessages')

while @i < 7
begin
                waitfor delay '00:00:20'
                select @TempCountLockInc = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('LockedIncomingMessages')
                IF @TempCountLockInc < @MinCountLockInc
                                SET @MinCountLockInc = @TempCountLockInc
                select @TempCountLockOut = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('LockedOutgoingMessages')
                IF @TempCountLockOut < @MinCountLockOut
                                SET @MinCountLockOut = @TempCountLockOut
                select @TempCountStaffInc = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('StaffIncomingMessages')
                IF @TempCountStaffInc < @MinCountStaffInc
                                SET @MinCountStaffInc = @TempCountStaffInc
                select @TempCountStaffOut = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('StaffOutgoingMessages')
                IF @TempCountStaffOut < @MinCountStaffOut
                                SET @MinCountStaffOut = @TempCountStaffOut
                select @TempCountDraft = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('DraftMessages')
                IF @TempCountDraft < @MinCountDraft
                                SET @MinCountDraft = @TempCountDraft
                select @TempCountSIS = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('SISOutgoingMessages')
                IF @TempCountSIS < @MinCountSIS
                                SET @MinCountSIS = @TempCountSIS
                set @i = @i+1
end

IF @MinCountStaffOut > @MaxFragments
BEGIN
                ALTER FULLTEXT CATALOG TLFT_CATALOG REORGANIZE
                INSERT INTO ATGADMIN.dbo.TLFT_Fragments VALUES (@StatDt, 'StaffOutgoingMessages', @MinCountStaffOut)
END
IF @MinCountStaffInc > @MaxFragments
BEGIN
                ALTER FULLTEXT CATALOG TLFT_CATALOG_2 REORGANIZE
                INSERT INTO ATGADMIN.dbo.TLFT_Fragments VALUES (@StatDt, 'StaffIncomingMessages', @MinCountStaffInc)
END
IF @MinCountDraft > @MaxFragments
BEGIN
                ALTER FULLTEXT CATALOG TLFT_CATALOG_3 REORGANIZE
                INSERT INTO ATGADMIN.dbo.TLFT_Fragments VALUES (@StatDt, 'DraftMessages', @MinCountDraft)
END
IF @MinCountLockInc > @MaxFragments
BEGIN
                ALTER FULLTEXT CATALOG TLFT_CATALOG_4 REORGANIZE
                INSERT INTO ATGADMIN.dbo.TLFT_Fragments VALUES (@StatDt, 'LockedIncomingMessages', @MinCountLockInc)
END
IF @MinCountLockOut > @MaxFragments
BEGIN
                ALTER FULLTEXT CATALOG TLFT_CATALOG_5 REORGANIZE
                INSERT INTO ATGADMIN.dbo.TLFT_Fragments VALUES (@StatDt, 'LockedOutgoingMessages', @MinCountLockOut)
END
IF @MinCountSIS > @MaxFragments
BEGIN
                ALTER FULLTEXT CATALOG TLFT_CATALOG_6 REORGANIZE
                INSERT INTO ATGADMIN.dbo.TLFT_Fragments VALUES (@StatDt, 'SISOutgoingMessages', @MinCountSIS)
END

GO


-- CURRENT_MONTH Script

declare @TempCountInc int, @MinCountInc int, @TempCountOut int, @MinCountOut int, @i int=1, @MaxFragments int = 20
declare @StatDt datetime = getdate()

select @MinCountInc = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('IncomingMessages')
select @MinCountOut = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('OutgoingMessages')

while @i < 7
begin
                waitfor delay '00:00:20'
                select @TempCountInc = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('IncomingMessages')
                IF @TempCountInc < @MinCountInc
                                SET @MinCountInc = @TempCountInc
                select @TempCountOut = count(*) from sys.fulltext_index_fragments where status in (4,6) and table_id = OBJECT_ID('OutgoingMessages')
                IF @TempCountOut < @MinCountOut
                                SET @MinCountOut = @TempCountOut
                set @i = @i+1
end

IF @MinCountInc > @MaxFragments
BEGIN
                ALTER FULLTEXT CATALOG TLFT_CATALOG REORGANIZE
                INSERT INTO ATGADMIN.dbo.TLFT_Fragments VALUES (@StatDt, 'IncomingMessages', @MinCountInc)
END
IF @MinCountOut > @MaxFragments
BEGIN
                ALTER FULLTEXT CATALOG TLFT_CATALOG_2 REORGANIZE
                INSERT INTO ATGADMIN.dbo.TLFT_Fragments VALUES (@StatDt, 'OutgoingMessages', @MinCountOut)
END


-- REINDEX Draft Messages

DECLARE @Frag int, @MaxFrag int=18

select @Frag = convert(int,avg_fragmentation_in_percent)
from sys.dm_db_index_physical_stats(db_id(),object_id('DraftMessages'),-1,0,NULL)
where alloc_unit_type_desc = 'IN_ROW_DATA'

IF @Frag >= @MaxFrag
BEGIN
                ALTER INDEX ALL ON DraftMessages REBUILD
END

GO

GO



