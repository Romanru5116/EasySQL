# Выведите список производителей, у которых есть хотя бы один продукт с ценой выше 30 000 рублей. Для каждого производителя покажите количество таких продуктов.
select  company,
count(*) as product_count
from products where price>30000 group by company
