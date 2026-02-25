#Надо выбрать 5 альбомов с максимальной продолжительностью (суммарно всех треков). Вывести название альбома, количество треков и продолжительность в минутах
SELECT 
    da.name, 
    COUNT(dt.id) AS tracks_count, 
    ROUND(SUM(dt.duration_ms) / 60000.0, 2) AS duration_minutes
FROM d_album da
JOIN d_track dt ON dt.album_id = da.id
GROUP BY da.name
ORDER BY duration_minutes DESC
LIMIT 5;
