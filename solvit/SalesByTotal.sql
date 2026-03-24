#ля расчета общей стоимости проданных товаров по каждому продавцу
SELECT 
    i.seller_id, 
    SUM(s.price) AS total_sales_value
FROM 
    sales s
JOIN 
    items i ON s.item_id = i.item_id
GROUP BY 
    i.seller_id;
