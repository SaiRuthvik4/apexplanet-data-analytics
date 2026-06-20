-- Query 1: Display first 10 records

SELECT *
FROM superstore
LIMIT 10;

-- Query 2: Show all Technology products

SELECT *
FROM superstore
WHERE category = 'Technology';

-- Query 3: Top 10 highest sales

SELECT *
FROM superstore
ORDER BY CAST(sales AS REAL) DESC
LIMIT 10;

-- Query 4: Total Sales by Category

SELECT
    category,
    ROUND(SUM(CAST(sales AS REAL)),2) AS total_sales
FROM superstore
GROUP BY category;

-- Query 5: Categories with Sales Greater Than 700000

SELECT
    category,
    ROUND(SUM(CAST(sales AS REAL)),2) AS total_sales
FROM superstore
GROUP BY category
HAVING total_sales > 700000;

-- Query 6: Total Profit by Region

SELECT
    region,
    ROUND(SUM(CAST(profit AS REAL)), 2) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_profit DESC;

-- Query 7: Top 5 Cities by Sales

SELECT
    city,
    ROUND(SUM(CAST(sales AS REAL)), 2) AS total_sales
FROM superstore
GROUP BY city
ORDER BY total_sales DESC
LIMIT 5;


-- Query 8: Products with Sales Above Average

SELECT *
FROM superstore
WHERE CAST(sales AS REAL) >
(
    SELECT AVG(CAST(sales AS REAL))
    FROM superstore
);


-- Query 9: CTE - Sales by Category

WITH category_sales AS
(
    SELECT
        category,
        ROUND(SUM(CAST(sales AS REAL)),2) AS total_sales
    FROM superstore
    GROUP BY category
)

SELECT *
FROM category_sales;


-- Query 10: ROW_NUMBER - Rank Cities by Sales

SELECT
    city,
    ROUND(SUM(CAST(sales AS REAL)),2) AS total_sales,
    ROW_NUMBER() OVER
    (
        ORDER BY SUM(CAST(sales AS REAL)) DESC
    ) AS row_num
FROM superstore
GROUP BY city
LIMIT 10;


-- Query 11: RANK Cities by Sales

SELECT
    city,
    ROUND(SUM(CAST(sales AS REAL)),2) AS total_sales,
    RANK() OVER
    (
        ORDER BY SUM(CAST(sales AS REAL)) DESC
    ) AS sales_rank
FROM superstore
GROUP BY city
LIMIT 10;

-- Query 12: Create View for Regional Profit

CREATE VIEW regional_profit AS
SELECT
    region,
    ROUND(SUM(CAST(profit AS REAL)),2) AS total_profit
FROM superstore
GROUP BY region;



-- Query 13: LAG Function

SELECT
    city,
    ROUND(SUM(CAST(sales AS REAL)),2) AS total_sales,
    LAG(
        ROUND(SUM(CAST(sales AS REAL)),2)
    ) OVER (
        ORDER BY SUM(CAST(sales AS REAL)) DESC
    ) AS previous_sales
FROM superstore
GROUP BY city
LIMIT 10;



-- Query 14: LEAD Function

SELECT
    city,
    ROUND(SUM(CAST(sales AS REAL)),2) AS total_sales,
    LEAD(
        ROUND(SUM(CAST(sales AS REAL)),2)
    ) OVER (
        ORDER BY SUM(CAST(sales AS REAL)) DESC
    ) AS next_sales
FROM superstore
GROUP BY city
LIMIT 10;


-- JOIN Note:
-- The Sample Superstore dataset was imported as a single table.
-- Therefore, JOIN operations were not applicable in this project.