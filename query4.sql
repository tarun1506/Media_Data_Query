SELECT
  State,
  COUNT(DISTINCT CustomerId) AS TotalCustomers
FROM
  customers
GROUP BY
  State
HAVING
  COUNT(DISTINCT CustomerId) > 10
ORDER BY
  State ASC;