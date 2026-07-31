from sqlalchemy import create_engine
from config import *

engine = create_engine(
    f"postgresql+psycopg2://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
)

def load(
    customers,
    orders,
    order_items,
    products,
    payments,
    sellers
):

    customers.to_sql(
        "stg_customers",
        engine,
        if_exists="replace",
        index=False,
        method="multi",
        chunksize=5000
    )

    orders.to_sql(
        "stg_orders",
        engine,
        if_exists="replace",
        index=False,
        method="multi",
        chunksize=5000
    )

    order_items.to_sql(
        "stg_order_items",
        engine,
        if_exists="replace",
        index=False,
        method="multi",
        chunksize=5000
    )

    products.to_sql(
        "stg_products",
        engine,
        if_exists="replace",
        index=False,
        method="multi",
        chunksize=5000
    )

    payments.to_sql(
        "stg_payments",
        engine,
        if_exists="replace",
        index=False,
        method="multi",
        chunksize=5000
    )

    sellers.to_sql(
        "stg_sellers",
        engine,
        if_exists="replace",
        index=False,
        method="multi",
        chunksize=5000
    )

    print("All tables loaded successfully.")