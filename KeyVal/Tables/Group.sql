CREATE TABLE [dbo].[Group] (
    [GroupID] INT           IDENTITY (1, 1) NOT NULL,
    [UserID]  INT           NOT NULL,
    [Name]    VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED ([GroupID] ASC),
    CONSTRAINT [FK_Group_User_UserId] FOREIGN KEY ([UserID]) REFERENCES [dbo].[User] ([UserID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Group_UserId]
    ON [dbo].[Group]([UserID] ASC);

