INSERT INTO fact_sales
SELECT
    o.order_id,
    o.customer_id,
    oi.product_id,
    oi.seller_id,
    CAST(o.order_purchase_timestamp AS DATE) AS order_date,
    oi.price,
    oi.freight_value,
    (oi.price + oi.freight_value) AS total_amount
FROM stg_orders o
JOIN stg_order_items oi
    ON o.order_id = oi.order_id;