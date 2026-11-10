SELECT * 
FROM sales_data;

-- Which products or categories generate the highest revenue?
SELECT
    category,
    SUM(total_amount) AS total_revenue
FROM sales_data
GROUP BY category
ORDER BY total_revenue DESC;

-- Which product generate the highest revenue?
SELECT
    product_name,
    SUM(total_amount) AS total_revenue
FROM sales_data
GROUP BY product_name
ORDER BY total_revenue DESC;

--Which region generates the highest sales and profit?
SELECT
    city,
    SUM(total_amount) AS total_amount
FROM sales_data
GROUP BY city
ORDER BY total_amount DESC;

--Which Gender give more sales?
SELECT 
    gender,
	SUM(total_amount) AS revenue
FROM sales_data
GROUP BY gender
ORDER BY 2 DESC;



