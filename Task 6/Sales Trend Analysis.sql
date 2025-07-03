use task4da;
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(Revenue) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    ecommerce
GROUP BY 
    EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;