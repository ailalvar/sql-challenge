--create table from employees csv
CREATE TABLE employees
    (emp_no INTEGER NOT NULL PRIMARY KEY
    ,emp_title_id VARCHAR NOT NULL
    ,birth_date VARCHAR NOT NULL
    ,first_name VARCHAR NOT NULL
    ,last_name VARCHAR NOT NULL
    ,sex VARCHAR NOT NULL
    ,hire_date VARCHAR NOT NULL);

SELECT * FROM employees;

--create table from titles csv
CREATE TABLE titles 
    (title_id INTEGER NOT NULL PRIMARY KEY 
    ,title VARCHAR NOT NULL);

SELECT * FROM titles;

--create table from salaries csv
CREATE TABLE salaries 
    (emp_no INTEGER NOT NULL PRIMARY KEY 
    ,salary NUMERIC NOT NULL);

SELECT * FROM salaries;

--create table from dept_emp csv
CREATE TABLE dept_emp
    (emp_no INTEGER NOT NULL PRIMARY KEY 
    ,dept_no VARCHAR NOT NULL);

SELECT * FROM dept_emp;

--create table from dept_manager csv
CREATE TABLE dept_manager 
    (emp_no INTEGER NOT NULL PRIMARY KEY 
    ,dept_no VARCHAR NOT NULL);

SELECT * FROM dept_manager;

--create table from departments csv
CREATE TABLE departments 
    (dept_no VARCHAR NOT NULL PRIMARY KEY 
    ,dept_name VARCHAR NOT NULL);

SELECT * FROM departments;

--

