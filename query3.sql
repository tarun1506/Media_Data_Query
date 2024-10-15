SELECT
  State,
  COUNT(DISTINCT CustomerId) AS TotalCustomers
FROM
  customers
GROUP BY
  State
ORDER BY
  State ASC;