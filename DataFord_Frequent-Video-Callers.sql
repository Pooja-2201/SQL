--https://dataford.io/sql/Frequent-Video-Callers
WITH canadian_callers AS (
    SELECT caller_id
    FROM calls
    INNER JOIN users ON calls.caller_id = users.user_id
    WHERE users.country = 'Canada'
    GROUP BY caller_id
    HAVING COUNT(DISTINCT recipient_id) >= 3
)
SELECT COUNT(*) AS NB_FREQUENT_CALLERS
FROM canadian_callers;
