-- Objective 3: Analyze Customer Behavior
-- Combine the menu_items and order_details tables into a single table.
-- The least/most order item, what categories.
-- The top 5 orders that spent most money?
-- Views detail highest spend order.
-- Insight from highest spend order.
-- View details of top 5 highest spend orders. 

-- 1.Combine menu_items/order_details table into 1 table:
SELECT * FROM menu_items;
SELECT * FROM order_details;
SELECT * 
FROM order_details od LEFT JOIN menu_items mi
     ON od.item_id =  mi.menu_item_id;

-- 2.What were the least/most ordered item/what categories?
SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details od LEFT JOIN menu_items mi
     ON od.item_id =  mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases DESC;
     
     
