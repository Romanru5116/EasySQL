@выбрать самыф длиннчй сингл из альбомов
SELECT 
    name, 
    duration_ms
FROM d_track
WHERE album_id IN (
    -- Находим ID альбомов, в которых только 1 трек
    SELECT album_id
    FROM d_track
    GROUP BY album_id
    HAVING COUNT(id) = 1
)
ORDER BY duration_ms DESC
LIMIT 1
