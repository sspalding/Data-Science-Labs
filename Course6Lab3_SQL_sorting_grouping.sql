-- retrieve all employees whose address is in elgin, IL
SELECT F_NAME, L_NAME FROM EMPLOYEES WHERE ADDRESS LIKE '%Elgin,IL%';

-- retrieve all employees who were born during the 1970s
SELECT F_NAME, L_NAME FROM EMPLOYEES WHERE B_DATE LIKE '%197%';

-- retrieve all employees in department 5 whose salary is between 60000 and 70000
SELECT * FROM EMPLOYEES WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID=5;

-- retrieve a list of employees ordered by department id 
SELECT F_NAME, L_NAME, DEP_ID FROM EMPLOYEES ORDER BY DEP_ID;

-- retrieve a list of employees ordered in descending order by department ID 
-- and within each department ordered alphabetically in descending order by lastname
SELECT F_NAME, L_NAME, DEP_ID FROM EMPLOYEES ORDER BY DEP_ID DESC, L_NAME DESC;

-- For each department ID retrieve the number of employees in the department 
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES FROM EMPLOYEES GROUP BY DEP_ID;

-- for each department retrieve the number of employees in the department and the average employee salary in the department 
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVERAGE_SALARY FROM EMPLOYEES GROUP BY DEP_ID;

-- order the result by average salary 
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVERAGE_SALARY FROM EMPLOYEES GROUP BY DEP_ID ORDER BY 3;

-- limit the results to departments with fewer than 4 employees 
SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVERAGE_SALARY FROM EMPLOYEES GROUP BY DEP_ID HAVING COUNT(*)<4 ORDER BY 3;
