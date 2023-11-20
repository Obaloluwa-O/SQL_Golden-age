SELECT year, SUM(games_sold) AS total_games_sold
FROM game_sales
WHERE year IN (SELECT year
FROM top_critic_years_more_than_four_games
INTERSECT 
SELECT year
FROM top_user_years_more_than_four_games)
GROUP BY year
ORDER BY SUM(games_sold) DESC

;