# Anomaly Analysis

## Insert Anomaly
In the orders_flat.csv, a new product cannot be added unless it is associated with an order.

For example, if we want to add a new product (e.g., "Laptop") but no order has been placed yet, we cannot insert it into the table because order_id is required.

Columns involved: product_name, order_id  
Example rows: No standalone row exists for products without orders.



## Update Anomaly
Customer details are repeated across multiple rows. If a customer’s information changes, it must be updated in multiple places.

For example, if a customer from Mumbai appears in multiple rows (e.g., row 5 and row 18), and their city changes, all those rows must be updated. Missing even one row will lead to inconsistent data.

Columns involved: customer_name, city  
Example rows: Row 5, Row 18 (same customer repeated)



## Delete Anomaly
If an order is deleted, important related data may also be lost.

For example, if a customer has only one order and that row is deleted, all information about that customer is also lost.

Columns involved: customer_id, order_id  
Example rows: A row where a customer appears only once

------------------------------------------------------

# Normalization Justification

- At first glance, storing all information in a single table such as orders_flat.csv may seem simpler, but it creates redundancy and increases the risk of data inconsistencies.

- In the dataset, customer information such as customer_id, customer_name, customer_email, and customer_city is repeated for every order placed by the same customer.

- For example, if a customer with customer_id = C002 places multiple orders, their details appear in multiple rows with different order_id values.

- This leads to an **update anomaly**. If the customer’s city changes from "Delhi" to "Mumbai", all rows must be updated. Missing even one row results in inconsistent data.

- A similar issue exists with product data. Fields like product_id, product_name, category, and unit_price are repeated for every order containing that product.

- If the price of a product changes, all rows must be updated, increasing the risk of errors and making maintenance difficult.

- There is also a **delete anomaly**. If a product appears in only one order and that order is deleted, the product information is also lost.

- Similarly, deleting the only order of a customer removes all information about that customer.

- These issues make the database unreliable and inefficient.

- Normalization solves these problems by dividing the data into separate tables such as Customers, Products, Orders, Order_Items, and Sales_Rep.

- Each table stores only one type of data, which reduces redundancy.

- This ensures that updates are made in one place, prevents accidental data loss, and improves data consistency.

- Therefore, normalization is not over-engineering but an essential practice for maintaining data integrity, scalability, and efficient database management.









