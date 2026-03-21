-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL
);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Sales Representatives Table
CREATE TABLE sales_rep (
    rep_id INT PRIMARY KEY,
    rep_name VARCHAR(100) NOT NULL
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    rep_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES sales_rep(rep_id)
);

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES
(1, 'Amit', 'Mumbai'),
(2, 'Rahul', 'Delhi'),
(3, 'Sneha', 'Pune'),
(4, 'Priya', 'Mumbai'),
(5, 'Karan', 'Bangalore');

INSERT INTO products VALUES
(101, 'Laptop', 60000),
(102, 'Phone', 20000),
(103, 'Shoes', 3000),
(104, 'Watch', 5000),
(105, 'Headphones', 1500);

INSERT INTO sales_rep VALUES
(1, 'Raj'),
(2, 'Simran'),
(3, 'Aman'),
(4, 'Neha'),
(5, 'Vikas');

INSERT INTO orders VALUES
(1001, 1, 1, '2023-01-10'),
(1002, 2, 2, '2023-02-12'),
(1003, 3, 3, '2023-03-15'),
(1004, 4, 4, '2023-04-18'),
(1005, 5, 5, '2023-05-20');

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1002, 102, 2),
(3, 1003, 103, 1),
(4, 1004, 104, 3),
(5, 1005, 105, 2);

