connection: "hashmap_aws_snowflake_instance"
label: "Google Analytics"

# include all the views
include: "/views/google_analytics/*.view"

datagroup: google_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_analytics_default_datagroup

explore: hourly_website_traffic {}
