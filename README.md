conda create -n dbt python=3.7
conda activate dbt
pip install --U dbt==0.19.0
pip install markupsafe==2.0.1

https://quickstarts.snowflake.com/guide/data_engineering_with_apache_airflow/index.html?index=..%2F..index#2

## initialize project + subfolder
dbt init dbt

# create packages.yml profiles.yml and update dbt_project.yml

cd dbt

## install dependencies
dbt deps


dbt test --profiles-dir .

## seed csv
cd dbt && dbt seed --profiles-dir .

## daily_transform
cd dbt && dbt run --models transform --profiles-dir .

## daily_analysis
cd dbt && dbt run --models analysis --profiles-dir .