
# Netflix SQL Practice Project 🎬

This project is a hands-on SQL practice exercise using the **Netflix Movies and TV Shows Dataset** from Kaggle.  
🔗 [View dataset on Kaggle](https://www.kaggle.com/datasets/victorsoeiro/netflix-tv-shows-and-movies/data)


It includes various SQL queries written to extract insights from the data using filtering, aggregation, window functions, and other core SQL techniques.

---

## 📁 Project Structure

```
netflix-sql-project/
│
├── data/
│   ├── credits.csv
│   └── titles.csv
│
├── sql/
│   ├── creditsCREATETABLE.sql
│   ├── titlesCREATETABLE.sql
│   ├── Question1.sql
│   ├── Question2.sql
│   ├── ...
│   └── Question11.sql
│
└── README.md
```

- `data/`: Contains the original CSV files used to populate the database.
- `sql/`:
  - `creditsCREATETABLE.sql` and `titlesCREATETABLE.sql`: SQL scripts to create the required tables.
  - `Question1.sql` to `Question11.sql`: Individual query solutions for each analysis task.

---

## 🧠 SQL Questions Covered

1. **Top 5 Longest Movies After 2000**  
   Find the top 5 longest movies released after the year 2000, sorted by runtime descending.

2. **High-Rated Multi-Season Shows**  
   List all shows that have more than 2 seasons and an IMDb score higher than 8.0.

3. **Action Genre Statistics**  
   Calculate the average runtime and total number of movies for each genre that includes the word 'action'.

4. **Top Actors in Drama Genre**  
   Identify the top 5 actors who have worked on the most movies in the 'drama' genre.

5. **Top-Rated Actors**  
   For each actor, calculate the average IMDb score of the movies they appeared in.  
   Only include those who acted in at least 3 movies. Show the top 5 by average score.

6. **Movie Popularity Classification**  
   Classify each movie’s popularity using a CASE statement:
   - 'Low' if `tmdb_popularity` < 10  
   - 'Medium' if between 10 and 50  
   - 'High' if ≥ 50

7. **Top-Rated Movie per Actor**  
   Using `ROW_NUMBER()`, find each actor’s highest-rated movie.

8. **Most Popular Movie by Year**  
   For each year, find the most popular movie based on `tmdb_popularity`.

9. **Yearly Movie Counts & Running Totals**  
   Show the number of movies released each year, along with a running total of all movies released up to that year.

10. **Top Movie per Director (Min 5 Movies)**  
    For each director who has directed at least 5 movies, show their highest-rated movie.

11. **Most Productive Director per Year**  
    For each year, show the director who produced the most movies and their best-rated movie from that year.

---

## 🎓 Learning Purpose

This project was created as part of a personal learning journey to improve and reinforce SQL skills by working with real-world data.  
It focuses on practicing a range of SQL concepts including:

- JOINs and filtering  
- Aggregation and grouping  
- Window functions (`ROW_NUMBER()`)  
- Conditional logic with `CASE`  
- Derived columns and sorting  

---
