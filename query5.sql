SELECT
  ar.Name AS ArtistName
FROM
  albums al
  JOIN artists ar ON al.ArtistId = ar.ArtistId
WHERE
  al.Title LIKE '%symphony%';