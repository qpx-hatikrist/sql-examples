-- Фильтрация (Filtering)
-- WHERE, BETWEEN, IN

-- Продажи за период (Sales in date range)
SELECT id, product_id, amount, sale_date
FROM sales
WHERE sale_date BETWEEN '2024-01-01' AND '2024-03-31'
ORDER BY sale_date;

-- Товары из нужной категории (IN) (Products in category)
SELECT * FROM products
WHERE category_id IN (1, 2, 5)
ORDER BY name;
