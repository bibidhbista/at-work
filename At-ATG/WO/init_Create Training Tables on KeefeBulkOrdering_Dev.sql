-- Training Regions Table
BEGIN TRANSACTION
GO
CREATE TABLE NirojK_dmTrainingRegions  
	(
	TrainingRegionId int NOT NULL,
	TrainingRegionId_H int NOT NULL,
	RegionNm varchar(50) NOT NULL,
	Status smallint NOT NULL,
	EnteredBy varchar(110) NOT NULL,
	EnteredDt datetimeoffset(4) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE NirojK_dmTrainingRegions ADD CONSTRAINT
	PK_TrainingRegionID PRIMARY KEY CLUSTERED 
	(
	TrainingRegionId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
COMMIT


--Traning Companies ref Region Table
BEGIN TRANSACTION
GO
CREATE TABLE NirojK_TrainingCompanies
	(
	TrainingCompanyId int NOT NULL,
	[TrainingCompanyId_H] [int] NOT NULL,
	TrainingRegionId int NOT NULL,
	Address varchar(100) NOT NULL,
	State varchar(2) NOT NULL,
	ZipCode int NULL,
	ContactNm varchar(100) NOT NULL,
	Status smallint NOT NULL,
	EnteredBy varchar(110) NOT NULL,
	EnteredDt datetimeoffset(4) NOT NULL
	)
GO
ALTER TABLE NirojK_TrainingCompanies ADD CONSTRAINT
	PK_TrainingCompanyId PRIMARY KEY CLUSTERED 
	(
	TrainingCompanyId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

ALTER TABLE [dbo].NirojK_TrainingCompanies  WITH CHECK ADD  CONSTRAINT [FK_NirojK_TrainingCompanies_NirojK_dmTrainingRegions] FOREIGN KEY([TrainingRegionId])
REFERENCES [dbo].[NirojK_dmTrainingRegions] ([TrainingRegionId])
GO

ALTER TABLE [dbo].NirojK_TrainingCompanies CHECK CONSTRAINT [FK_NirojK_TrainingCompanies_NirojK_dmTrainingRegions]
GO


GO
COMMIT


-- Companies History Table
CREATE TABLE [dbo].[NirojK_TrainingCompanies_H](
	[TrainingCompanyId_H] [int] NOT NULL,
	[TrainingCompanyId] [int] NOT NULL,
	[TrainingRegionId] [int] NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[State] [varchar](2) NOT NULL,
	[ZipCode] [int] NULL,
	[ContactNm] [varchar](100) NOT NULL,
	[Status] [smallint] NOT NULL,
	[EnteredBy] [varchar](110) NOT NULL,
	[EnteredDt] [datetimeoffset](4) NOT NULL,
 CONSTRAINT [PK_NirojK_TrainingCompanies_H] PRIMARY KEY CLUSTERED 
(
	[TrainingCompanyId_H] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO



-- Insert into admCounters Table
insert into admCounters values ('NirojK_TrainingCompanies','50000')
insert into admCounters values ('NirojK_TrainingCompanies_H','50000')

insert into admCounters values ('NirojK_dmTrainingRegions','50000')
insert into admCounters values ('NirojK_dmTrainingRegions_H','50000')


-- Grant permissions through SP
USE [KeefeBulkOrdering_Dev]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[Admin_GrantAllPermissions]
		@User = N'devteam'

SELECT	'Return Value' = @return_value

GO
