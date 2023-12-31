﻿CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL IDENTITY(1,1),
	[FirstName] NVARCHAR(50) NOT NULL ,
	[LastName] NVARCHAR(80) NOT NULL ,
	[UserName]NVARCHAR(80) NULL ,
	[Email]NVARCHAR(384)NOT NULL ,
	[BirthDate] DATE  NOT NULL,
	[Passwd] BINARY(64) NOT NULL

	CONSTRAINT[PK_User] PRIMARY KEY ([Id]),
	CONSTRAINT [UK_User_Email] UNIQUE ([Email])

)
