USE [KeefeBulkOrdering_Dev]
GO

/****** Object:  Table [dbo].[Greeshma_dmTrainingRegions]    Script Date: 6/18/2018 2:12:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Greeshma_dmTrainingRegions](
	[TrainingRegionId] [int] NOT NULL,
	[TrainingRegionId_H] [int] NOT NULL,
	[RegionNm] [varchar](50) NOT NULL,
	[Status] [smallint] NOT NULL,
	[EnteredBy] [varchar](110) NOT NULL,
	[EnteredDt] [datetimeoffset](4) NOT NULL,
 CONSTRAINT [PK_Greeshma_TrainingRegionID] PRIMARY KEY CLUSTERED 
(
	[TrainingRegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO




USE [KeefeBulkOrdering_Dev]
GO

/****** Object:  Table [dbo].[Greeshma_TrainingCompanies_H]    Script Date: 6/18/2018 2:13:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Greeshma_TrainingCompanies_H](
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
 CONSTRAINT [PK_Greeshma_TrainingCompanies_H] PRIMARY KEY CLUSTERED 
(
	[TrainingCompanyId_H] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO






USE [KeefeBulkOrdering_Dev]
GO

/****** Object:  Table [dbo].[Greeshma_TrainingCompanies]    Script Date: 6/18/2018 2:13:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Greeshma_TrainingCompanies](
	[TrainingCompanyId] [int] NOT NULL,
	[TrainingCompanyId_H] [int] NOT NULL,
	[TrainingRegionId] [int] NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[State] [varchar](2) NOT NULL,
	[ZipCode] [int] NULL,
	[ContactNm] [varchar](100) NOT NULL,
	[Status] [smallint] NOT NULL,
	[EnteredBy] [varchar](110) NOT NULL,
	[EnteredDt] [datetimeoffset](4) NOT NULL,
 CONSTRAINT [PK_Greeshma_TrainingCompanies] PRIMARY KEY CLUSTERED 
(
	[TrainingCompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Greeshma_TrainingCompanies]  WITH CHECK ADD  CONSTRAINT [FK_Greeshma_TrainingCompanies_Greeshma_dmTrainingRegions] FOREIGN KEY([TrainingRegionId])
REFERENCES [dbo].[Greeshma_dmTrainingRegions] ([TrainingRegionId])
GO

ALTER TABLE [dbo].[Greeshma_TrainingCompanies] CHECK CONSTRAINT [FK_Greeshma_TrainingCompanies_Greeshma_dmTrainingRegions]
GO


-- Update ADM Counters
USE [KeefeBulkOrdering_Dev]
insert into admCounters values ('Greeshma_dmTrainingRegions',50000);
insert into admCounters values ('Greeshma_dmTrainingRegions_H',50000);
insert into admCounters values ('Greeshma_TraningCompanies',50000);
insert into admCounters values ('Greeshma_TraningCompanies_H',50000);




-- Grant Permissions to the newly created objects to the devteam
EXEC Admin_GrantAllPermissions 'DevTeam'