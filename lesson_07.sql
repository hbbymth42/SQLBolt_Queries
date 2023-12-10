--- OUTER JOINs ---


-- Find the list of all buildings that have employees
SELECT DISTINCT building 
FROM employees;


-- Find the list of all buildings and their capacity
SELECT * 
FROM buildings;


-- List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT build.building_name, emp.role
FROM buildings build
LEFT JOIN employees emp
    ON build.building_name = emp.building;
