﻿CREATE TABLE [dbo].[InvoiceLine] (
    [InvoiceLineId] INT             NOT NULL,
    [InvoiceId]     INT             NOT NULL,
    [TrackId]       INT             NOT NULL,
    [UnitPrice]     NUMERIC (10, 2) NOT NULL,
    [Quantity]      INT             NOT NULL,
    CONSTRAINT [PK_InvoiceLine] PRIMARY KEY CLUSTERED ([InvoiceLineId] ASC),
    CONSTRAINT [FK_InvoiceLineDenTrackTrackId] FOREIGN KEY ([TrackId]) REFERENCES [dbo].[den_Track] ([TrackId]),
    CONSTRAINT [FK_InvoiceLineInvoiceId] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoice] ([InvoiceId]),
    CONSTRAINT [FK_InvoiceLineTrackId] FOREIGN KEY ([TrackId]) REFERENCES [dbo].[Track] ([TrackId])
);




GO
CREATE NONCLUSTERED INDEX [IFK_InvoiceLineTrackId]
    ON [dbo].[InvoiceLine]([TrackId] ASC);


GO
CREATE NONCLUSTERED INDEX [IFK_InvoiceLineInvoiceId]
    ON [dbo].[InvoiceLine]([InvoiceId] ASC);

