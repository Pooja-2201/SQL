-- https://dataford.io/sql/Airbnb-Apartment-Count
SELECT 
    h.nationality AS NATIONALITY,
    COUNT(u.unit_id) AS APARTMENTS_COUNT
FROM airbnb_hosts h
INNER JOIN airbnb_units u ON h.host_id = u.host_id
WHERE h.age < 30
GROUP BY h.nationality;
