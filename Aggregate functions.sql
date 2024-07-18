USE employees;
SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
    COUNT(DISTINCT from_date)
FROM
    salaries;
    
SELECT 
    *
FROM
    dept_emp;
SELECT 
    COUNT(DISTINCT dept_no)
FROM
    dept_emp;
    
SELECT 
    SUM(salary)
FROM
    salaries;
    
SELECT 
    SUM(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';

SELECT 
    MIN(salary)
FROM
    salaries;

SELECT 
    MAX(emp_no)
FROM
    employees;
    
SELECT 
    ROUND(AVG(salary), 2) AS salary_average
FROM
    salaries
WHERE
    from_date > '1997-01-01';

SELECT 
    *
FROM
    departments_dup;
    
alter table departments_dup
change column dept_name dept_name VARCHAR(40) NULL;

insert into departments_dup(dept_no)
values
('d010'), ('d011');

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

ALTER TABLE employees.departments_dup
ADD COLUMN dept_manager VARCHAR(255) NULL AFTER dept_name;

COMMIT;

SELECT 
    dept_no,
    IFNULL(dept_name,
            'Department name is not provided') AS dept_name
FROM
    departments_dup;
    
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    departments_dup
ORDER BY dept_no ASC;

SELECT 
    dept_no,
    dept_name,
    COALESCE('dpeartment manager name') AS fake_col
FROM
    departments_dup;
    
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
    ORDER BY dept_no ASC;
    
SELECT 
    dept_no,
    IFNULL(dept_name, 'N/A') dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;
    


    

    

    
