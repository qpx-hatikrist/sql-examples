-- Оконные функции (Window functions)
-- RANK(), ROW_NUMBER(), PARTITION BY

-- Ранг региона по выручке (Region rank by revenue)
SELECT region, revenue,
       RANK() OVER (ORDER BY revenue DESC) AS rnk
FROM (
  SELECT region, SUM(amount) AS revenue
  FROM sales WHERE year = 2024
  GROUP BY region
) t;

-- Номер строки в рамках региона (Row number per region)
SELECT region, amount, sale_date,
       ROW_NUMBER() OVER (PARTITION BY region ORDER BY sale_date) AS rn
FROM sales
WHERE year = 2024
LIMIT 15;
