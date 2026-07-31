DROP TABLE IF EXISTS dim_customer;
DROP TABLE IF EXISTS dim_product;
DROP TABLE IF EXISTS dim_seller;
DROP TABLE IF EXISTS dim_date;

CREATE TABLE dim_customer AS
SELECT DISTINCT
    customer_id,
    customer_city,
    customer_state
FROM stg_customers;

CREATE TABLE dim_product AS
SELECT DISTINCT
    product_id,
    product_category_name
FROM stg_products;

CREATE TABLE dim_seller AS
SELECT DISTINCT
    seller_id,
    seller_city,
    seller_state
FROM stg_sellers;

CREATE TABLE dim_date AS
SELECT DISTINCT
    CAST(order_purchase_timestamp AS DATE) AS order_date,
    EXTRACT(YEAR FROM order_purchase_timestamp::TIMESTAMP) AS year,
    EXTRACT(MONTH FROM order_purchase_timestamp::TIMESTAMP) AS month,
    EXTRACT(DAY FROM order_purchase_timestamp::TIMESTAMP) AS day
FROM stg_orders;