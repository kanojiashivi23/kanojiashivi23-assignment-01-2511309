## Anomaly Analysis

### Insert Anomaly
In the orders_flat.csv, a new product cannot be added unless it is associated with an order.

For example, if we want to add a new product (e.g., "Laptop") but no order has been placed yet, we cannot insert it into the table because order_id is required.

Columns involved: product_name, order_id  
Example rows: No standalone row exists for products without orders.



### Update Anomaly
Customer details are repeated across multiple rows. If a customer’s information changes, it must be updated in multiple places.

For example, if a customer from Mumbai appears in multiple rows (e.g., row 5 and row 18), and their city changes, all those rows must be updated. Missing even one row will lead to inconsistent data.

Columns involved: customer_name, city  
Example rows: Row 5, Row 18 (same customer repeated)



### Delete Anomaly
If an order is deleted, important related data may also be lost.

For example, if a customer has only one order and that row is deleted, all information about that customer is also lost.

Columns involved: customer_id, order_id  
Example rows: A row where a customer appears only once

