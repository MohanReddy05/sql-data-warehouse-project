/*
========================================================================
              Calculate the key metrics of business
========================================================================
*/
-- Find the total sales
SELECT 
	SUM(sales_amount) AS total_sales
FROM gold.fact_sales;

-- Find how many itmes are sold
SELECT
	SUM(quantity ) AS total_items_sold
FROM
	gold.fact_sales;

-- Find average selling price
SELECT
	AVG(price) AS average_price
FROM
	gold.fact_sales;

-- Find toatal number of order
SELECT
	COUNT(DISTINCT order_number) AS total_orders
FROM
	gold.fact_sales;

-- Find total number of products
SELECT 
	COUNT(DISTINCT product_id ) AS total_products
FROM 
	gold.dim_product;

-- Find total Number of Customers
SELECT 
	COUNT(DISTINCT customer_id) AS total_customers
FROM
	gold.dim_customer;

-- Find the total number of Customers that placed an order
SELECT
	COUNT(DISTINCT customer_key ) AS total_ordered_customers
FROM gold.fact_sales;

/*
========================================================================
       Generate a report that shows all key metrics of busines
========================================================================
*/
SELECT 
	'Total Sales' as measure_name,
	SUM(sales_amount) AS measure_value
FROM gold.fact_sales
UNION ALL 
SELECT
	'Total Items Sold',
	SUM(quantity )
FROM
	gold.fact_sales
UNION ALL
SELECT
	'Average Selling Price',
	AVG(price)
FROM gold.fact_sales
UNION ALL
SELECT
	'Total Number of Orders',
	COUNT(DISTINCT order_number)
FROM gold.fact_sales
UNION ALL
SELECT 
	'Total Number of Products',
	COUNT(DISTINCT product_id )
FROM
	gold.dim_product
UNION ALL
SELECT
	'Total Customers',
	COUNT(DISTINCT customer_id)
FROM 
	gold.dim_customer
UNION ALL
SELECT 
	'No. of customers who placed order',
	COUNT(DISTINCT customer_key)
FROM
	gold.fact_sales;


/*
========================================================================
                               OUTPUT
========================================================================
|               mesure_name          |        measure_value            |
------------------------------------------------------------------------
| Total Sales	                     |                   29355985.0000 |
| Total Items Sold                   |                      60423.0000 |
| Average Selling Price	             |                        486.0378 |
| Total Number of Orders	         |                      27659.0000 |
| Total Number of Products	         |                        295.0000 |
| Total Customers	                 |                      18484.0000 |
| No. of customers who placed order	 |                      18484.0000 |
------------------------------------------------------------------------
*/






