 -- 8. For each year, find the most popular movie 
 -- classify it as “Blockbuster” if its tmdb_popularity > 50, else “Standard”.
WITH cte AS (
	SELECT 
		title AS popular_movie,
		release_year,
		ROW_NUMBER() OVER(PARTITION BY release_year ORDER BY tmdb_popularity DESC) AS rn,
		tmdb_popularity
	FROM titles
	
	WHERE type='MOVIE' AND tmdb_popularity IS NOT NULL
)
SELECT popular_movie,release_year,tmdb_popularity,
	CASE WHEN tmdb_popularity>50 THEN 'Blockbuster'
	ELSE 'Standard' END AS popularity_level
FROM CTE
WHERE rn=1;