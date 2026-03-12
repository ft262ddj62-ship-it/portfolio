#Пример Join запроса,показывает соединение клиентов и заказов

SELECT 
c.first_name,
c.last_name,
o.order_id,
o.order_date,
o.total_amount
FROM customers c
JOIN orders o 
ON c.customer_id = o.customer_id
ORDER BY o.order_date DESC;

#Пример сложного запроса с несколькими объелинениями

SELECT 
p.category,
p.product_name,
SUM(oi.quantity) AS total_sold,
SUM(oi.quantity * p.price) AS revenue
FROM order_items oi
JOIN products p 
ON oi.product_id = p.product_id
JOIN orders o 
ON oi.order_id = o.order_id
GROUP BY p.category, p.product_name
ORDER BY revenue DESC;
