SELECT 
c.city,
COUNT(o.order_id) AS total_orders,
SUM(o.total_amount) AS total_revenue,
AVG(o.total_amount) AS avg_order_value
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC;
