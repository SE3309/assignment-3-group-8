-- User Table
CREATE TABLE User (
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    shipping_address VARCHAR(255),
    billing_address VARCHAR(255),
    phone_number VARCHAR(20)
);

-- Shoppingcart Table
CREATE TABLE Shoppingcart (
    shoppingcart_id INT PRIMARY KEY,
    list_of_items TEXT
);

-- Inventory Table
CREATE TABLE Inventory (
    product_id INT PRIMARY KEY,
    quantity_in_stock INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT,
    size VARCHAR(50),
    color VARCHAR(50),
    category VARCHAR(100),
    supplier_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Review Table
CREATE TABLE Review (
    review_id INT PRIMARY KEY,
    review_description TEXT NOT NULL
);

-- Updated Order Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT NOT NULL, 
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    order_status VARCHAR(50),
    shipping_address VARCHAR(255),
    billing_address VARCHAR(255),
    review_id INT,
    FOREIGN KEY (review_id) REFERENCES Review(review_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);


-- OrderItems Table
CREATE TABLE OrderItems (
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    category VARCHAR(100),
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Inventory(product_id)
);

-- Voucher Table
CREATE TABLE Voucher (
    voucher_id INT PRIMARY KEY,
    voucher_type VARCHAR(50) NOT NULL,
    clothing_type VARCHAR(100),
    voucher_amount DECIMAL(10, 2) NOT NULL
);

-- VoucherOrders Table
CREATE TABLE VoucherOrders (
    voucher_id INT,
    order_id INT,
    new_total DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (voucher_id, order_id),
    FOREIGN KEY (voucher_id) REFERENCES Voucher(voucher_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- RecommendedItems Table
CREATE TABLE RecommendedItems (
    recommendation_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (product_id) REFERENCES Inventory(product_id)
);

DESCRIBE User;

DESCRIBE Shoppingcart;

DESCRIBE Inventory;

DESCRIBE Orders;

DESCRIBE Review;

DESCRIBE OrderItems;

DESCRIBE Voucher;

DESCRIBE VoucherOrders;

DESCRIBE RecommendedItems;
