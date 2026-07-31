-- Staging Counts

SELECT COUNT(*) AS customers
FROM stg_customers;

SELECT COUNT(*) AS orders
FROM stg_orders;

SELECT COUNT(*) AS order_items
FROM stg_order_items;

SELECT COUNT(*) AS products
FROM stg_products;

SELECT COUNT(*) AS sellers
FROM stg_sellers;

-- Warehouse Counts

SELECT COUNT(*) AS dim_customer
FROM dim_customer;

SELECT COUNT(*) AS dim_product
FROM dim_product;

SELECT COUNT(*) AS dim_seller
FROM dim_seller;

SELECT COUNT(*) AS dim_date
FROM dim_date;

SELECT COUNT(*) AS fact_sales
FROM fact_sales;

-- Revenue Validation

SELECT
    ROUND(CAST(SUM(total_amount) AS NUMERIC),2)
    AS total_revenue
FROM fact_sales;