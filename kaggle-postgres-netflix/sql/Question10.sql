-- For each director, show their top 1 most critically acclaimed movie (with the highest IMDb rating), 
-- but only include directors who have directed at least 5 movies.
-- director_name
-- title (of the top-rated movie)
-- imdb_rating
-- movie_count (number of movies by that director)
WITH director_movies AS (
	SELECT 
		c.name AS director_name,
		t.title AS movie_title,
		t.imdb_score,
		ROW_NUMBER() OVER(PARTITION BY c.name ORDER BY t.imdb_score DESC) AS rn,
		COUNT(*) OVER(PARTITION BY c.name) AS movie_count
	FROM credits AS c
	JOIN titles AS t
		USING(id)
	WHERE c.role = 'DIRECTOR' AND t.type = 'MOVIE' AND t.imdb_score IS NOT NULL
)
SELECT 
	director_name,
	movie_title AS top_rated_movie,
	imdb_score,
	movie_count
FROM director_movies
WHERE rn = 1 AND movie_count >= 5;
