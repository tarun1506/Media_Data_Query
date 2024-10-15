SELECT DISTINCT
  c.LastName,
  c.Email
FROM
  customers c
  JOIN invoices i ON c.CustomerId = i.CustomerId;