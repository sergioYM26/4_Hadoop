SELECT
    sym_ratings.movie_id, sym_movies.title, avg(rating) as avg_rating
FROM sym_ratings
JOIN sym_movies
ON sym_ratings.movie_id = sym_movies.movie_id
GROUP BY sym_ratings.movie_id, sym_movies.title
ORDER BY avg_rating DESC
LIMIT 3;
