USE restaurant_data_db;
-- Objective 1: Explore the items table.
-- View menu items tables and write query to find no of item on the menu.
-- How many italian dishes are on the menu.
-- The least and most expensive italian dishes on the menu.
-- How many dish are in each category.
-- Average dish price within each category.
-- 1, View the menu items table.
SELECT * FROM menu_items;
ALTER TABLE menu_items RENAME COLUMN `ï»¿menu_item_id` TO `menu_item_id`;

-- 2. Find no. of item on menu.
SELECT COUNT(*)
FROM menu_items;

-- 3. What are the least/most expensive item on menu.
SELECT * FROM menu_items
ORDER BY price;

-- 3b. Most expensive item.
SELECT * FROM menu_items
ORDER BY price DESC;

-- 4. How many Italian Dishes are on the menu:
SELECT COUNT(*) FROM menu_items
WHERE category ='Italian';

-- 5. What are the least/most expensive Italian Dises
SELECT * FROM menu_items
WHERE category ='Italian'
ORDER BY price;

SELECT * FROM menu_items
WHERE category ='Italian'
ORDER BY price DESC;

-- 6. How many dishes in each category?
SELECT category, COUNT(menu_item_id) as num_dishes
FROM menu_items
GROUP BY category

