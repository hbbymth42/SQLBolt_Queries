-- A short note on NULLs ---


-- Find the name and role of all employees who have not been assigned to a building
SELECT * 
FROM employees
WHERE building IS NULL;


-- Find the names of the buildings that hold no employees 
SELECT * 
FROM buildings build
LEFT JOIN employees emp
    ON build.building_name = emp.building
WHERE building IS NULL;
