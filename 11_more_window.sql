-- Ещё оконные функции: LAG, LEAD, накопительная сумма

-- Сравнение выручки региона с предыдущим по рейтингу (LAG)
SELECT region, revenue,
       LAG(revenue) OVER (ORDER BY revenue DESC) AS prev_revenue,
       revenue - LAG(revenue) OVER (ORDER BY revenue DESC) AS diff
FROM (SELECT region, SUM(amount) AS revenue FROM sales WHERE year = 2024 GROUP BY region) t;

-- Накопительная сумма выручки по дате (в рамках региона)
SELECT region, sale_date, amount,
       SUM(amount) OVER (PARTITION BY region ORDER BY sale_date) AS running_total
FROM sales
WHERE year = 2024
LIMIT 20;

-- Топ-1 товар по выручке в каждой категории
SELECT category, product_name, revenue, rn
FROM (
  SELECT c.name AS category, p.name AS product_name, SUM(s.amount) AS revenue,
         ROW_NUMBER() OVER (PARTITION BY c.id ORDER BY SUM(s.amount) DESC) AS rn
  FROM sales s JOIN products p ON s.product_id = p.id JOIN categories c ON p.category_id = c.id
  WHERE s.year = 2024
  GROUP BY c.id, c.name, p.id, p.name
) t
WHERE rn = 1;
