-- CASE: условная логика в SELECT
-- Сегментация и категоризация в запросе

-- Сегмент заказа по сумме (малый / средний / крупный)
SELECT id, amount, sale_date,
       CASE
         WHEN amount < 100 THEN 'малый'
         WHEN amount < 500 THEN 'средний'
         ELSE 'крупный'
       END AS segment
FROM sales
WHERE year = 2024
ORDER BY amount DESC
LIMIT 15;

-- Количество заказов по сегментам
SELECT
  CASE WHEN amount < 100 THEN 'малый' WHEN amount < 500 THEN 'средний' ELSE 'крупный' END AS segment,
  COUNT(*) AS orders
FROM sales
WHERE year = 2024
GROUP BY CASE WHEN amount < 100 THEN 'малый' WHEN amount < 500 THEN 'средний' ELSE 'крупный' END;
