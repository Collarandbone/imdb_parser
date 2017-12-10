USE [imdb_parse]
GO

/****** Object:  Table [dbo].[Film]    Script Date: 10.12.2017 15:00:27 ******/
DROP TABLE [dbo].[Film]
GO

/****** Object:  Table [dbo].[Film]    Script Date: 10.12.2017 15:00:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Film](
	[RecId] [int] IDENTITY(1,1) NOT NULL,
	[FilmId] [nvarchar](32) NOT NULL,
	[Title] [nvarchar](64) NULL,
	[OriginTitle] [nvarchar](64) NULL,
	[Year] [varchar](4) NULL,
	[RatingMPAA] [varchar](8) NULL,
	[Duration] [int] NULL,
 CONSTRAINT [PK_Film] PRIMARY KEY CLUSTERED 
(
	[FilmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


