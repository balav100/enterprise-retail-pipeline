-- Update file paths according to your environment

COPY stg_customers
FROM '<DATA_PATH>/olist_customers_dataset.csv'
DELIMITER ','
CSV HEADER;

COPY stg_orders
FROM '<DATA_PATH>/olist_orders_dataset.csv'
DELIMITER ','
CSV HEADER;

COPY stg_order_items
FROM '<DATA_PATH>/olist_order_items_dataset.csv'
DELIMITER ','
CSV HEADER;

COPY stg_products
FROM '<DATA_PATH>/olist_products_dataset.csv'
DELIMITER ','
CSV HEADER;

COPY stg_sellers
FROM '<DATA_PATH>/olist_sellers_dataset.csv'
DELIMITER ','
CSV HEADER;