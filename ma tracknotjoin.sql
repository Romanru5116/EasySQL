#Выведите название и продолжительность самого длинного сингла (1 трек в альбоме, название трека). JOIN не использовать
SELECT name, duration_ms 
FROM d_track 
WHERE id IN (
    SELECT MAX(id) 
    FROM d_track 
    GROUP BY album_id 
    HAVING COUNT(*) = 1
);
