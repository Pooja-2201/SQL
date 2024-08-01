-- https://dataford.io/sql/-Top-10-Quarterbacks
SELECT qb AS Quarterback, game_points AS "Game Points"
FROM qbstats_2015_2016
WHERE year = 2016
ORDER BY game_points DESC
LIMIT 10;
