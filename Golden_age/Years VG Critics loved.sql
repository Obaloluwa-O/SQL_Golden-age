SELECT year, ROUND(AVG(critic_score), 2) AS avg_critic_score
FROM game_sales AS g
INNER JOIN reviews AS r
ON g.game = r.game
GROUP BY year
ORDER BY avg_critic_score DESC
LIMIT 10
;