DROP TABLE IF EXISTS sym_users;

CREATE TABLE sym_users (
    user_id INT,
    gender STRING,
    age INT,
    occupation INT,
    zip_code STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.RegexSerDe'
WITH SERDEPROPERTIES (
    "input.regex" = "^(.*)::(.*)::(.*)::(.*)::(.*)$"
)
STORED AS TEXTFILE;

DROP TABLE IF EXISTS sym_movies;

CREATE TABLE sym_movies(
    movie_id INT,
    title STRING,
    genres STRING
) 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.RegexSerDe'
WITH SERDEPROPERTIES (
    "input.regex" = "^(.*)::(.*)::(.*)$"
)
STORED AS TEXTFILE;

DROP TABLE IF EXISTS sym_ratings;

CREATE TABLE sym_ratings (
    user_id INT,
    movie_id INT,
    rating INT,
    timestamp BIGINT
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.RegexSerDe'
WITH SERDEPROPERTIES (
    "input.regex" = "^(.*)::(.*)::(.*)::(.*)$"
)
STORED AS TEXTFILE;