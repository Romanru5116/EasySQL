#Выведите название и продолжительность самого длинного сингла (1 трек в альбоме, название трека). Используйте JOIN
SELECT 
    t1.name, t1.duration_ms
FROM 
    d_track t1
JOIN 
    (SELECT album_id, COUNT(*) as track_count 
     FROM d_track 
     GROUP BY album_id) t2 
ON t1.album_id = t2.album_id
WHERE 
    t2.track_count = 1
ORDER BY 
    t1.duration_ms DESC
LIMIT 1;
