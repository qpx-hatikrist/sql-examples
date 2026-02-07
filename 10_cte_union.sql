-- CTE (WITH) и UNION
-- Общий табличный expression и объединение выборок

-- Топ-3 региона по выручке через CTE
WITH region_revenue AS (
  SELECT region, SUM(amount) AS revenue
  FROM sales WHERE year = 2024
  GROUP BY region
)
SELECT region, revenue,
       RANK() OVER (ORDER BY revenue DESC) AS rnk
FROM region_revenue
ORDER BY revenue DESC
LIMIT 3;

-- UNION: продажи за 2023 и 2024 в одной выборке (год как столбец)
SELECT '2023' AS yr, region, SUM(amount) AS revenue FROM sales WHERE year = 2023 GROUP BY region
UNION ALL
SELECT '2024' AS yr, region, SUM(amount) AS revenue FROM sales WHERE year = 2024 GROUP BY region
ORDER BY yr, revenue DESC;
