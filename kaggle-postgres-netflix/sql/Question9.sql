-- For each year, show the number of movies released
-- and a running total of all movies released up to that year.
WITH cte AS (
	SELECT 
		release_year,
		COUNT(*) AS movie_count_of_year
	FROM titles
	WHERE type='MOVIE'
	GROUP BY release_year
)
SELECT
	release_year,
	movie_count_of_year,
	SUM(movie_count_of_year) OVER(ORDER BY release_year ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS runningtotal_ofmovies
FROM cte;
	
	
