/*
=======================================================================
                       Ranking analysis
=======================================================================

             -- Ranking Dimensions by Measure

*/


-- Which 5 products generates highes revenue?
SELECT
	dp.product_name,
	SUM(fs.sales_amount) as revenue
FROM
	gold.fact_sales fs
LEFT JOIN 
	gold.dim_product dp 
ON
	fs.product_key = dp.product_key 
GROUP BY dp.product_name 
ORDER BY SUM(fs.sales_amount) DESC
LIMIT 5;

-- What are the 5 worst performing products in terms of sales?
SELECT
	dp.product_name,
	SUM(fs.sales_amount) as revenue
FROM
	gold.fact_sales fs
LEFT JOIN 
	gold.dim_product dp 
ON
	fs.product_key = dp.product_key 
GROUP BY dp.product_name 
ORDER BY SUM(fs.sales_amount) ASC 
LIMIT 5;

-- Top 10 customers who generates highes revenue?
SELECT
	CONCAT(dc.first_name ,' ',dc.last_name ) AS customer_name,
	SUM(fs.sales_amount) as revenue
FROM
	gold.fact_sales fs
LEFT JOIN 
	gold.dim_customer dc
ON
	fs.customer_key = dc.customer_key 
GROUP BY CONCAT(dc.first_name ,' ',dc.last_name )
ORDER BY SUM(fs.sales_amount) DESC
LIMIT 10;

-- 3 customers with fewest orders
SELECT
	CONCAT(dc.first_name ,' ',dc.last_name ) AS customer_name,
	COUNT(DISTINCT fs.order_number) AS total_orders
FROM 
	gold.fact_sales fs 
LEFT JOIN
	gold.dim_customer dc
ON
	fs.customer_key = dc.customer_key
GROUP BY customer_name
ORDER BY total_orders
LIMIT 3; 
