CREATE TABLE [dbo].[Item] (
    [ItemID]   INT             IDENTITY (1, 1) NOT NULL,
    [EntityID] INT             NOT NULL,
    [KeyName]  VARCHAR (MAX)   NOT NULL,
    [Data]     VARBINARY (MAX) NULL,
    CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([ItemID] ASC),
    CONSTRAINT [FK_Item_Entity_EntityId] FOREIGN KEY ([EntityID]) REFERENCES [dbo].[Entity] ([EntityID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Item_EntityId]
    ON [dbo].[Item]([EntityID] ASC);

