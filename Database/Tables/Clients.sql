CREATE TABLE [dbo].[Clients](
  [CIN] [nvarchar](50) NOT NULL PRIMARY KEY,
  [Nom] [nvarchar](max) NOT NULL,
  [Prenom] [nvarchar](max) NOT NULL,
  [DateNaissance] [datetime] NOT NULL,
  [Email] [nvarchar](max) NOT NULL,
  [Password] [nvarchar](max) NOT NULL,
  [Adresse] [nvarchar](max) NOT NULL,
  [Ville] [nvarchar](max) NOT NULL,
)
GO