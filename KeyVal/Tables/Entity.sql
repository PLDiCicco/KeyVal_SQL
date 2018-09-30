CREATE TABLE [dbo].[Entity] (
    [EntityID]   INT            IDENTITY (1, 1) NOT NULL,
    [CategoryID] INT            NOT NULL,
    [Name]       NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_Entity] PRIMARY KEY CLUSTERED ([EntityID] ASC),
    CONSTRAINT [FK_Entity_Category_CategoryId] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([CategoryID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Entity_CategoryId]
    ON [dbo].[Entity]([CategoryID] ASC);

