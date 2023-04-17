--List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-1-1' AND '1986-12-31'

--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.

SELECT d.dept_no, dept_name, emp_no, last_name, first_name
FROM departments d
INNER JOIN titles t on e.title_id = t.title_id


--List first name, last name, and sex of each employee 
--whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees WHERE first_name = 'Hercules' AND last_name like 'B%'

--List each employee in the Sales department, 
--including their employee number, last name, and first name.
SELECT e.emp_no, last_name, first_name FROM employees e
INNER JOIN dept_emp de on e.emp_no = de.emp_no 
INNER JOIN departments d on de.dept_no = d.dept_no
WHERE dept_name = 'Sales'

--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e
INNER JOIN dept_emp de on e.emp_no = de.emp_no 
INNER JOIN departments d on de.dept_no = d.dept_no
WHERE dept_name in ('Sales','Development')

--List the frequency counts, in descending order, 
--of all the employee last names (that is, how many employees share each last name).
SELECT last_name, count (*) FROM employees GROUP BY last_name
ORDER BY count (*) DESC








