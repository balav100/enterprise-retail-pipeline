from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime

def load_customers():
    print("Loading Customers")

def load_orders():
    print("Loading Orders")

def create_warehouse():
    print("Building Star Schema")

with DAG(
    dag_id="retail_warehouse_pipeline",
    start_date=datetime(2025,1,1),
    schedule="@daily",
    catchup=False
) as dag:

    task1 = PythonOperator(
        task_id="load_customers",
        python_callable=load_customers
    )

    task2 = PythonOperator(
        task_id="load_orders",
        python_callable=load_orders
    )

    task3 = PythonOperator(
        task_id="build_warehouse",
        python_callable=create_warehouse
    )

    task1 >> task2 >> task3