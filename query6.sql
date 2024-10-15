SELECT DISTINCT
  ar.Name AS ArtistName
FROM
  tracks t
  JOIN albums al ON t.AlbumId = al.AlbumId
  JOIN artists ar ON al.ArtistId = ar.ArtistId
  JOIN media_types mt ON t.MediaTypeId = mt.MediaTypeId
  JOIN playlist_track pt ON t.TrackId = pt.TrackId
  JOIN playlists p ON pt.PlaylistId = p.PlaylistId
WHERE
  (
    p.Name = 'Brazilian Music'
    OR p.Name = 'Grunge'
  )
  AND mt.Name LIKE '%MPEG%';