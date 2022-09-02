-- execute a failing query to retrieve all employee records whose salary is lower than the average
SELECT * FROM EMPLOYEES WHERE SALARY < AVG(SALARY);

-- execute a working query using a sub-select to retrieve all employees records whose salary is lower than the average salary
SELECT EMP_ID, F_NAME, L_NAME, SALARY FROM EMPLOYEES WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);

-- execute a failing query to retrieve all employees records with emp_id salary and maximum salary in every row 
SELECT EMP_ID, SALARY, MAX(SALARY) AS MAX_SALARY FROM EMPLOYEES;

-- execute a column expression that retrieves all employee records with emp_id, salary, and maximum salary as max_salary in every row
SELECT EMP_ID, SALARY, (SELECT MAX(SALARY) FROM EMPLOYEES) AS MAX_SALARY FROM EMPLOYEES;

-- execute a table expression for the employees table that excludes columns with sensitive employee data 
-- ie does not include ssn, b_date, sex, address, salary
SELECT * FROM (SELECT EMP_ID, F_NAME, L_NAME, DEP_ID FROM EMPLOYEES) AS EMP4ALL;