CREATE TABLE [dbo].[commision]
(
[commision_id] [int] NOT NULL,
[type] [varchar] (50) NOT NULL,
[percentage] [tinyint] NOT NULL, 
    CONSTRAINT [PK_commision] PRIMARY KEY ([commision_id])
)