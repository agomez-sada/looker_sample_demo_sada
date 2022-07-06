#!/bin/bash

printf "Enter the Project ID:"
read project_id
printf "\nEnter Dataset ID:"
read dataset_id



printf "\n..................Start Loading distribution_centers..................\n\n"
bq --location=us load --source_format=CSV  --skip_leading_rows=1 ${project_id}:${dataset_id}.distribution_centers \
gs://looker_blueprint/ecommerce_sample_csv/distribution_centers.csv ./schema/distribution_centers.json
printf "..................Successfully Loaded distribution_centers !!!..................\n\n"

printf "..................Start Loading events..................\n\n"
bq --location=us load --source_format=CSV  --skip_leading_rows=1 --time_partitioning_field created_at --time_partitioning_type DAY ${project_id}:${dataset_id}.events \
gs://looker_blueprint/ecommerce_sample_csv/events.csv ./schema/events.json
printf "..................Successfully Loaded events !!!..................\n\n"

printf "..................Start Loading inventory_items..................\n\n"
bq --location=us load --source_format=CSV  --skip_leading_rows=1 --time_partitioning_field created_at --time_partitioning_type DAY ${project_id}:${dataset_id}.inventory_items \
gs://looker_blueprint/ecommerce_sample_csv/inventory_items.csv ./schema/inventory_items.json
printf "..................Successfully Loaded inventory_items !!!..................\n\n"

printf "\n\n..................Start Loading order_items..................\n\n"
bq --location=us load --source_format=CSV  --skip_leading_rows=1 --time_partitioning_field created_at --time_partitioning_type DAY ${project_id}:${dataset_id}.order_items \
gs://looker_blueprint/ecommerce_sample_csv/order_items.csv ./schema/order_items.json
printf "..................Successfully Loaded order_items !!!..................\n\n"

printf "..................Start Loading products..................\n\n"
bq --location=us load --source_format=CSV  --skip_leading_rows=1 ${project_id}:${dataset_id}.products \
gs://looker_blueprint/ecommerce_sample_csv/products.csv ./schema/products.json
printf "..................Successfully Loaded products !!!..................\n\n"

printf "..................Start Loading users..................\n\n"
bq --location=us load --source_format=CSV  --skip_leading_rows=1 ${project_id}:${dataset_id}.users \
gs://looker_blueprint/ecommerce_sample_csv/users.csv ./schema/users.json
printf "..................Successfully Loaded users !!!..................\n\n"
