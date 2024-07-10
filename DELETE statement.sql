UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = 999901;

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;

UPDATE departments_dup 
SET 
    dept_no = 'd011',
    dept_name = 'QA';
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;
    
ROLLBACK;

COMMIT;

SELECT 
    *
FROM
    departments;
    
UPDATE departments 
SET 
    dept_name = 'Data Analyst'
WHERE
    dept_no = 'd010';
    
SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;
    
DELETE FROM employees 
WHERE
    emp_no = 999903;
    
ROLLBACK;

DELETE FROM departments 
WHERE
    dept_no = 'd010';
    





