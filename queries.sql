SELECT 
	e.emp_no as "Employee Number",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	e.sex as "Sex",
	s.salary as "Salary"
FROM
	employees e
	LEFT JOIN salaries s 
	ON e.emp_no = s.emp_no
;

SELECT
	first_name,
	last_name,
	hire_date
FROM employees
WHERE hire_date between '1-1-1986' AND '12-31-1986'
;

SELECT
	d.dept_no, 
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
FROM dept_manager dm
	LEFT JOIN departments d
	ON dm.dept_no = d.dept_no
	LEFT JOIN employees e
	ON dm.emp_no = e.emp_no
;

SELECT 
	d.dept_no as "Department Number",
	e.emp_no as "Employee Number",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	d.dept_name as "Department Name"
FROM
	dept_emp de
	LEFT JOIN employees e
	ON de.emp_no = e.emp_no
	LEFT JOIN departments d
	ON de.dept_no = d.dept_no
;

SELECT 
	first_name,
	last_name,
	sex
FROM employees
WHERE first_name = 'Hercules' 
	AND last_name like 'B%'
;

SELECT 
	e.emp_no as "Employee Number",
	e.last_name as "Last Name",
	e.first_name as "First Name"
FROM
	dept_emp de
	LEFT JOIN employees e
	ON de.emp_no = e.emp_no
	LEFT JOIN departments d
	ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
;

SELECT 
	e.emp_no as "Employee Number",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	d.dept_name as "Department Name"
FROM
	dept_emp de
	LEFT JOIN employees e
	ON de.emp_no = e.emp_no
	LEFT JOIN departments d
	ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales','Development')
;

SELECT 
	last_name as "Last Name",
	count(last_name) as "Count"
FROM employees
GROUP BY last_name
ORDER BY "Count" DESC
;
