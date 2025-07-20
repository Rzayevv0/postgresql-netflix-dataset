-- 1. Find the top 5 longest movies released after the year 2000, sorted by runtime descending.
SELECT title,runtime,release_year
FROM titles 
WHERE release_year>2000
ORDER BY runtime DESC
LIMIT 5;