CREATE TABLE [dbo].[User] (
    [UserID]   INT           IDENTITY (1, 1) NOT NULL,
    [Email]    VARCHAR (80)  NOT NULL,
    [Name]     VARCHAR (100) NOT NULL,
    [Password] VARCHAR (256) NOT NULL,
    [Created]  DATETIME2 (7) NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserID] ASC)
);

