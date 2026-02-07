-- LEFT JOIN и DISTINCT
-- Все категории и выручка по ним (включая категории без продаж)

-- Выручка по категориям с LEFT JOIN (категории без продаж покажут NULL)
SELECT c.name AS category, COALESCE(SUM(s.amount), 0) AS revenue
FROM categories c
LEFT JOIN products p ON p.category_id = c.id
LEFT JOIN sales s ON s.product_id = p.id AND s.year = 2024
GROUP BY c.id, c.name
ORDER BY revenue DESC;

-- Уникальные регионы и количество заказов в каждом
SELECT region, COUNT(DISTINCT id) AS order_count
FROM sales
WHERE year = 2024
GROUP BY region;
