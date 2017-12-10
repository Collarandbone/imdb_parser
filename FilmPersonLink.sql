USE [imdb_parse]
GO

ALTER TABLE [dbo].[FilmPersonLink] DROP CONSTRAINT [FK__FilmPerso__Perso__2D27B809]
GO

ALTER TABLE [dbo].[FilmPersonLink] DROP CONSTRAINT [FK__FilmPerso__FilmR__2C3393D0]
GO

/****** Object:  Table [dbo].[FilmPersonLink]    Script Date: 10.12.2017 15:01:25 ******/
DROP TABLE [dbo].[FilmPersonLink]
GO

/****** Object:  Table [dbo].[FilmPersonLink]    Script Date: 10.12.2017 15:01:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FilmPersonLink](
	[RecId] [int] IDENTITY(1,1) NOT NULL,
	[FilmRecId] [int] NOT NULL,
	[PersonRecId] [int] NOT NULL,
	[LinkType] [nvarchar](16) NOT NULL,
UNIQUE NONCLUSTERED 
(
	[RecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FilmPersonLink]  WITH CHECK ADD FOREIGN KEY([FilmRecId])
REFERENCES [dbo].[Film] ([RecId])
GO

ALTER TABLE [dbo].[FilmPersonLink]  WITH CHECK ADD FOREIGN KEY([PersonRecId])
REFERENCES [dbo].[Person] ([RecId])
GO


