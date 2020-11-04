
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM Employees AS e
LEFT JOIN Salaries AS s
ON e.emp_no = s.emp_no;

-- 2.List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name,hire_date
FROM Employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986 ;


--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name,e.first_name
FROM Dept_manager AS m
JOIN Departments AS d
ON m.dept_no = d.dept_no
JOIN Employees AS e
ON m.emp_no = e.emp_no;

--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM Employees AS e
JOIN Dept_emp AS de
ON de.emp_no = e.emp_no
JOIN Departments AS d
ON de.dept_no = d.dept_no;

--5.List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name,last_name,sex FROM Employees
WHERE (first_name = 'Hercules') AND (last_name LIKE 'B%');

--6.List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM Employees AS e
JOIN Dept_emp AS de
ON de.emp_no = e.emp_no
JOIN Departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM Employees AS e
JOIN Dept_emp AS de
ON de.emp_no = e.emp_no
JOIN Departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales','Development');

--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)
FROM Employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;






