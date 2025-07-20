-- 5. For each actor, calculate the average IMDb score of the movies they appeared in,
-- and return only those who have acted in at least 3 movies. Show top 5 by average score.
SELECT 
	c.name,
	AVG(t.imdb_score) AS avg_imdb_score,
	COUNT(*) AS movies_played
FROM titles AS t
LEFT JOIN credits AS c
USING(id)
WHERE c.role='ACTOR' AND t.imdb_score IS NOT NULL
GROUP BY c.name
HAVING COUNT(c.id)>=3 
ORDER BY avg_imdb_score DESC
LIMIT 10;

