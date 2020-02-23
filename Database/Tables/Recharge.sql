CREATE TABLE [dbo].[Recharge]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Numero] NVARCHAR(50) NOT NULL, 
    [DataRecharge] DATETIME NOT NULL, 
    [Montant] INT NOT NULL, 
    [Solde] INT NOT NULL, 
    [Internet] INT NOT NULL, 
    [Duree] INT NOT NULL,
    CONSTRAINT [FK_Recharge_ToLigne_Telephonique] FOREIGN KEY ([Numero]) REFERENCES [dbo].[Ligne_Telephonique] ([Numero]),
)
