CREATE TABLE [dbo].[customer] (
    [customer_id] INT          IDENTITY (1, 1) NOT NULL,
    [first_name]  VARCHAR (50) NOT NULL,
    [last_name]   VARCHAR (50) NOT NULL,
    [age]         TINYINT      NOT NULL,
    [zip_code]    VARCHAR (50) NOT NULL,
	[type] [varchar] (50) NULL
    CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED ([customer_id] ASC)
);

