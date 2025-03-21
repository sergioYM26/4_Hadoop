SELECT 
    sym_ratings.user_id, sym_users.age, count(*) as num_opinions
FROM sym_ratings
JOIN sym_users
ON sym_ratings.user_id = sym_users.user_id
GROUP BY sym_ratings.user_id, sym_users.age
ORDER BY num_opinions DESC
LIMIT 10;
