# подневно число проданных товаров и уникальных покупателей
SELECT 
    TO_CHAR(date, 'YYYY-MM-DD') AS date, 
    COUNT(item_id) AS total_items_sold, 
    COUNT(DISTINCT user_id) AS unique_users_count 
FROM orders 
GROUP BY TO_CHAR(date, 'YYYY-MM-DD');
