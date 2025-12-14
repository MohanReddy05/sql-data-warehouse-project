/*
---------------------------------------------------------------------------
Object Name:   Monthly Sales with Running Total
Description:   Calculates total sales for each month and the cumulative 
               (running) total of sales over time.
---------------------------------------------------------------------------
*/

SELECT 
    t.order_year,
    t.order_month,
    t.total_sales,
    -- Calculate the running total of sales ordered by year and month
    SUM(t.total_sales) OVER (ORDER BY t.order_year, t.order_month) AS running_total_sales
FROM
(
    -- Subquery (t) calculates monthly total sales
    SELECT
        YEAR(order_date)               AS order_year,
        MONTH(order_date)              AS order_month,
        SUM(sales_amount)              AS total_sales
    FROM
        gold.fact_sales
    WHERE 
        order_date IS NOT NULL
    GROUP BY 
        order_year, 
        order_month
) AS t
ORDER BY 
    t.order_year, 
    t.order_month;
