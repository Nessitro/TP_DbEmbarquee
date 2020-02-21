CREATE TABLE [dbo].[Agence](
	[CodeAgence] [nvarchar](50) PRIMARY KEY NOT NULL,
	[Adresse] [nvarchar](max) NOT NULL,
	[Ville] [nvarchar](max) NOT NULL,
	[Telephone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
) 
GO