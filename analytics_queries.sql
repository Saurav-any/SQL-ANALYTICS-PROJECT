-- =========================================
-- TOTAL REVENUE
-- =========================================
SELECT
    SUM(final_amount) 
FROM orders
WHERE order_status = 'Delivered';
-- =========================================
-- TOTAL DELIVERED ORDERS
-- =========================================
SELECT
    COUNT(order_id) 
FROM orders
WHERE order_status = 'Delivered';
-- =========================================
-- TOP CUSTOMERS
-- =========================================
SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.final_amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_status = 'Delivered'
GROUP BY c.customer_name
ORDER BY total_spent DESC;
-- =========================================
-- TOP RESTAURANTS
-- =========================================
SELECT
    r.restaurant_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.final_amount) AS revenue
FROM restaurants r
JOIN orders o
ON r.restaurant_id = o.restaurant_id
WHERE o.order_status = 'Delivered'
GROUP BY r.restaurant_name
ORDER BY revenue DESC;
-- =========================================
-- AVERAGE DELIVERY TIME
-- =========================================
SELECT
    AVG(delivery_time) AS avg_delivery_time
FROM orders
WHERE order_status = 'Delivered';
-- =========================================
-- MOST USED PAYMENT METHOD
-- =========================================
SELECT
    payment_method,
    COUNT(*) AS total_usage
FROM orders
GROUP BY payment_method
ORDER BY total_usage DESC;
-- =========================================
-- HIGHEST RATED RESTAURANTS
-- =========================================
SELECT
    r.restaurant_name,
    AVG(rt.restaurant_rating) AS avg_rating
FROM restaurants r
JOIN orders o
ON r.restaurant_id = o.restaurant_id
JOIN ratings rt
ON o.order_id = rt.order_id
GROUP BY r.restaurant_name
ORDER BY avg_rating DESC;
-- =========================================
-- DELIVERY PERFORMANCE ANALYSIS
-- USING CASE WHEN
-- =========================================
SELECT
    order_id,
    delivery_time,
    CASE
        WHEN delivery_time <= 20 THEN 'Fast Delivery'
        WHEN delivery_time BETWEEN 21 AND 35 THEN 'On Time'
        ELSE 'Late Delivery'
    END AS delivery_status
FROM orders
WHERE order_status = 'Delivered';
-- =========================================
-- DELIVERY PERFORMANCE ANALYSIS
-- USING CASE WHEN
-- =========================================
SELECT
    order_id,
    delivery_time,
    CASE
        WHEN delivery_time <= 20 THEN 'Fast Delivery'
        WHEN delivery_time BETWEEN 21 AND 35 THEN 'On Time'
        ELSE 'Late Delivery'
    END AS delivery_status
FROM orders
WHERE order_status = 'Delivered';