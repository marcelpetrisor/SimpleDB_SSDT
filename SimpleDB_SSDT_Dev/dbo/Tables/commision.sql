CREATE TABLE [dbo].[commision]
(
[commision_id] [int] NOT NULL,
[type] [int] NOT NULL,
[percentage] [tinyint] NOT NULL, 
    CONSTRAINT [PK_commision] PRIMARY KEY ([commision_id])
)