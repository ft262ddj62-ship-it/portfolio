#Пример вложенного запроса - поиск клиентов, которые сделали больше заказов, чем средний клиент

SELECT 
customer_id,
COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > (
SELECT AVG(order_count)
FROM (
SELECT COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
) AS avg_orders
);
