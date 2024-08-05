--https://dataford.io/sql/Most-Popular-Rooms
SELECT
    r.name, r.description,
    COUNT(rh.rental_id) AS number_of_bookings,
    SUM(r.price * rh.number_nights) AS total_earnings
FROM rooms r
INNER JOIN rentalHistory rh ON r.room_id = rh.room_id
GROUP BY r.room_id
ORDER BY number_of_bookings DESC;
