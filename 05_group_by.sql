-- Группировка (GROUP BY, HAVING)

-- Сводка по регионам (Summary by region)
SELECT region,
       COUNT(*) AS orders,
       SUM(amount) AS revenue,
       AVG(amount) AS avg_order
FROM sales
WHERE year = 2024
GROUP BY region;

-- Регионы с выручкой выше 1000 (HAVING)
SELECT region, SUM(amount) AS revenue
FROM sales
WHERE year = 2024
GROUP BY region
HAVING revenue > 1000
ORDER BY revenue DESC;
