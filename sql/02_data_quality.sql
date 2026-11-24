-- Validation 1: Order ID validation
-- Objective: Compare the total number of orders with number of orders ID to verify that each order has a unique identifier

SELECT
 COUNT(*) AS total_rows,
 COUNT(DISTINCT order_id) AS total_unique_orders
FROM 
 `olist-ecommerce-1.olist_full_dataset.olist_orders_dataset`;


-- Validation 2: Missing Delivery Dates
-- Objective: Identify orders with missing delivery dates but status "Delivered"

SELECT
 order_id,
 order_status,
 order_delivered_customer_date
FROM 
 `olist-ecommerce-1.olist_full_dataset.olist_orders_dataset`
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NULL;


-- Validation 3: Chronological Consistency
-- Objective: Confirm the chronological consistency between the date when the purchase was made and the delivery date

SELECT
 order_id,
 order_purchase_timestamp,
 order_delivered_customer_date
FROM 
  `olist-ecommerce-1.olist_full_dataset.olist_orders_dataset`
WHERE order_purchase_timestamp > order_delivered_customer_date;


-- Validation 4: Status Consistency
-- Objective: Identify orders with recorded delivery dates but a status other than delivered

SELECT
order_id,
order_status,
order_delivered_customer_date
FROM 
 `olist-ecommerce-1.olist_full_dataset.olist_orders_dataset`
WHERE order_status != 'delivered'
  AND order_delivered_customer_date IS NOT NULL;
