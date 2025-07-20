-- First, drop existing tables if they exist 
DROP TABLE Products;
DROP TABLE Customers;
Drop Table Orders;

-- Create Products table to store product information
CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,               -- Unique identifier for each product
    name VARCHAR(20) NOT NULL,                   -- Product name (cannot be null)
    category VARCHAR(20) CHECK (category IN ('Electronics', 'Clothing', 'Grocery', 'Furniture')), -- Restricted to specific categories
    price DECIMAL(10,2) NOT NULL CHECK (price > 0), -- Price with 2 decimal places, must be positive
    stock_quantity INTEGER CHECK (stock_quantity >= 0) -- Inventory count, cannot be negative
);

-- Create Customers table to store customer information
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,              -- Unique identifier for each customer
    name VARCHAR(100) NOT NULL,                  -- Customer name (cannot be null)
    email VARCHAR(100) UNIQUE NOT NULL,          -- Email must be unique and not null
    phone VARCHAR(20) UNIQUE NOT NULL,           -- Phone must be unique and not null
    address VARCHAR(200) DEFAULT 'Not Provided'   -- Address with default value if not specified
);

-- Create Orders table to store order information
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,                   -- Unique identifier for each orders
    customer_id INTEGER NOT NULL,                   -- order name (cannot be null)
    order_date DATE DEFAULT SYSDATE,                -- DEFAULT SYSDATE automatically sets to current date/time if not specified
    total_amount NUMBER CHECK (total_amount > 0),   -- CHECK constraint ensures amount is always positive (> 0)
    Remarks_if_any VARCHAR2(4000) DEFAULT 'No Remarks', -- Optional remarks field for order notes
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) -- ensures customer_id exists in Customers table
);

-- Insert sample data into Customers table
INSERT INTO Customers (customer_id, name, email, phone, address) 
VALUES
(1, 'John Doe', 'john.doe@email.com', '9876543210', '123 Main St'),
(2, 'Jane Smith', 'jane.smith@email.com', '9823456789', '45 Elm St'),
(3, 'Alice Brown', 'alice.b@email.com', '9988776655', '78 Pine Ave'),
(4, 'Bob Johnson', 'bob.j@email.com', '9765432109', '90 Oak Lane'),
(5, 'Charlie Lee', 'charlie.l@email.com', '9234567890', 'Not Provided'), -- Using default address
(6, 'David White', 'david.w@email.com', '9678991234', '12 Maple St'),
(7, 'Emily Clark', 'emily.c@email.com', '9345678901', 'Not Provided'),  -- Using default address
(8, 'Frank Harris', 'frank.h@email.com', '9763214785', '56 Birch Road'),
(9, 'Grace Kelly', 'grace.k@email.com', '9757465864', '29 cedar Ave'),
(10, 'Henry Admas', 'henry.@email.com', '9382939493', '22 walnut Lane');

-- Insert sample data into Products table
INSERT INTO Products (product_id, name, category, price, stock_quantity) 
VALUES
(101, 'Apple iPhone 15', 'Electronics', 999.99, 10),     -- Electronics product
(102, 'Samsung Galaxy S23', 'Electronics', 899.99, 15),  -- Electronics product
(103, 'Leather Jacket', 'Clothing', 149.99, 25),        -- Clothing product
(104, 'HP Laptop', 'Electronics', 799.99, 8),           -- Electronics product
(105, 'Wooden Dining Table', 'Furniture', 499.99, 5),   -- Furniture product
(106, 'Nike Running Shoes', 'Clothing', 129.99, 20),    -- Clothing product
(107, 'LED TV 55"', 'Electronics', 699.99, 12),         -- Electronics product
(108, 'Rice 10kg', 'Grocery', 25.99, 50),               -- Grocery product
(109, 'Sofa Set (3+1+1)', 'Furniture', 999.99, 4),      -- Furniture product
(110, 'Organic Honey 500ml', 'Grocery', 15.99, 30);     -- Grocery product

-- Insert sample data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount, Remarks_if_any)
VALUES 
(1001, 1, '15-JAN-2024', 999.99, 'No Remarks'),        -- Order with no remarks
(1002, 2, '23-FEB-2024', 299.98, 'Delivered'),         -- Order delivered 
(1003, 3, '05-APR-2024', 129.99, 'Payment Pending'),   -- Order with pending payment 
(1004, 4, '19-MAY-2024', 899.99, 'No Remarks'),
(1005, 5, '23-MAY-2024', 799.99, 'Cancelled'),         -- Order cancelled 
(1006, 6, '22-JUL-2024', 499.99, 'Delivered'),  
(1007, 7, '25-JUL-2024', 129.99, 'No Remarks'), 
(1008, 8, '12-SEP-2024', 699.99, 'Refund Issued'),      -- Order with refund
(1009, 9, '20-SEP-2024', 25.99, 'No Remarks'),
(1010, 10, '23-SEP-2024', 15.99, 'Delivered');          -- Order delivered

-- Queries to retrieve the first 3 records from the three tables 
SELECT * FROM Customers FETCH FIRST 3 ROWS ONLY;
SELECT * FROM Products FETCH FIRST 3 ROWS ONLY;
SELECT * FROM Orders FETCH FIRST 3 ROWS ONLY;
