-- обрахунок середього чеку в чоловіків
SELECT c.gender, c.acquisition_channel, 
SUM(purchase_amount) AS total_amount,
COUNT (order_id) AS total_orders,
AVG (purchase_amount) AS average_amount
FROM orders o 
LEFT JOIN customers c 
ON o.user_id = c.user_id
WHERE c.gender = 'Male'
GROUP BY c.acquisition_channel
ORDER BY average_amount DESC
;

-- обрахунок середнього чеку в жінок
SELECT c.gender, c.acquisition_channel, 
SUM(purchase_amount) AS total_amount,
COUNT (order_id) AS total_orders,
AVG (purchase_amount) AS average_amount
FROM orders o 
LEFT JOIN customers c 
ON o.user_id = c.user_id
WHERE c.gender = 'Female'
GROUP BY c.acquisition_channel
ORDER BY average_amount DESC 
;
