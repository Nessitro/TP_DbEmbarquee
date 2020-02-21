CREATE TABLE [dbo].[Ligne_Telephonique](
  [Numero] [nvarchar](50) NOT NULL PRIMARY KEY,
  [DateActivationGSM] [datetime] NOT NULL,
  [CodeAgence] [nvarchar](50) NOT NULL,
  [EtatLigne] [bit] NOT NULL,
  [Agence] [nvarchar](max) NOT NULL,
  [CIN] [nvarchar](50) NOT NULL,
  CONSTRAINT [FK_Ligne_Telephonique_ToClients] FOREIGN KEY ([CIN]) REFERENCES [dbo].[Clients] ([CIN]),
  CONSTRAINT [FK_Ligne_Telephonique_ToAgence] FOREIGN KEY ([CodeAgence]) REFERENCES [dbo].[Agence] ([CodeAgence]),
)
GO