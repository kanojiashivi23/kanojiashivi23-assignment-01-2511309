## Storage Systems

In this architecture, different storage systems are used to support the hospital’s four goals efficiently.

The **OLTP database (PostgreSQL)** is used to store operational hospital data such as patient records, treatment history, and billing information. This database supports the hospital’s daily operations and ensures that patient data can be updated quickly and reliably.

A **Data Lake** is used to store raw and large-scale data such as ICU monitoring logs, doctor notes, and medical images. Since these data types can be structured, semi-structured, or unstructured, a data lake is suitable because it can store large volumes of different data formats without requiring strict schema definitions.

For reporting and analytics, a **Data Warehouse** is used. Cleaned and processed data from the data lake is loaded into the warehouse, where it is structured for analytical queries. The data warehouse supports the generation of monthly management reports such as bed occupancy statistics and department-wise hospital costs. Business intelligence dashboards connect to the warehouse to visualize this information.

To enable doctors to query patient history in natural language, a **Vector Database** is used. Patient documents, doctor notes, and medical history are converted into embeddings and stored in the vector database. When a doctor asks a question in plain English, the system searches the vector database to find the most relevant patient information.

Finally, a **Machine Learning model** uses historical treatment data stored in the data lake and warehouse to predict patient readmission risk. These predictions help doctors identify high-risk patients and take preventive action.

---

## OLTP vs OLAP Boundary

In this architecture, the **OLTP system** handles the hospital’s operational data processing. The OLTP database stores real-time transactional data such as patient admissions, treatments, billing, and updates to patient records. These systems prioritize fast inserts and updates because hospital staff constantly interact with them during daily operations.

The **OLAP system** begins once the operational data is transferred to the **Data Lake** for large-scale storage and processing. The data lake collects data from multiple sources including ICU monitoring devices, doctor notes, and hospital databases. This environment is designed for large data storage and processing rather than frequent transactional updates.

After processing and cleaning the data, it is moved to the **Data Warehouse**, which serves as the main analytical layer. The warehouse supports complex queries and reporting used by hospital management and analytics teams. BI dashboards and machine learning models rely on this analytical data.

Therefore, the boundary between OLTP and OLAP occurs **when operational data moves from the OLTP database into the data lake and warehouse for analysis and reporting**.

---

## Trade-offs

One major trade-off in this architecture is the **increased system complexity caused by using multiple storage systems** such as OLTP databases, data lakes, data warehouses, and vector databases.

While separating systems improves scalability and allows each component to specialize in a specific task, it also increases the complexity of data pipelines, maintenance, and system management. Data must be continuously transferred, transformed, and synchronized across multiple layers, which may introduce latency and operational overhead.

To mitigate this challenge, the hospital can implement **automated ETL pipelines and data orchestration tools**. These tools help manage data movement between systems and ensure data consistency. Monitoring systems can also be used to detect pipeline failures and ensure reliable data processing.

Despite the complexity, this architecture provides high scalability, flexibility, and strong analytical capabilities, making it suitable for an AI-powered healthcare data platform.
