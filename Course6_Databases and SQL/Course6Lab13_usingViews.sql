-- create a view 
CREATE VIEW EMPSALARY AS 
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, SALARY
FROM EMPLOYEES;

--use select to query the view 
select * from empsalary;

-- update the view, combine two tables to display desired information
CREATE OR REPLACE VIEW EMPSALARY  AS 
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, JOB_TITLE, MIN_SALARY, MAX_SALARY
FROM EMPLOYEES, JOBS
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;

-- query the updated view 
SELECT * FROM EMPSALARY;

-- delete the view 
DROP VIEW EMPSALARY;

-- query the view to make sure it was deleted
SELECT * FROM EMPSALARY;