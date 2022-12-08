FROM apache/airflow:2.5.0-python3.8

USER airflow
RUN python -m pip install --upgrade pip
COPY requirements.txt
RUN pip install -r requirements.txt

# RUN pip install --no-cache-dir dbt==0.19.0

# RUN pip install --no-cache-dir dbt-snowflake
# RUN pip install --no-cache-dir dbt
