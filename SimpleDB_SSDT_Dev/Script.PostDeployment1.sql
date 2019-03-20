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
IF (SELECT COUNT(*)
    FROM   [dbo].[customer_type]) = 0
    BEGIN
        PRINT (N'Add 4 rows to [dbo].[customer_type]');
        SET IDENTITY_INSERT [dbo].[customer_type] ON;
        INSERT  INTO [dbo].[customer_type] ([customer_type_id], [type], [type_id])
        VALUES                            (1, 'individual', 1);
        INSERT  INTO [dbo].[customer_type] ([customer_type_id], [type], [type_id])
        VALUES                            (2, 'group', 2);
        INSERT  INTO [dbo].[customer_type] ([customer_type_id], [type], [type_id])
        VALUES                            (3, 'intermediary', 3);
        INSERT  INTO [dbo].[customer_type] ([customer_type_id], [type], [type_id])
        VALUES                            (4, 'hp', 4);
        SET IDENTITY_INSERT [dbo].[customer_type] OFF;
    END


GO