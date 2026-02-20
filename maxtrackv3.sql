#Выведите название и продолжительность самого длинного сингла (1 трек в альбоме, название трека). Используйте JOIN
SELECT 
    dt.name AS track_name, 
    dt.duration_ms
FROM d_track dt
JOIN d_album da ON dt.album_id = da.id
WHERE dt.album_id IN (
    SELECT album_id 
    FROM d_track 
    GROUP BY album_id 
    HAVING COUNT(id) = 1
)
ORDER BY dt.duration_ms DESC
LIMIT 1;
