#Необходимо найти телефоны пользователей, у которых больше 1 заказа.
SELECT c.customer_phone, COUNT(o.id) AS orders_count
FROM calls c
JOIN orders o ON c.id = o.call_id
GROUP BY c.customer_phone
HAVING COUNT(o.id) > 1;
