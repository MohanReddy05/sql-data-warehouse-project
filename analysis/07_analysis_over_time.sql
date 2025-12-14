/*
---------------------------------------------------------------------------
Object Name:   Sales Analysis Over Time

Description:   Aggregates total sales, customer count, and quantity sold
               grouped by year. Filters out null order dates.
---------------------------------------------------------------------------
*/

SELECT
    YEAR(order_date)               AS report_year,
    SUM(sales_amount)              AS total_sales,
    COUNT(DISTINCT customer_key)   AS total_customers,
    SUM(quantity)                  AS total_quantity
FROM
    gold.fact_sales
WHERE 
    order_date IS NOT NULL
GROUP BY 
    YEAR(order_date)
ORDER BY 
    report_year;

/*
---------------------------------------------------------------------------
Expected Output
---------------------------------------------------------------------------
year    sales       total_customers   total_quantity
2010    43,419      14                14
2011    7,075,088   2,216             2,216
2012    5,842,231   3,255             3,397
2013    16,344,613  17,427            52,807
2014    45,642      834               1,970
*/
