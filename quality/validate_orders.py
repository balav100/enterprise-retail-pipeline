import pandas as pd
import great_expectations as gx

df = pd.read_csv("data/olist_orders_dataset.csv")

gx_df = gx.from_pandas(df)

results = []

results.append(
    gx_df.expect_column_values_to_not_be_null("order_id")
)

results.append(
    gx_df.expect_column_values_to_not_be_null("customer_id")
)

results.append(
    gx_df.expect_column_values_to_be_unique("order_id")
)

print("\nDATA QUALITY RESULTS\n")

for r in results:
    print(r["success"])