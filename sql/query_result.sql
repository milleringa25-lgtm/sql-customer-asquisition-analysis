-- обрахунок середього чеку в чоловіків
SELECT c.gender AS male_users, c.acquisition_channel, 
SUM(purchase_amount) AS male_revenue,
COUNT (order_id) AS male_orders,
AVG (purchase_amount) AS avg_check
FROM orders o 
LEFT JOIN customers c 
ON o.user_id = c.user_id
WHERE c.gender = 'Male'
GROUP BY c.acquisition_channel
ORDER BY male_revenue DESC 
;

-- обрахунок середнього чеку в жінок
SELECT c.gender AS female_users, c.acquisition_channel, 
SUM(purchase_amount) AS female_revenue,
COUNT (order_id) AS female_orders,
AVG (purchase_amount) AS avg_check
FROM orders o 
LEFT JOIN customers c 
ON o.user_id = c.user_id
WHERE c.gender = 'Female'
GROUP BY c.acquisition_channel
ORDER BY female_revenue DESC 
LIMIT 5
;
