﻿CREATE TABLE [dbo].[Mashup]
(
	[Id] INT NOT NULL ,
	[Title] NVARCHAR(80) NOT NULL ,
	[Tag] NVARCHAR(50) NOT NULL ,
	[PathFile] NVARCHAR(384) NOT NULL , 
	[Length] NVARCHAR(50) NOT NULL,
	TrackId INT NOT NULL , 
	MasherId INT NOT NULL

	CONSTRAINT [PK_Mashup] PRIMARY KEY ([Id]),
	CONSTRAINT [FK_Mashup_Track] FOREIGN KEY ([TrackId]) REFERENCES [Track](Id) ,
	CONSTRAINT [FK_Mashup_Masher] FOREIGN KEY ([MasherId]) REFERENCES [Masher] (Id)
)
