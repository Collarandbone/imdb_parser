USE [imdb_parse]
GO

/****** Object:  Table [dbo].[Person]    Script Date: 10.12.2017 15:01:41 ******/
DROP TABLE [dbo].[Person]
GO

/****** Object:  Table [dbo].[Person]    Script Date: 10.12.2017 15:01:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Person](
	[RecId] [int] IDENTITY(1,1) NOT NULL,
	[PersonId] [nvarchar](32) NOT NULL,
	[PersonName] [nvarchar](64) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[RecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


