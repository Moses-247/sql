USE hotel_management;

-- Create Customer table
CREATE TABLE Customer (
    Customer_id VARCHAR(20) PRIMARY KEY,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_Tel INT
);

-- Create Product table
CREATE TABLE Product (
    Product_id VARCHAR(20) PRIMARY KEY,
    Product_Name VARCHAR(20) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price > 0)
);

-- Create Orders table
CREATE TABLE Orders (
    Customer_id VARCHAR(20),
    Product_id VARCHAR(20),
    Quantity INT,
    Total_amount DECIMAL(10, 2),
    OrderDate DATE DEFAULT CURDATE(),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id)
);


INSERT INTO Customer (Customer_id, Customer_Name, Customer_Tel) VALUES
('C001', 'Alice Johnson', 123456789),
('C002', 'Bob Smith', 987654321),
('C003', 'Charlie Brown', 555666777);

INSERT INTO Product (Product_id, Product_Name, Price, Category) VALUES
('P001', 'Laptop', 15000.00, 'Electronics'),
('P002', 'Tablet', 7000.00, 'Electronics'),
('P003', 'Chair', 8500.00, 'Furniture');

DESCRIBE Customer;
DESCRIBE Product;
DESCRIBE Orders;

