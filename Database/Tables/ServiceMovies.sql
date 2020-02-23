CREATE TABLE [dbo].[ServiceMovies]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [URL] NVARCHAR(MAX) NOT NULL, 
    [Token] DATE NOT NULL, 
    [Prix] FLOAT NOT NULL, 
    [DateAbonn] DATETIME NOT NULL, 
    [Duree] INT NOT NULL, 
    [Numero] NVARCHAR(50) NOT NULL,
    CONSTRAINT [FK_ServiceMovies_ToLigne_Telephonique] FOREIGN KEY ([Numero]) REFERENCES [dbo].[Ligne_Telephonique] ([Numero]),
)
