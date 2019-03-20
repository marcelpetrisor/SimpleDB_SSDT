CREATE TABLE [dbo].[customer_type]
(
[customer_type_id] [int] NOT NULL IDENTITY(1, 1),
[type] [varchar] (50) NULL,
[type_id] [int] NOT NULL, 
    CONSTRAINT [PK_customer_type] PRIMARY KEY ([customer_type_id]) 
)