connection: "hashmap_aws_snowflake_instance"
label: "1 - Hashmap Cloud Usage"

include: "/views/cloud_usage/*.view.lkml"

datagroup: cloud_usage_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cloud_usage_default_datagroup

explore: hashmap_aws_costs {}
explore: hashmap_azure_costs {}
explore: snowflake_warehouse_metering_history{}
explore: hashmap_cloud_costs {}
