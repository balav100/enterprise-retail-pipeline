def transform(
    customers,
    orders,
    order_items,
    products,
    payments,
    sellers
):

    customers = customers.drop_duplicates()

    orders = orders.drop_duplicates()

    order_items = order_items.drop_duplicates()

    products = products.fillna(0)

    payments = payments.fillna(0)

    sellers = sellers.drop_duplicates()

    return (
        customers,
        orders,
        order_items,
        products,
        payments,
        sellers
    )