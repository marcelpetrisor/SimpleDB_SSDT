CREATE TABLE [dbo].[ErrorLog] (
    [ErrorLogKey]     INT           IDENTITY (1, 1) NOT NULL,
    [ErrorLogDate]    DATETIME      NULL DEFAULT SYSDATETIME(),
    [ErrorLogMessage] VARCHAR (MAX) NULL,
    CONSTRAINT [ErrorLogPK] PRIMARY KEY CLUSTERED ([ErrorLogKey] ASC)
)
