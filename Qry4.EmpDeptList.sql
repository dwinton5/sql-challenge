SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM employees
JOIN dept_emp ON
employees.emp_no=dept_emp.emp_no
JOIN departments ON 
departments.dept_no=dept_emp.dept_no


