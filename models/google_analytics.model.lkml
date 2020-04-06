connection: "hashmap_aws_snowflake_instance"

# include all the views
include: "/views/**/*.view"

datagroup: google_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_analytics_default_datagroup

explore: landing_traffic {}

explore: site_traffic {}

explore: all_traffic {}

explore: traffic_by_interest_affinity_category {}

explore: traffic_by_interest_in_market_category {}
