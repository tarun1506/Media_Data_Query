SELECT
    c.FirstName || ' ' || c.LastName AS CustomerName,
    i.InvoiceDate,
    i.Total AS InvoiceAmount,
    (
        SELECT
            SUM(i2.Total)
        FROM
            invoices i2
        WHERE
            i2.CustomerId = i.CustomerId
            AND i2.InvoiceDate <= i.InvoiceDate
    ) AS CumulativeSales
FROM
    customers c
    JOIN invoices i ON c.CustomerId = i.CustomerId
ORDER BY
    c.CustomerId,
    i.InvoiceDate;