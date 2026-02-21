#выбираем трек самый длинный с join 
SELECT 
    t.name, 
    t.duration_ms
FROM d_track t
JOIN d_album a ON t.album_id = a.id
WHERE a.id IN (
-- Находим ID альбомов, у которых только 1 трек
    SELECT album_id 
    FROM d_track 
    GROUP BY album_id 
    HAVING COUNT(id) = 1
)
ORDER BY t.duration_ms DESC
-- сортировка для топа самого длинного
LIMIT 1;



