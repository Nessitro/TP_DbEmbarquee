# Travaux pratique : Bases de données embarquées

1. Création de la base de données recharges:

```SQL
CREATE DATABASE recharges;

USE recharges; -- for next commands :)
```

2. Création des table Ligne_Telephonique, clients et SMS.

```SQL
--Ligne_Telephonique
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

--Clients
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

--SMS
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
```

3. Donner le code SQL pour insère 3 clients et 6 lignes

   a. trois clients

```SQL
--1st
INSERT INTO dbo.Clients (CIN, Nom, Prenom, DateNaissance, Email, Password, Adresse, Ville)
VALUES (N'BK000000', -- CIN - nvarchar
 N'Ousrhire', -- Nom - nvarchar
 N'Abdellah', -- Prenom - nvarchar
 '1996-12-24 00:00:00', -- DateNaissance - datetime
 N'ousrhire.abdellah@gmail.com', -- Email - nvarchar
 N'123456XD', -- Password - nvarchar
 N'Addrissa :3', -- Adresse - nvarchar
 N'Casablanca' -- Ville - nvarchar
)
GO

--2nd
INSERT INTO dbo.Clients (CIN, Nom, Prenom, DateNaissance, Email, Password, Adresse, Ville)
VALUES (N'BK111111', -- CIN - nvarchar
 N'Ousrhire', -- Nom - nvarchar
 N'Abderrahim', -- Prenom - nvarchar
 '2001-03-21 00:00:00', -- DateNaissance - datetime
 N'abderrahim.ousrhire@gmail.com', -- Email - nvarchar
 N'Pass dialo', -- Password - nvarchar
 N'Addrissa :3', -- Adresse - nvarchar
 N'Casablanca' -- Ville - nvarchar
)
GO

--3rd
INSERT INTO dbo.Clients (CIN, Nom, Prenom, DateNaissance, Email, Password, Adresse, Ville)
VALUES (N'BK222222', -- CIN - nvarchar
 N'Lamba', -- Nom - nvarchar
 N'Abbass', -- Prenom - nvarchar
 '1980-01-01 00:00:00', -- DateNaissance - datetime
 N'lamba.abbass@gmail.com', -- Email - nvarchar
 N'Pass dialo tahowa', -- Password - nvarchar
 N'Addrissa dialo :3', -- Adresse - nvarchar
 N'Casablanca' -- Ville - nvarchar
)
GO
```

b. six lignes **create Agence table with data 1st**

```SQL
INSERT INTO dbo.Ligne_Telephonique (Numero, DateActivationGSM, CodeAgence, EtatLigne, Agence, CIN)
VALUES (N'0500000000', -- Numero - nvarchar
 '2020-02-21 01:19:00', -- DateActivationGSM - datetime
 N'Agence00', -- CodeAgence - nvarchar
 0, -- EtatLigne - bit
 N'Agence00', -- Agence - nvarchar
 N'BK000000' -- CIN - nvarchar
)
GO

INSERT INTO dbo.Ligne_Telephonique (Numero, DateActivationGSM, CodeAgence, EtatLigne, Agence, CIN)
VALUES (N'0511111111', -- Numero - nvarchar
 '2020-02-21 01:19:00', -- DateActivationGSM - datetime
 N'Agence00', -- CodeAgence - nvarchar
 0, -- EtatLigne - bit
 N'Agence00', -- Agence - nvarchar
 N'BK000000' -- CIN - nvarchar
)
GO

INSERT INTO dbo.Ligne_Telephonique (Numero, DateActivationGSM, CodeAgence, EtatLigne, Agence, CIN)
VALUES (N'0622222222', -- Numero - nvarchar
 '2020-02-21 01:19:00', -- DateActivationGSM - datetime
 N'Agence00', -- CodeAgence - nvarchar
 0, -- EtatLigne - bit
 N'Agence00', -- Agence - nvarchar
 N'BK111111' -- CIN - nvarchar
)
GO

INSERT INTO dbo.Ligne_Telephonique (Numero, DateActivationGSM, CodeAgence, EtatLigne, Agence, CIN)
VALUES (N'0633333333', -- Numero - nvarchar
 '2020-02-21 01:19:00', -- DateActivationGSM - datetime
 N'Agence00', -- CodeAgence - nvarchar
 0, -- EtatLigne - bit
 N'Agence00', -- Agence - nvarchar
 N'BK111111' -- CIN - nvarchar
)
GO

INSERT INTO dbo.Ligne_Telephonique (Numero, DateActivationGSM, CodeAgence, EtatLigne, Agence, CIN)
VALUES (N'0644444444', -- Numero - nvarchar
 '2020-02-21 01:19:00', -- DateActivationGSM - datetime
 N'Agence00', -- CodeAgence - nvarchar
 0, -- EtatLigne - bit
 N'Agence00', -- Agence - nvarchar
 N'BK222222' -- CIN - nvarchar
)
GO

INSERT INTO dbo.Ligne_Telephonique(Numero, DateActivationGSM, CodeAgence, EtatLigne, Agence, CIN)
VALUES(N'0661000000', --Numero - nvarchar
 '2020-02-21 01:19:00', --DateActivationGSM - datetime
 N'Agence00', --CodeAgence - nvarchar
 0, --EtatLigne - bit
 N'Agence00', --Agence - nvarchar
 N'BK222222'-- CIN - nvarchar
)
GO
```

4. Afficher les clients qui sont abonnés dans les agences de Casablanca.

```SQL
SELECT * 
FROM   [dbo].[clients] AS [client] 
WHERE  EXISTS (SELECT 1 
               FROM   [dbo].[ligne_telephonique] AS [ligne] 
                      INNER JOIN [dbo].[agence] AS [agence] 
                              ON [ligne].[codeagence] = [agence].[codeagence] 
               WHERE  ( [client].[cin] = [ligne].[cin] ) 
                      AND ( N'Casablanca' = [agence].[ville] )) 
```

5. Afficher le nombre de ligne fixe par client [Numéro commence par 05]

```SQL
SELECT [query].[cin]                                 AS [CIN], 
       Concat([query].[nom], N' ', [query].[prenom]) AS [Client Name], 
       [query].[line count]                          AS [Line Count] 
FROM   (SELECT [client].[cin]                          AS [CIN], 
               [client].[nom]                          AS [Nom], 
               [client].[prenom]                       AS [Prenom], 
               (SELECT Count(1) AS [A1] 
                FROM   [dbo].[ligne_telephonique] AS [ligne] 
                WHERE  [client].[cin] = [ligne].[cin]) AS [line count] 
        FROM   [dbo].[clients] AS [client] 
        WHERE  EXISTS (SELECT 1 AS [line count] 
                       FROM   [dbo].[ligne_telephonique] AS [ligne exists] 
                       WHERE  ( [client].[cin] = [ligne exists].[cin] ) 
                              AND ( [ligne exists].[numero] LIKE N'05%' ))) AS 
       [query] 
```

7. Afficher les SMS envoyés par le numéro 0661000000

```SQL
SELECT [ligne].[numero]                           AS [Ligne], 
       (SELECT Count(*) 
        FROM   [sms] AS [sms] 
        WHERE  [sms].[numero] = [ligne].[numero]) AS [SMSCount] 
FROM   [ligne_telephonique] AS [ligne] 
WHERE  [ligne].[numero] = '0661000000' 
```
