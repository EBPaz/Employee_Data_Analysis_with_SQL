-- DROP TABLE departments
-- DROP TABLE dept_manager
-- DROP TABLE dept_employee
-- DROP TABLE employee
-- DROP TABLE salaries
-- DROP TABLE titles


-- create the departments table
CREATE TABLE departments (
    dept_no VARCHAR NOT NULL,
    dept_name VARCHAR NOT NULL,
    PRIMARY KEY (dept_no)
);
SELECT * FROM departments


-- create the department manager table
CREATE TABLE dept_manager (
     dept_no VARCHAR NOT NULL,
     emp_no INT NOT NULL,
     PRIMARY KEY (dept_no, emp_no),
     FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
SELECT * FROM dept_manager
 
 
-- create the department employee table
 CREATE TABLE dept_employee (
    emp_no INT NOT NULL,
    dept_no VARCHAR NOT NULL, 
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
SELECT * FROM dept_employee


-- create the employee table
CREATE TABLE employee (
    emp_no INT NOT NULL,
    title_id VARCHAR NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);
SELECT * FROM employee


-- create the salaries table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employee (emp_no)
);
SELECT * FROM salaries


-- create the titles table
CREATE TABLE titles (
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (title_id)
);
SELECT * FROM titles


-- add the foreign keys that couldn't be created until all tables were made
ALTER TABLE dept_manager
ADD FOREIGN KEY (emp_no) REFERENCES employee (emp_no);

ALTER TABLE dept_employee
ADD FOREIGN KEY (emp_no) REFERENCES employee (emp_no);

ALTER TABLE employee
ADD FOREIGN KEY (emp_no) REFERENCES salaries (emp_no),
ADD FOREIGN KEY (title_id) REFERENCES titles (title_id);