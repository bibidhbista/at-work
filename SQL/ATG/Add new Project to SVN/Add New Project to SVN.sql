--select * from Projects 
--select * from Leads WHERE dbo.Leads.UserName	LIKE '%chris%'-- 12 ChrisH 4 Mike
--select * from Customers
--select * from ProjectLeads 
BEGIN tran
DECLARE @ProjectName varchar(50) ,@ServerID int, @ProjectID int ,@DevDB varchar(50) ,@ChangeScriptPath varchar(100) ,@LastRolloutDt datetime ,@LastReleaseNo varchar(15) ,@EnforceEncryption smallint ,@RolloutUpdatePath varchar(100) ,@Status smallint ,@CustomerId int ,@BcpCommandFile smallint ,@Subversion smallint 

SELECT	
@ProjectName				= 'MIDOC_Medical',															-- varchar
@ServerID					= 17  ,															--int
@DevDB						= 'MIDOC_Medical_Dev',															--varchar(50) 
@ChangeScriptPath			= 'F:\DBA\RolloutScripts\Michigan\MIDOC_Medical\' ,		-- varchar(100) 
@EnforceEncryption			=  1 ,															-- smallint 
@RolloutUpdatePath			= 'F:\DBA\RolloutScripts\Michigan\MIDOC_Medical\Database\Rollout\Update',-- varchar(100) 
@Status						= 1,															-- smallint 
@CustomerId					= 15,															-- int  --100 for ATG_YIT
@BcpCommandFile				= 0 ,															-- smallint 
@Subversion					= 1																-- smallint 


INSERT	dbo.Projects
(
    --ProjectID - this column value is auto-generated
    ProjectName,
    ServerID,
    DevDB,
    ChangeScriptPath,
    LastRolloutDt,
    LastReleaseNo,
    EnforceEncryption,
    RolloutUpdatePath,
    Status,
    CustomerId,
    BcpCommandFile,
    Subversion
)
VALUES
(
    -- ProjectID - int
    @ProjectName	, -- ProjectName - varchar
    @ServerID, -- ServerID - int
    @DevDB, -- DevDB - varchar
    @ChangeScriptPath, -- ChangeScriptPath - varchar
    NULL, -- LastRolloutDt - datetime
    NULL, -- LastReleaseNo - varchar
    @EnforceEncryption, -- EnforceEncryption - smallint
    @RolloutUpdatePath	, -- RolloutUpdatePath - varchar
    @Status, -- Status - smallint
    @CustomerId, -- CustomerId - int -- from dbo.Customers
    @BcpCommandFile, -- BcpCommandFile - smallint
    @Subversion	 -- Subversion - smallint
)	


SELECT @ProjectId = (SELECT ProjectId FROM Projects WHERE dbo.Projects.ProjectName = @ProjectName)
--commit


-- Insert with the newly inserted ProjectID
INSERT dbo.ProjectLeads(ProjectID, LeadID) VALUES(192, 4) -- 4 mikeL
--INSERT dbo.ProjectLeads(ProjectID, LeadID) VALUES(192, 4)


--verify
Select * from dbo.ProjectLeads pl WHERE --pl.LeadID IN (4,12) AND 
pl.ProjectID	=192
Select * from projects WHERE dbo.projects.ProjectID =192