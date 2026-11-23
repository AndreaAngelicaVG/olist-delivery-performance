-- Validation 1: Order ID validation
-- Objective: Compare the total number of orders with number of orders ID to verify that each order has a unique identifier

SELECT
 COUNT(*) AS total_registers,
 COUNT(DISTINCT order_id) AS total_orders
FROM olist-ecommerce-1.olist_full_dataset.olist_orders_dataset
