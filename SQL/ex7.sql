-- View 1: User Orders Summary
CREATE VIEW UserOrdersSummary AS
SELECT 
    User.user_id,
    User.username,
    COUNT(Orders.order_id) AS total_orders,
    SUM(Orders.total_amount) AS total_spent
FROM User
LEFT JOIN Orders ON User.user_id = Orders.user_id
GROUP BY User.user_id, User.username;

-- View 2: Top-Selling Categories
CREATE VIEW TopSellingCategories AS
SELECT 
    Inventory.category,
    SUM(OrderItems.quantity) AS total_quantity_sold
FROM Inventory
JOIN OrderItems ON Inventory.product_id = OrderItems.product_id
GROUP BY Inventory.category
ORDER BY total_quantity_sold DESC;

-- Query 1: Fetch User Orders Summary
SELECT * FROM UserOrdersSummary;

-- Query 2: Fetch Top-Selling Categories
SELECT * FROM TopSellingCategories;

-- Attempt to Modify the UserOrdersSummary View
INSERT INTO UserOrdersSummary (user_id, username, total_orders, total_spent)
VALUES (3001, 'NewUser', 0, 0);
