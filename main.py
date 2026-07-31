from etl.extract import extract
from etl.transform import transform
from etl.load import load

print("Extracting data...")

data = extract()

print("Transforming data...")

data = transform(*data)

print("Loading into PostgreSQL...")

load(*data)

print("ETL Completed Successfully")