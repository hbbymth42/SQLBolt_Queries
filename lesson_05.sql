-- Review: Simple SELECT Queries

SELECT * 
FROM north_american_cities
WHERE country LIKE "Canada";


SELECT * 
FROM north_american_cities
WHERE country LIKE "United%"
ORDER BY latitude DESC;


SELECT * 
FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude;


SELECT * 
FROM north_american_cities
WHERE country LIKE "Mexico"
ORDER BY population DESC
LIMIT 2;


SELECT * 
FROM north_american_cities
WHERE country LIKE "United%"
ORDER BY population DESC
LIMIT 2 OFFSET 2;
