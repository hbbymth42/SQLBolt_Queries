--- Order of execution of a Query ---


-- Find the number of movies each director has directed
SELECT director, COUNT(title)
FROM movies
GROUP BY director;


-- Find the total domestic and international sales that can be attributed to each director
SELECT mov.director, SUM(bo.domestic_sales + bo.international_sales)
FROM movies mov
INNER JOIN boxoffice bo
    ON mov.id = bo.movie_id
GROUP BY mov.director;
