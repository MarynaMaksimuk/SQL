SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;

INSERT INTO employees (
emp_no, 
birth_date,
first_name, 
last_name,
gender,
hire_date
) VALUES
(
999901,
'1986-04-21',
'John',
'Smith',
'M',
'2024-01-01');

INSERT INTO employees
(
birth_date,
emp_no,
first_name,
last_name,
gender,
hire_date)
VALUES
(
'1980-01-03',
999902,
'Pam',
'Clark',
'F',
'2024-03-05');

INSERT INTO employees 
VALUES
(
999903,
'1996-04-21',
'Jack',
'Applebees',
'M',
'2024-07-09');

SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC
LIMIT 10;

INSERT INTO titles
(emp_no,
title,
from_date)
VALUES
(999903,
'Senior Engineer',
'1997-10-01');

SELECT 
    *
FROM
    dept_emp
LIMIT 10;

INSERT INTO dept_emp
(emp_no,
dept_no,
from_date,
to_date)
VALUES
(999903,
'd005',
'1997-10-01',
'9999-01-01');

SELECT 
    *
FROM
    dept_emp
ORDER BY emp_no DESC
LIMIT 10;

SELECT 
    *
FROM
    departments
ORDER BY dept_no DESC
LIMIT 10;

CREATE TABLE departments_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

SELECT 
    *
FROM
    departments_dup;
    
INSERT INTO departments_dup
(dept_no,
dept_name)
SELECT 
* 
FROM departments;

INSERT INTO departments
VALUES
('d010',
'Business Analysis');


