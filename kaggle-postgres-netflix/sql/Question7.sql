-- 7. For each actor, find their top-rated movie using ROW_NUMBER() + ORDER BY imdb_score DESC
WITH cte AS (
	SELECT c.name,t.title,t.imdb_score,ROW_NUMBER() OVER(PARTITION BY c.name ORDER BY t.imdb_score desc ) AS rn
	FROM credits AS c 
	INNER JOIN titles AS t
	USING(id)
	WHERE c.role='ACTOR' AND t.type ='MOVIE' AND imdb_score IS NOT NULL

)
SELECT name,title,imdb_score AS max_imdb_score
FROM cte
WHERE rn=1
ORDER BY imdb_score DESC;
