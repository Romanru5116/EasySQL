# магазины сделавшие продажи более 30 в сентябре
SELECT shop_id 
FROM orders 
WHERE EXTRACT(MONTH FROM updated_at) = 9
GROUP BY shop_id 
HAVING SUM(sum) > 30;
