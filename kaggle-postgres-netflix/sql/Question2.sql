-- 2. Find all shows that have more than 2 seasons and an IMDb score higher than 8.0.
SELECT title,seasons,imdb_score
FROM titles 

WHERE seasons > 2 AND imdb_score > 8.0
ORDER BY title;
