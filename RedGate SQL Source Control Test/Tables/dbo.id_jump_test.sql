CREATE TABLE [dbo].[id_jump_test]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[what] [nvarchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[up] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
