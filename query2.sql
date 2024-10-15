SELECT
  al.Title AS AlbumName,
  ar.Name AS ArtistName
FROM
  albums al
  JOIN artists ar ON al.ArtistId = ar.ArtistId;