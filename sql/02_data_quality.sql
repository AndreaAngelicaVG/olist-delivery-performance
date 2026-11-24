-- Validation 1: Order ID validation
-- Objective: Compare the total number of orders with number of orders ID to verify that each order has a unique identifier

SELECT
 COUNT(*) AS total_rows,
 COUNT(DISTINCT order_id) AS total_unique_orders
FROM 
 `olist-ecommerce-1.olist_full_dataset.olist_orders_dataset`;


-- Validation 2: Missing Delivery Dates
-- Objective: Identify if there's missing delivery dates for orders with status "Delivered"

SELECT
 order_id,
 order_status,
 order_delivered_customer_date
FROM 
 `olist-ecommerce-1.olist_full_dataset.olist_orders_dataset`
WHERE order_status = 'delivered'
AND order_delivered_customer_date IS NULL;


-- Validation 3: Chronological Consistency
-- Objective: Confirm if the dates have chronological consistency between the statuses "Created" and "Delivered"

SELECT
 order_id,
 order_purchase_timestamp,
 order_delivered_customer_date
FROM 
  `olist-ecommerce-1.olist_full_dataset.olist_orders_dataset`
WHERE order_purchase_timestamp > order_delivered_customer_date
