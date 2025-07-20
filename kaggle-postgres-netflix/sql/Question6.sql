-- 6. For each movie, classify its popularity using a CASE statement based on tmdb_popularity:
-- 'Low' if < 10
-- 'Medium' if between 10 and 50
-- 'High' if >= 50
SELECT
	title,
	CASE WHEN tmdb_popularity <10 THEN 'Low'
		WHEN tmdb_popularity < 10 AND tmdb_popularity < 50 THEN 'Low'
		WHEN tmdb_popularity>=50 THEN 'High' ELSE 'Unknown' END AS popularity  
FROM titles
WHERE type = 'MOVIE' AND tmdb_popularity IS NOT NULL;;
