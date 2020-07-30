connection: "hashmap_aws_snowflake_instance"
label: "Hashmap Cloud Usage"

include: "/views/cloud_usage/*.view.lkml"

datagroup: cloud_usage_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "2 hour"
}

persist_with: cloud_usage_default_datagroup

explore: hashmap_aws_costs {
  label: "AWS Costs"
}


explore: hashmap_azure_costs {
  label: "Azure Costs"
}

explore: snowflake_warehouse_metering_history{
  label: "Snowflake Compute Costs"
}

explore: task_usage_history{
  label: "Snowflake Task Usage History"
}

explore: hashmap_cloud_costs {
  label: "Combined Cloud Costs"
}
