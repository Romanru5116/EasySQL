#вывести мин и макс зарплаты не уволенных сотрудниов
SELECT 
    unit_id, 
    MIN(salary) AS min_salary, 
    MAX(salary) AS max_salary 
FROM 
    employees 
WHERE fired=0
GROUP BY 
    unit_id
ORDER BY 
    unit_id;
