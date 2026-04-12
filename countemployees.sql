#число сотрудников н более 10 по отделам
SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) <= 10;
