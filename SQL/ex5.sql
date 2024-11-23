-- Query 1: Retrieve users from a specific address
SELECT username, email, shipping_address 
FROM User 
WHERE shipping_address = '123 Main St';

-- Query 2: Retrieve order details with user information
SELECT Orders.order_id, Orders.total_amount, User.username
FROM Orders
JOIN User ON Orders.user_id = User.user_id;

-- Query 3: Retrieve order items with product descriptions and their quantities, grouped by order
SELECT Orders.order_id, Inventory.description, OrderItems.quantity
FROM Orders
JOIN OrderItems ON Orders.order_id = OrderItems.order_id
JOIN Inventory ON OrderItems.product_id = Inventory.product_id;

-- Query 4: Find the total number of orders placed by each user
SELECT User.username, COUNT(Orders.order_id) AS total_orders
FROM User
JOIN Orders ON User.user_id = Orders.user_id
GROUP BY User.username;

-- Query 5: Find all products that were ordered by users who live on '123 Main St'
SELECT DISTINCT Inventory.description 
FROM Inventory
JOIN OrderItems ON Inventory.product_id = OrderItems.product_id
WHERE OrderItems.order_id IN (
    SELECT Orders.order_id 
    FROM Orders
    JOIN User ON Orders.user_id = User.user_id
    WHERE User.shipping_address = '123 Main St'
);

-- Query 6: Find users who have placed at least one order
SELECT username 
FROM User 
WHERE EXISTS (
    SELECT 1 
    FROM Orders 
    WHERE Orders.user_id = User.user_id
);

-- Query 7: Find all categories of products that have been ordered more than 5 times
SELECT OrderItems.category, COUNT(*) AS total_orders
FROM OrderItems
GROUP BY OrderItems.category
HAVING COUNT(*) > 5;
