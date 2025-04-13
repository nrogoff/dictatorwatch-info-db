/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
-- Seeding data into the DictatorStatus table
INSERT INTO [dbo].[DictatorStatus] ([Name], [Description])
VALUES 
    ('In Power', 'Currently holding power in their country'),
    ('Exiled', 'Removed from power and living in exile'),
    ('Deceased', 'No longer alive'),
    ('Imprisoned', 'Currently serving a prison sentence'),
    ('Retired', 'Voluntarily stepped down from power');
GO
-- Seeding data into the MethodOfPowerLoss table

INSERT INTO [dbo].[MethodOfPowerLoss] ([Name], [Description])
VALUES 
    ('Assassination', 'Killed by political opponents or rivals'),
    ('Coup d''état', 'Overthrown by a military coup'),
    ('Election Loss', 'Lost power through democratic elections'),
    ('Revolution', 'Overthrown during a popular uprising'),
    ('Natural Causes', 'Died of natural causes'),
    ('Impeachment', 'Removed from power through impeachment proceedings'),
    ('Exile', 'Forced to leave the country and live abroad'),
    ('Resignation', 'Voluntarily stepped down from power');
GO

