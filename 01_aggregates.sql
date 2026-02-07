-- Агрегаты (Aggregates)
-- Примеры: SUM, COUNT, AVG, GROUP BY

-- Сумма продаж по регионам (Sales by region)
SELECT region, SUM(amount) AS revenue
FROM sales
WHERE year = 2024
GROUP BY region
ORDER BY revenue DESC;

-- Количество заказов и средний чек (Order count and average check)
SELECT COUNT(*) AS orders, AVG(amount) AS avg_amount
FROM sales
WHERE year = 2024;
