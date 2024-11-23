-- 1. INSERT Command: Insert rows into OrderItems based on a query
INSERT INTO OrderItems (order_id, product_id, quantity, category)
SELECT Orders.order_id, Inventory.product_id, 2 AS quantity, Inventory.category
FROM Orders
JOIN Inventory ON Orders.order_id % 10 = Inventory.product_id % 10
LIMIT 5;

-- 2. UPDATE Command: Update order_status for orders before a specific date
UPDATE Orders
SET order_status = 'Cancelled'
WHERE order_date < '2024-11-15';

-- 3. DELETE Command: Delete recommended items for users with no orders
DELETE FROM RecommendedItems
WHERE user_id NOT IN (
    SELECT DISTINCT user_id
    FROM Orders
);
