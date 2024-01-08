CREATE TABLE [dbo].[AdminD]
(
	[AdminId] INT NOT NULL PRIMARY KEY, 
    [CustomerId_FK] INT NULL, 
    [WorkerId_FK] INT NULL, 
    [OrderId_FK] INT NULL, 
    [CourierId_FK] INT NULL, 
    CONSTRAINT [FK_AdminD_CustomerDet] FOREIGN KEY ([CustomerId_FK]) REFERENCES [CustomerDet]([CustomerId])
)
