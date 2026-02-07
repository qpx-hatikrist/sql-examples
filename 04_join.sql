-- JOIN
-- Связь таблиц sales, products, categories

-- Продажи с названием товара (Sales with product name)
SELECT s.id, p.name, s.amount, s.sale_date
FROM sales s
JOIN products p ON s.product_id = p.id
WHERE s.year = 2024
ORDER BY s.amount DESC
LIMIT 10;

-- Выручка по категориям (два JOIN) (Revenue by category)
SELECT c.name AS category, SUM(s.amount) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.id
JOIN categories c ON p.category_id = c.id
WHERE s.year = 2024
GROUP BY c.name;
