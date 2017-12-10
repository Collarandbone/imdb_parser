USE [imdb_parse]
GO

ALTER TABLE [dbo].[FilmAttr] DROP CONSTRAINT [FK__FilmAttr__FilmRe__267ABA7A]
GO

/****** Object:  Table [dbo].[FilmAttr]    Script Date: 10.12.2017 15:00:58 ******/
DROP TABLE [dbo].[FilmAttr]
GO

/****** Object:  Table [dbo].[FilmAttr]    Script Date: 10.12.2017 15:00:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FilmAttr](
	[RecId] [int] IDENTITY(1,1) NOT NULL,
	[FilmRecId] [int] NOT NULL,
	[AttrType] [nvarchar](8) NOT NULL,
	[AttrName] [nvarchar](64) NULL,
	[UpdateDt] [datetime] NULL,
UNIQUE NONCLUSTERED 
(
	[RecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FilmAttr]  WITH CHECK ADD FOREIGN KEY([FilmRecId])
REFERENCES [dbo].[Film] ([RecId])
GO


