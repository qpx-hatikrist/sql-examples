-- Работа с датами (Date functions)
-- Год, месяц, квартал, разница дат

-- Продажи по месяцам 2024 года
SELECT YEAR(sale_date) AS yr, MONTH(sale_date) AS mn, SUM(amount) AS revenue
FROM sales
WHERE year = 2024
GROUP BY YEAR(sale_date), MONTH(sale_date)
ORDER BY yr, mn;

-- Продажи по кварталам
SELECT CONCAT(YEAR(sale_date), '-Q', QUARTER(sale_date)) AS quarter, SUM(amount) AS revenue
FROM sales
WHERE year = 2024
GROUP BY YEAR(sale_date), QUARTER(sale_date)
ORDER BY quarter;

-- Заказы за последние 7 дней (относительно текущей даты)
-- SELECT * FROM sales WHERE sale_date >= CURDATE() - INTERVAL 7 DAY ORDER BY sale_date DESC;
