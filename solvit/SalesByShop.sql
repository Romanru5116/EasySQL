# магазины сделавшие продажи более 30 в сентябре
SELECT shop_id
FROM orders
WHERE created_at >= '2026-09-01' AND created_at < '2026-10-01'
GROUP BY shop_id
HAVING COUNT(id) > 30;
