--- Queries with aggregates (Pt. 2) ---


-- Find the number of Artists in the studio (without a HAVING clause)
SELECT building, COUNT(name)
FROM employees
WHERE role LIKE "artist";


-- Find the number of Employees of each role in the studio
SELECT role, COUNT(name)
FROM employees
GROUP BY role;


-- Find the total number of years employed by all Engineers
SELECT role, SUM(years_employed)
FROM employees
GROUP BY role
HAVING role LIKE "engineer";
