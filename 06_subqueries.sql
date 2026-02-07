-- Подзапросы (Subqueries)
-- Подзапрос в WHERE, в FROM

-- Регионы, где выручка выше средней по всем регионам
SELECT region, SUM(amount) AS revenue
FROM sales
WHERE year = 2024
GROUP BY region
HAVING revenue > (SELECT AVG(tot) FROM (SELECT SUM(amount) AS tot FROM sales WHERE year = 2024 GROUP BY region) t);

-- Товары, по которым не было продаж в 2024 (NOT IN + подзапрос)
SELECT id, name FROM products
WHERE id NOT IN (SELECT DISTINCT product_id FROM sales WHERE year = 2024);
