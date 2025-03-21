SELECT 
    user_id, count(*) as num_opinions
FROM sym_ratings 
GROUP BY user_id 
ORDER BY num_opinions 
DESC LIMIT 10;
