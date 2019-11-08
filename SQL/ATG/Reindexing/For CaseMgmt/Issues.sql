--fixed
-- Phase1InterviewEventOffenders Phase1InterviewEventId
 -- H_dmBopExecutiveClemencyAppTypes AppType
 
 -- dmParoleBoardLocationFacilities
-- ParoleBoardLocationId


PK Violations:

1. [HelpFileSecurityEntities] -- 3col

--ALTER TABLE [HelpFileSecurityEntities] ADD CONSTRAINT [PK_HelpFileSecurityEntities] PRIMARY KEY CLUSTERED (HelpFileSecurityEntityId ASC)
--	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);
2. [aLsi_rWorkTable] -- 4 cols (no clear PK)
3. --4 cols (no clear primary key): is commented out in file
	[dmBopRevocationHearingNumbers]
4. OffenderPanBalance -- 2 cols
	
5. -- loc onlyALTER TABLE [DatabaseInfo] (unclear)

DROP CONSTRAINT [PK_DatabaseInfo];

ALTER TABLE [DatabaseInfo] ADD CONSTRAINT [PK_DatabaseInfo] PRIMARY KEY CLUSTERED (RowId ASC)
	WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100);/* IF EXISTS(SELECT NAME FROM SYS.INDEXES WHERE NAME = 'IX_DatabaseInfo_LocationCd') BEGIN  Drop INDEX [IX_DatabaseInfo_LocationCd] on [DatabaseInfo]; END */

CREATE NONCLUSTERED INDEX [IX_DatabaseInfo_LocationCd] ON [DatabaseInfo] (LocationCd ASC)
	
	
	
DONE - 

delete ones with just location cd (created by me) w _LocationCd if there already is another that includes loccd
	
	
	
3 cols
both
locationcd only
offcd only (none exist)
neither (none exist)

4 cols
both
locationcd only (none)
off (none)
neither(none)

2 cols
both 
locationcd only
off only
neither

FINAL CHECK
ADDED TO PROJECT