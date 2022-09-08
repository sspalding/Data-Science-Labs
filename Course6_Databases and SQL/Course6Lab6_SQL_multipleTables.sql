-- retrieve only employees records that correspond to jobs in the jobs table 
SELECT * FROM EMPLOYEES WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS);

-- retrieve only the list of employees whose job_title is jr. designer 
SELECT * FROM EMPLOYEES WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS WHERE JOB_TITLE = 'Jr. Designer');

-- retrieve job information for employees who earn more than 70,000
SELECT JOB_TITLE, MIN_SALARY, MAX_SALARY, JOB_IDENT FROM JOBS WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE SALARY >70000);

-- retrieve job information for those whose birth year is after 1976
SELECT JOB_TITLE, MIN_SALARY, MAX_SALARY, JOB_IDENT FROM JOBS WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE YEAR(B_DATE)>1976);

-- retrieve job information for female employees whose birth year is after 1976
SELECT JOB_TITLE, MIN_SALARY, MAX_SALARY, JOB_IDENT FROM JOBS WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE SEX='F' AND YEAR(B_DATE)>1976);

-- Perform an implicit cartesian/cross join between employees and jobs tables 
SELECT * FROM EMPLOYEES, JOBS;

-- retrieve only the employees records that correspond to jobs in the jobs table
SELECT * FROM EMPLOYEES E, JOBS J WHERE E.JOB_ID = J.JOB_IDENT;

-- redo the previous query, but retrieve only the employee ID, employee name, and job title
SELECT E.EMP_ID,E.F_NAME, E.L_NAME, J.JOB_TITLE FROM EMPLOYEES E, JOBS J WHERE E.JOB_ID = J.JOB_IDENT;