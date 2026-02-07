# SQL Examples

Примеры запросов на MySQL-совместимом синтаксисе: агрегаты, фильтрация, оконные функции, JOIN, группировка. Подходят для отчётов и выгрузок.

## Содержимое

| Файл | Темы |
|------|------|
| `01_aggregates.sql` | SUM, COUNT, AVG, GROUP BY |
| `02_filtering.sql` | WHERE, BETWEEN, IN |
| `03_window_functions.sql` | RANK(), ROW_NUMBER(), PARTITION BY |
| `04_join.sql` | JOIN таблиц sales, products, categories |
| `05_group_by.sql` | GROUP BY, HAVING |
| `06_subqueries.sql` | Подзапросы в WHERE, NOT IN |
| `07_case_expressions.sql` | CASE, сегментация по сумме |
| `08_date_functions.sql` | YEAR, MONTH, QUARTER, группировка по периоду |
| `09_left_join_distinct.sql` | LEFT JOIN, COALESCE, COUNT DISTINCT |
| `10_cte_union.sql` | WITH (CTE), UNION ALL |
| `11_more_window.sql` | LAG, накопительная сумма, топ-N по группе |

Запросы используют условные таблицы `sales`, `products`, `categories` — подставьте свои имена полей и таблиц под свою схему.

## Как использовать

Скопируйте нужный фрагмент в свой клиент (MySQL, DBeaver, DataGrip и т.п.) и адаптируйте под свои таблицы.

## Связано

Эти же примеры в интерактивном виде — в разделе SQL на портфолио.
