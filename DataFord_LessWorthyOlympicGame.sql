--https://dataford.io/sql/Less-Worthy-Olympic-Game
SELECT games, COUNT(*) AS n_athletes
FROM olympics_athletes_events
WHERE medal IS NULL
GROUP BY games
ORDER BY n_athletes DESC;
