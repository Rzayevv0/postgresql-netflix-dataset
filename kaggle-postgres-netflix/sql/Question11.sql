-- For each year, show the most productive director and their best movie from that year.
-- productive (produced the most movie  )
WITH director_movies AS (
	SELECT 
		c.name AS director_name,
		t.title AS movie,
		t.imdb_score,
		t.release_year,
		COUNT(*) OVER (PARTITION BY c.name, t.release_year) AS movie_count,
		ROW_NUMBER() OVER (
			PARTITION BY c.name, t.release_year 
			ORDER BY t.imdb_score DESC
		) AS movie_rank
	FROM titles AS t
	JOIN credits AS c USING(id)
	WHERE t.type = 'MOVIE' 
	  AND c.role = 'DIRECTOR'
	  AND t.imdb_score IS NOT NULL
),

most_productive_directors AS (
	SELECT *
	FROM (
		SELECT *,
			ROW_NUMBER() OVER (
				PARTITION BY release_year 
				ORDER BY movie_count DESC
			) AS rn
		FROM director_movies
		WHERE movie_rank = 1
	) ranked
	WHERE rn = 1
)

SELECT 
	release_year,
	director_name,
	movie,
	imdb_score,
	movie_count
FROM most_productive_directors
ORDER BY release_year;
