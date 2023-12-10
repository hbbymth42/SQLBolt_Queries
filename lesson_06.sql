--- Multi-table queries with JOINs ---


-- Find the domestic and international sales for each movie
SELECT mov.*, bo.domestic_sales, bo.international_sales
FROM movies mov
INNER JOIN boxoffice bo
    ON mov.id = bo.movie_id;


-- Show the sales numbers for each movie that did better internationally rather than domestically
SELECT mov.*, bo.domestic_sales, bo.international_sales
FROM movies mov
INNER JOIN boxoffice bo
    ON mov.id = bo.movie_id
WHERE bo.international_sales > bo.domestic_sales;


-- List all the movies by their ratings in descending order
SELECT mov.*, bo.rating
FROM movies mov
INNER JOIN boxoffice bo
    ON mov.id = bo.movie_id
ORDER BY bo.rating DESC;
