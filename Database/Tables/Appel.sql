CREATE TABLE [dbo].[Appel]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Vers] NVARCHAR(MAX) NOT NULL, 
    [DebutCommunication] DATETIME NOT NULL, 
    [FinCommunication] INT NOT NULL, 
    [PrixParSeconds] FLOAT NOT NULL, 
    [Numero] NVARCHAR(50) NOT NULL,
    CONSTRAINT [FK_Appel_ToLigne_Telephonique] FOREIGN KEY ([Numero]) REFERENCES [dbo].[Ligne_Telephonique] ([Numero]),
)
