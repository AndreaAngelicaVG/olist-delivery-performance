-- Project: Olist Delivery Performance Analysis
-- Analysis: 01 - Data Exploration
--
-- Objective:
-- How many orders are registered in the dataset, and how are they distributed across different order statuses?
--
-- Source:
-- olist_full_dataset.olist_orders_dataset
--
-- Analysis:
-- Count the orders across order statuses

SELECT
 order_status,
 COUNT(*) AS count_orders
FROM 
  `olist-ecommerce-1.olist_full_dataset.olist_orders_dataset`
GROUP BY 
  order_status
ORDER BY 
  count_orders DESC;
