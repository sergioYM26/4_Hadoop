LOAD DATA LOCAL INPATH 'data/users.dat' OVERWRITE INTO TABLE sym_users;
SELECT * FROM sym_users LIMIT 10;

LOAD DATA LOCAL INPATH 'data/ratings.dat' OVERWRITE INTO TABLE sym_ratings;
SELECT * FROM sym_ratings LIMIT 10;

LOAD DATA LOCAL INPATH 'data/movies.dat' OVERWRITE INTO TABLE sym_movies;
SELECT * FROM sym_movies LIMIT 10;