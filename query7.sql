SELECT
  COUNT(*)
FROM
  (
    SELECT
      ar.ArtistId
    FROM
      tracks t
      JOIN albums al USING (AlbumId)
      JOIN artists ar USING (ArtistId)
      JOIN media_types mt USING (MediaTypeId)
    WHERE
      mt.Name LIKE '%MPEG%'
    GROUP BY
      ar.ArtistId
    HAVING
      COUNT(t.TrackId) >= 10
  );