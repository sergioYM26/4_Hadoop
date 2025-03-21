SELECT
    sym_ratings.movie_id, sym_movies.title, count(*) as num_reviews
FROM sym_ratings
JOIN sym_movies
ON sym_ratings.movie_id = sym_movies.movie_id
GROUP BY sym_ratings.movie_id, sym_movies.title
ORDER BY num_reviews DESC
LIMIT 1;
