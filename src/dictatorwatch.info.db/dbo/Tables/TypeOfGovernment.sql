﻿CREATE TABLE [dbo].[TypeOfGovernment] (
    [Id]          INT            NOT NULL IDENTITY(1,1), -- Auto-incrementing primary key
    [Name]        NVARCHAR(100)  NOT NULL,              -- Name of the government type
    [Description] NVARCHAR(255)  NULL,                  -- Optional description of the government type
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
