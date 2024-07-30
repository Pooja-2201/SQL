--https://dataford.io/sql/Flight-Curated-Movies
SELECT
    flight_schedule.flight_id,
    entertainment_catalog.movie_id,
    entertainment_catalog.duration AS movie_duration
FROM
    flight_schedule 
JOIN
    entertainment_catalog 
ON
    flight_schedule.flight_duration >= entertainment_catalog.duration
WHERE
    flight_schedule.flight_id = 101
ORDER BY
    entertainment_catalog.duration;
