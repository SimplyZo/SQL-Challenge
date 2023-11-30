--Create departments table
DROP TABLE IF EXISTS departments;

CREATE TABLE departments(
	dept_no VARCHAR (10) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

--Create employees table
DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

--Create dept_emp table
DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Create dept_managers table
DROP TABLE IF EXISTS dept_managers;

CREATE TABLE dept_managers (
	dept_no VARCHAR (10),
	emp_no INT,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Create salaries table
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
		emp_no BIGINT NOT NULL,
		salary BIGINT NOT NULL,
		FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

--Create titles table
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
		title_id VARCHAR(10) NOT NULL,
		title VARCHAR(20) NOT NULL
);