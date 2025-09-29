-- -------------------------------------------------------------------------------------------------------------------------
-- Objective 2: Explore the orders table.
-- What is the data range of the table.
-- How many orders were made within the data range.
-- How many item were ordered within the data range?
-- Which orders had the most no. of items?
-- How many orders had more than 12 items?

-- 1. View the order details table.
ALTER TABLE order_details RENAME COLUMN `ï»¿order_details_id` TO `order_details_id`;
SELECT * FROM order_details;
-- 2. What is the data range of the table?
SELECT *
FROM order_details
ORDER BY order_date;

SELECT MIN(order_date), MAX(order_date) FROM order_details;
-- 3. How many orders were made within this data range?

-- 4. How many items were ordered within this data range?

-- 5. Which orders had the most number of items?

-- 6. How many orders had more than 12 items?