-- Queries with constraints (Pt. 2)

SELECT * 
FROM movies
WHERE title LIKE "Toy Story%";


SELECT * 
FROM movies
WHERE director LIKE "John Lasseter";


SELECT * 
FROM movies
WHERE director NOT LIKE "John Lasseter";


SELECT * 
FROM movies
WHERE title LIKE "WALL-%";
