SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salaries
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no