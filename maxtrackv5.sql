#Выведите название и продолжительность самого длинного сингла (1 трек в альбоме, название трека). Используйте JOIN
SELECT T.name, T.duration_ms/1000/60 AS duration_minutes
FROM (SELECT id
   FROM music.d_album
   WHERE total_tracks = 1) A
JOIN music.d_track T ON
   T.album_id = A.id
ORDER BY T.duration_ms DESC
LIMIT 1;
