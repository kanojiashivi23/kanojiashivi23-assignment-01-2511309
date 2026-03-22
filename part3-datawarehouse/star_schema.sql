-- DIMENSION TABLE: DATE
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    year INT,
    month INT,
    day INT
);

-- DIMENSION TABLE: STORE
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    store_city VARCHAR(100)
);


-- DIMENSION TABLE: PRODUCT
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);


--Fact Table
CREATE TABLE fact_sales(
  sale_id INT PRIMARY KEY,
  date_id INT
  store_id INT
  product_id INT
  units_sold INT,
  unit_price DECIMAL(10,2),
  total_sales DECIMAL(12,2),

  FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
  FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
  FOREIGN KEY (products_id) REFERENCES dim_product(product_id)
);


INSERT INTO dim_dates VALUES
(1, '2023-08-29',2023,8,29),
(2, '2023-12-12', 2023, 12, 12),
(3, '2023-02-05', 2023, 2, 5),
(4, '2023-02-20', 2023, 2, 20),
(5, '2023-01-15', 2023, 1, 15);


INSERT INTO dim_store VALUES
(1, 'Chennai Anna', 'Chennai'),
(2, 'Delhi South', 'Delhi'),
(3, 'Mumbai Central', 'Mumbai');


INSERT INTO dim_product VALUES
(1, 'Laptop Pro', 'Electronics'),
(2, 'Smartphone X', 'Electronics'),
(3, 'Jeans Classic', 'Clothing'),
(4, 'Milk Pack', 'Groceries'),
(5, 'Rice Bag', 'Groceries');

--total_sales = units_sold * unit_price

INSERT INTO fact_sales VALUES
(1,1,1,1,3,49262.78,147788.34),
(2,2,1,2,11,23226.12,255487.32),
(3,3,1,2,20,48703.39,974067.80),
(4,4,2,3,14,23226.12,325165.68),
(5,5,1,1,10,58851.01,588510.10),
(6,1,2,4,5,120.50,602.50),
(7,2,3,5,8,950.00,7600.00),
(8,3,2,1,2,49262.78,98525.56),
(9,4,3,3,6,2500.00,15000.00),
(10,5,1,4,7,120.50,843.50);


        dim_date
           |
           |
dim_store --- fact_sales --- dim_product







  


