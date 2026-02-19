@вытващить самый длинныф сингл
SELECT T.name, T.duration_ms/1000/60 AS duration_minutes
FROM music.d_track T
WHERE T.album_spotify_id IN (
   SELECT A.spotify_id
   FROM music.d_album A
   WHERE A.total_tracks = 1
)
ORDER BY T.duration_ms DESC
LIMIT 1;
