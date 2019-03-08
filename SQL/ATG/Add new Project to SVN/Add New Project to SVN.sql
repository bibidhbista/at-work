--select * from Projects 
--select * from Leads WHERE dbo.Leads.UserName	LIKE '%chris%'-- 12 ChrisH 4 Mike
--select * from Customers
--select * from ProjectLeads 

DECLARE @ProjectName varchar(50) ,@ServerID int, @ProjectID int ,@DevDB varchar(50) ,@ChangeScriptPath varchar(100) ,@LastRolloutDt datetime ,@LastReleaseNo varchar(15) ,@EnforceEncryption smallint ,@RolloutUpdatePath varchar(100) ,@Status smallint ,@CustomerId int ,@BcpCommandFile smallint ,@Subversion smallint 

SELECT	
@ProjectName				= 'MIDOC_Ticketing',															-- varchar
@ServerID					= 17  ,															--int
@DevDB						= '',															--varchar(50) 
@ChangeScriptPath			= 'F:\DBA\RolloutScripts\ATG_YIT\ATG_MediaSubscription' ,		-- varchar(100) 
@EnforceEncryption			=  0 ,															-- smallint 
@RolloutUpdatePath			= 'F:\DBA\RolloutScripts\ATG_YIT\ATG_MediaSubscription\Database\Rollout\Update',-- varchar(100) 
@Status						= 1,															-- smallint 
@CustomerId					= 100,															-- int  --100 for ATG_YIT
@BcpCommandFile				= 0 ,															-- smallint 
@Subversion					= 0																-- smallint 


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

-- Insert with the newly inserted ProjectID
INSERT dbo.ProjectLeads(ProjectID, LeadID) VALUES(@ProjectId, LEADID) 
INSERT dbo.ProjectLeads(ProjectID, LeadID) VALUES(@ProjectId, LEADID)


--verify
Select * from dbo.ProjectLeads pl WHERE pl.LeadID IN (4,12) AND pl.ProjectID	=191
Select * from projects WHERE dbo.projects.ProjectID =191