#Найдите страну, в которой используется наибольшее количество различных языков, и выведите её название.
#Поля в результирующей таблице: name.

SELECT 
c.name --name
from countries c JOIN country_languages cl on cl.country_code=c.code GROUP BY c.name ORDER BY count(cl.language) desc LIMIT 1
