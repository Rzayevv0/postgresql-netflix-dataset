-- 3. Find the average runtime and total number of movies for each genre that includes 'action'.
SELECT 
	genres,
	ROUND(AVG(runtime),3),
	COUNT(title)
FROM titles 
GROUP BY genres,typea
HAVING(type = 'MOVIE' AND genres LIKE '%action%'); -- if genres has type list then we'll use ANY(action);