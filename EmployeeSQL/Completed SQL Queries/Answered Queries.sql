-- QUESTION 1

SELECT emp.emp_no, emp.last_name, emp.first_name, emp.gender, sal.salary
FROM salaries AS sal
JOIN employees AS emp ON
emp.emp_no=sal.emp_no;

-- QUESTION 2

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date LIKE '1986%';

-- QUESTION 3 

SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, t.from_date, t.to_date, t.title
FROM departments AS d
JOIN dept_emp AS de
ON d.dept_no=de.dept_no
JOIN employees AS e
ON de.emp_no=e.emp_no
JOIN titles AS t
ON e.emp_no=t.emp_no
WHERE t.title = 'Manager'
;

-- QUESTION 4

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no=de.emp_no
JOIN departments AS d
ON de.dept_no=d.dept_no
;

-- QUESTION 5

SELECT first_name, last_name 
FROM employees
WHERE 
	first_name = 'Hercules'
	AND last_name LIKE 'B%'
;

-- QUESTION 6

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no=de.emp_no
JOIN departments AS d
ON de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales';

-- QUESTION 7

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de
ON e.emp_no=de.emp_no
JOIN departments AS d
ON de.dept_no=d.dept_no
WHERE 
	d.dept_name = 'Sales'
	OR d.dept_name = 'Development';

-- QUESTION 8

SELECT last_name, COUNT(last_name) AS "Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Name Count" DESC;

--

SELECT * FROM employees
WHERE emp_no = '499942';