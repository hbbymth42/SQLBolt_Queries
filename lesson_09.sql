--- Queries with expressions ---


-- List all movies and their combined sales in millions of dollars
SELECT mov.title, (bo.domestic_sales + bo.international_sales)/1000000 AS combined_sales
FROM movies mov
INNER JOIN boxoffice bo
    ON mov.id = bo.movie_id;


-- List all movies and their ratings in percent
SELECT mov.title, rating * 10 AS ratings_percent
FROM movies mov
INNER JOIN boxoffice bo
    ON mov.id = bo.movie_id;


-- List all movies that were released on even number years 
SELECT title, year
FROM movies
WHERE year % 2 = 0;
