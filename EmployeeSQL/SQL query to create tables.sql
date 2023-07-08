-- create the correct tables to import data into with the correct
-- primary keys and foreign keys

-- create the departments table
CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
);
SELECT * FROM departments


-- create the salaries table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no)
);
SELECT * FROM salaries


-- create the titles table
CREATE TABLE titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title_id)
);
SELECT * FROM titles


-- create the employee table
CREATE TABLE employee (
    emp_no INT NOT NULL,
    title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES salaries (emp_no),
    FOREIGN KEY (title_id) REFERENCES titles (title_id)
);
SELECT * FROM employee


-- create the department manager table
CREATE TABLE dept_manager (
     dept_no VARCHAR NOT NULL,
     emp_no INT NOT NULL,
     PRIMARY KEY (dept_no, emp_no),
     FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	 FOREIGN KEY (emp_no) REFERENCES employee (emp_no)
);
SELECT * FROM dept_manager
 
 
-- create the department employee table
 CREATE TABLE dept_employee (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL, 
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no)
);
SELECT * FROM dept_employee