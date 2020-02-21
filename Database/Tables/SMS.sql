CREATE TABLE [dbo].[SMS](
  [Id] [int] NOT NULL PRIMARY KEY,
  [Vers] [nvarchar](max) NOT NULL,
  [DateEnvoi] [datetime] NOT NULL,
  [TextSms] [nvarchar](max) NOT NULL,
  [PrixSms] [float] NOT NULL,
  [Numero] [nvarchar](50) NOT NULL,
  CONSTRAINT [FK_SMS_ToLigne_Telephonique] FOREIGN KEY ([Numero]) REFERENCES [dbo].[Ligne_Telephonique] ([Numero]),
)
GO