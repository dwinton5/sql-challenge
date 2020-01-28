CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR   NOT NULL
);

SELECT * FROM departments

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    gender VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL
);

SELECT * FROM employees

CREATE TABLE salaries (
    emp_no INT PRIMARY KEY,
    salaries INT   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

SELECT * FROM salaries

CREATE TABLE titles (
    emp_no INT PRIMARY KEY,
    title VARCHAR   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

SELECT * FROM titles

CREATE TABLE dept_emp (
    emp_no INT PRIMARY KEY,
    Name VARCHAR   NOT NULL,
    from_date DATE   NOT NULL,
    to_date DATE   NOT NULL
);

SELECT * FROM dept_emp


CREATE TABLE dept_manager (
    dept_no VARCHAR  PRIMARY KEY,
	emp_no INT  NOT NULL,
    Name VARCHAR   NOT NULL,
    from_date VARCHAR   NOT NULL,
    to_date VARCHAR   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no),
	FOREIGN KEY (emp_no) REFERENCES	employees(emp_no),
	FOREIGN KEY (emp_no) REFERENCES	titles(emp_no),
	FOREIGN KEY (emp_no) REFERENCES	salaries(emp_no)
);

SELECT * FROM dept_manager