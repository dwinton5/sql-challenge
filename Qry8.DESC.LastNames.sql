SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT DESC