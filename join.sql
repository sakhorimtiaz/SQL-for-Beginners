/*
SELECT 
zoo_1.id  id_a,
zoo_1.animal  animal_a,
zoo_2.id  id_b,
zoo_2.animal  animal_b
FROM 
zoo_1
INNER JOIN zoo_2 ON zoo_1.animal=zoo_2.animal;
*/
/*
SELECT 
zoo_1.id  id_a,
zoo_1.animal  animal_a,
zoo_2.id  id_b,
zoo_2.animal  animal_b
FROM 
zoo_1
LEFT JOIN zoo_2 ON zoo_2.animal=zoo_1.animal;
*/

/*
SELECT 
zoo_1.id  id_a,
zoo_1.animal  animal_a,
zoo_2.id  id_b,
zoo_2.animal  animal_b
FROM 
zoo_1
RIGHT JOIN zoo_2 ON zoo_1.animal=zoo_2.animal;
*/

/*
SELECT 
zoo_1.id  id_a,
zoo_1.animal  animal_a,
zoo_2.id  id_b,
zoo_2.animal  animal_b
FROM 
zoo_1
FULL OUTER JOIN zoo_2 ON zoo_1.animal=zoo_2.animal;
*/
--SELECT * FROM customer NATURAL JOIN shoporder
--SELECT * FROM students CROSS JOIN courses

--SELECT * FROM employees_roster
/*
SELECT a.employeename,
b.employeename AS managername
FROM 
employees_roster a
INNER JOIN employees_roster b ON b.employeeid=a.managerid
*/
