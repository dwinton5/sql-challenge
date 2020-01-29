SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
JOIN departments ON
departments.dept_no=dept_manager.dept_no
JOIN employees ON
employees.emp_no=dept_manager.emp_no



