-- 4. Which actors have worked on the most 'drama' genre movies? Show top 5.
SELECT c.name, COUNT(*) AS drama_movies
FROM credits c
JOIN titles t 
USING(id)
WHERE t.genres LIKE '%drama%' AND c.role = 'ACTOR' AND t.type = 'MOVIE'
GROUP BY c.name
ORDER BY drama_movies DESC
LIMIT 5;
