-- Data Analysis for Pewlett Hackard, employees 1980 - 1999
-- 1. List the employee number, last name, first name, sex, and salary of each employee.employee_salary
SELECT employee.emp_no, 
	employee.last_name, 
	employee.first_name, 
	employee.sex, 
	salaries.salary
FROM employee
JOIN salaries ON
salaries.emp_no = employee.emp_no;

-- 2.List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01';

-- 3. List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT dept_manager.dept_no, 
	departments.dept_name, 
	employee.emp_no, 
	employee.last_name, 
	employee.first_name
FROM departments
JOIN dept_manager ON 
dept_manager.dept_no = departments.dept_no
JOIN employee ON
employee.emp_no = dept_manager.emp_no;

-- 4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT dept_employee.dept_no, 
	employee.emp_no, 
	employee.last_name, 
	employee.first_name, 
	departments.dept_name
FROM dept_employee
JOIN employee ON
employee.emp_no = dept_employee.emp_no
JOIN departments ON
departments.dept_no = dept_employee.dept_no;

-- 5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, and first name.
SELECT dept_employee.emp_no, 
	employee.last_name,
	employee.first_name
FROM dept_employee
JOIN employee ON
employee.emp_no = dept_employee.emp_no
JOIN departments ON
departments.dept_no = dept_employee.dept_no
WHERE departments.dept_name = 'Sales'; 

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_employee.emp_no, 
	employee.last_name,
	employee.first_name,
	departments.dept_name
FROM dept_employee
JOIN employee ON
employee.emp_no = dept_employee.emp_no
JOIN departments ON
departments.dept_no = dept_employee.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- 8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT employee.last_name,
	COUNT(employee.last_name) AS name_count
FROM employee
GROUP BY employee.last_name
ORDER BY "name_count" DESC;