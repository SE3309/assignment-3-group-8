-- Method 1: Standard INSERT INTO Command
INSERT INTO Inventory (product_id, quantity_in_stock, price, description, size, color, category, supplier_id)
VALUES (1, 50, 19.99, 'Comfortable cotton t-shirt', 'M', 'Blue', 'Apparel', 101);

-- Method 2: INSERT INTO ... SELECT Command
-- Create a temporary table with sample data
CREATE TEMPORARY TABLE TempInventory (
    product_id INT, quantity_in_stock INT, price DECIMAL(10, 2), description TEXT, 
    size VARCHAR(50), color VARCHAR(50), category VARCHAR(100), supplier_id INT
);

-- Insert data into TempInventory
INSERT INTO TempInventory VALUES
(2, 20, 39.99, 'Stylish denim jeans', 'L', 'Black', 'Apparel', 102);

-- Insert into Inventory using SELECT
INSERT INTO Inventory (product_id, quantity_in_stock, price, description, size, color, category, supplier_id)
SELECT * FROM TempInventory;

-- Method 3: Multi-row INSERT INTO Command
INSERT INTO Inventory (product_id, quantity_in_stock, price, description, size, color, category, supplier_id)
VALUES 
(3, 15, 59.99, 'Premium leather jacket', 'XL', 'Brown', 'Outerwear', 103),
(4, 100, 9.99, 'Basic cotton socks', 'One Size', 'White', 'Accessories', 104);

-- Verify
SELECT * FROM Inventory;
