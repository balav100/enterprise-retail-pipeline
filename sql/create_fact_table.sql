DROP TABLE IF EXISTS fact_sales;

CREATE TABLE fact_sales (
    order_id VARCHAR(100),
    customer_id VARCHAR(100),
    product_id VARCHAR(100),
    seller_id VARCHAR(100),
    order_date DATE,
    price NUMERIC,
    freight_value NUMERIC,
    total_amount NUMERIC
);