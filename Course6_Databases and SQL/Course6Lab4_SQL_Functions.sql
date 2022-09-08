-- Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.
SELECT SUM(COST) AS SUM_OF_COST FROM PETRESCUE;

-- enter a function that displays the maximum number of animals rescued
SELECT MAX(QUANTITY) AS MAX_RESCUED FROM PETRESCUE;

-- enter a function that displays the average cost of animals rescued
SELECT AVG(COST/QUANTITY) AS AVG_COST FROM PETRESCUE;

-- display the average cost of rescueing a dog
SELECT AVG(COST/QUANTITY) AS AVG_COST FROM PETRESCUE WHERE ANIMAL = 'Dog';

-- enter a function that displays the rounded cost of each rescue
SELECT ROUND(AVG(COST/QUANTITY)) AS AVG_COST FROM PETRESCUE;

-- enter a function that displays the length of each animal name 
SELECT LENGTH(ANIMAL) FROM PETRESCUE;

-- enter a function that displays the animal name in each rescue in uppercase
SELECT UCASE(ANIMAL) FROM PETRESCUE;

-- enter a function that displays the animal name in each rescue in uppercase without duplications
SELECT DISTINCT(UCASE(ANIMAL)) FROM PETRESCUE;

-- enter a query that displays all the columns from the petrescue table, where the animals rescued are cats,
SELECT * FROM PETRESCUE WHERE LCASE(ANIMAL) = 'cat'; 

-- enter a function that displays the day of the moneth when the cats have been rescued 
SELECT DAY(RESCUEDATE) FROM PETRESCUE WHERE ANIMAL = 'Cat';

-- enter a function that displays the number of rescues on the 5th month 
SELECT SUM(QUANTITY) FROM PETRESCUE WHERE MONTH(RESCUEDATE)='05';

-- enter a function that displays the number of rescues on the 14th day of the month  
SELECT SUM(QUANTITY) FROM PETRESCUE WHERE DAY(RESCUEDATE)='14';

-- enter a function that shows the third day from each rescue 
SELECT (RESCUEDATE+3) FROM PETRESCUE;  

-- enter a function that displays the length of time the animals have been rescued 
SELECT (CURRENT_DATE - RESCUEDATE) FROM PETRESCUE; 