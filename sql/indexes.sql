CREATE INDEX idx_fact_sales_order_date
ON fact_sales(order_date);

CREATE INDEX idx_fact_sales_customer
ON fact_sales(customer_id);

CREATE INDEX idx_fact_sales_product
ON fact_sales(product_id);

CREATE INDEX idx_fact_sales_seller
ON fact_sales(seller_id);