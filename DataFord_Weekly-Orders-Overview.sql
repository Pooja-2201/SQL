-- https://dataford.io/sql/-Weekly-Orders-Overview
SELECT week, SUM(quantity) AS quantity
FROM orders_analysis
WHERE week >= '2023-01-01' AND week < '2023-04-01'
GROUP BY week
ORDER BY week; 
