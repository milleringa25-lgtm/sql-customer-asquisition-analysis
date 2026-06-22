-- прорахунок ефективності джерел залучення
SELECT c.acquisition_channel, 
SUM(purchase_amount) AS total_amount,
COUNT (order_id) AS total_orders
FROM orders o 
LEFT JOIN customers c 
ON o.user_id = c.user_id
GROUP BY c.acquisition_channel
ORDER BY total_amount DESC 
;
