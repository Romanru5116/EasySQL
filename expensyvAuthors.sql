Постройте запрос, чтобы отобрать всех авторов, у кого стоимость всех их проданных книг больше 500 000 рублей.
Поля в результирующей таблице: author_id, author_name, total_revenue.
  SELECT 
    au.author_id, 
    au.author_name, 
    SUM(bo.cost * bo.book_sold) AS total_revenue
FROM authors au
JOIN books_authors ba ON au.author_id = ba.author_id
JOIN books bo ON ba.book_id = bo.book_id
GROUP BY au.author_id, au.author_name
HAVING SUM(bo.cost * bo.book_sold)>500000;
