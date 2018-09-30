CREATE TABLE [dbo].[Category] (
    [CategoryID] INT           IDENTITY (1, 1) NOT NULL,
    [GroupID]    INT           NOT NULL,
    [Name]       VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED ([CategoryID] ASC),
    CONSTRAINT [FK_Category_Group_GroupId] FOREIGN KEY ([GroupID]) REFERENCES [dbo].[Group] ([GroupID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Category_GroupId]
    ON [dbo].[Category]([GroupID] ASC);

