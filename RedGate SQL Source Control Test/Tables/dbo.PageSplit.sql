CREATE TABLE [dbo].[PageSplit]
(
[c1] [int] NULL,
[c2] [char] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [PageSplit_CL] ON [dbo].[PageSplit] ([c1]) ON [PRIMARY]
GO
