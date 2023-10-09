--employee number, last name, first name, sex, and salary

SELECT a.emp_no 
    ,a.last_name
    ,a.first_name
    ,a.sex
    ,b.salary
FROM employees a
join salaries b
on a.emp_no = b.emp_no;

--first name, last name, hire date for the employees hired in 1986

Select first_name 
    ,last_name
    ,hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--manager of each department along with their department number, department name, employee number, last name, and first name

Select a.dept_no
    ,a.dept_name
    ,b.emp_no
    ,a.last_name
    ,a.first_name
FROM departments a
join department_manager b
on a.dept_no = dept_no
join employee c
on b.emp_no = c.emp_no;

--department number for each employee along with that employee’s employee number, last name, first name, and department name

SELECT a.dept_no
    , c.emp_no
    , c.last_name
    , c.first_name
    , b.dept_name
FROM department a
JOIN dept_emp b
ON a.dept_no = b.dept_no 
JOIN employees c
ON b.emp_no = c.emp_no;

--first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

-- each employee in the Sales department, including their employee number, last name, and first name.
SELECT a.emp_no, c.last_name, c.first_name
FROM dept_emp a
JOIN departments b
ON a.dept_no = b.dept_no 
JOIN employees c
ON a.emp_no = c.emp_no
WHERE dept_name = 'Sales';

-- each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT b.dept_name, a.emp_no, c.last_name, c.first_name
FROM dept_emp a
JOIN departments b
ON a.dept_no = b.dept_no 
JOIN employees c 
ON a.emp_no = c.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- 8 List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name,
COUNT (last_name) AS frequency 
FROM employees
GROUP BY 1
ORDER BY COUNT (last_name) DESC; 


