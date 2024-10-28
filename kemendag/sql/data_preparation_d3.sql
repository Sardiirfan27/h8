CREATE TABLE sales (
    order_id INT PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    month VARCHAR(20),
    quantity INT,
    price_per_unit DECIMAL(10, 2)
);

INSERT INTO sales (order_id, product, category, month, quantity, price_per_unit) VALUES
(1, 'Laptop', 'Electronics', 'January', 2, 1500),
(2, 'Laptop', 'Electronics', 'January', 3, 1500),
(3, 'Tablet', 'Electronics', 'January', 5, 300),
(4, 'Smartphone', 'Electronics', 'February', 4, 800),
(5, 'Table', 'Furniture', 'February', 6, 600),
(6, 'Laptop', 'Electronics', 'February', 1, 1500),
(7, 'Chair', 'Furniture', 'January', 2, 250),
(8, 'Laptop', 'Electronics', 'March', 2, 1500),
(9, 'Sofa', 'Furniture', 'March', 1, 1200),
(10, 'TV', 'Electronics', 'March', 2, 2000);
