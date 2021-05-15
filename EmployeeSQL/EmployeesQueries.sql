--1. List the following details of each employee: 
--   employee number, last name, first name, sex, and salary.
SELECT E.emp_no, E.last_name, E.first_name, E.sex, S.salary
FROM "EMPLOYEES" AS E
JOIN "SALARIES" AS S
ON (E.emp_no = S.emp_no)
ORDER BY E.emp_no ASC
LIMIT 10;

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM "EMPLOYEES" AS E
WHERE hire_date LIKE '%1986'
ORDER BY first_name ASC
LIMIT 10;


--3. List the manager of each department with the following information:
--   department number, department name, the manager's employee number, 
--   last name, first name.
SELECT DS.dept_no, DS.dept_name, E.emp_no, E.last_name, E.first_name
FROM "EMPLOYEES" AS E
JOIN "DEPT_MANAGER" AS D
ON (E.emp_no = D.emp_no)
JOIN "DEPARTMENTS" AS DS
ON (D.dept_no = DS.dept_no)
ORDER BY DS.dept_no ASC
LIMIT 10;

--4. List the department of each employee with the following information:
--  employee number, last name, first name, and department name.
SELECT E.emp_no, E.last_name, E.first_name, DS.dept_name
FROM "EMPLOYEES" AS E
JOIN "DEPT_EMP" AS DE
ON (E.emp_no = DE.emp_no)
JOIN "DEPARTMENTS" AS DS
ON (DE.dept_no = DS.dept_no)
ORDER BY E.emp_no ASC
LIMIT 10;

--5. List first name, last name, and sex for employees whose first name
--  is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM "EMPLOYEES" AS E
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY first_name ASC
LIMIT 10;

--6. List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.

SELECT E.emp_no, E.last_name, E.first_name, DS.dept_name
FROM "EMPLOYEES" AS E
JOIN "DEPT_EMP" AS DE
ON (E.emp_no = DE.emp_no)
JOIN "DEPARTMENTS" AS DS
ON (DE.dept_no = DS.dept_no)
WHERE DS.dept_name = 'Sales'
ORDER BY E.emp_no ASC
LIMIT 10;

--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT E.emp_no, E.last_name, E.first_name, DS.dept_name
FROM "EMPLOYEES" AS E
JOIN "DEPT_EMP" AS DE
ON (E.emp_no = DE.emp_no)
JOIN "DEPARTMENTS" AS DS
ON (DE.dept_no = DS.dept_no)
WHERE DS.dept_name = 'Sales'
OR DS.dept_name = 'Development'
ORDER BY E.emp_no ASC
LIMIT 10;

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

SELECT E.last_name, COUNT(E.last_name) AS "Employees per Last_name"
FROM "EMPLOYEES" AS E
GROUP BY E.last_name
ORDER BY E.last_name DESC
LIMIT 10;

--Epilogue: ou look down at your badge to see that your employee ID number is 499942
--Who am I?
SELECT E.last_name, E.first_name, E.sex, DS.dept_name, TI.title, S.salary
FROM "EMPLOYEES" AS E
JOIN "DEPT_EMP" AS DE
ON (E.emp_no = DE.emp_no)
JOIN "DEPARTMENTS" AS DS
ON (DE.dept_no = DS.dept_no)
JOIN "TITLES" AS TI
ON (E.emp_title_id = TI.emp_title_id)
JOIN "SALARIES" AS S
ON (E.emp_no = S.emp_no)
WHERE E.emp_no = 499942;



































