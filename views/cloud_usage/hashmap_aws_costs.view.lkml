view: hashmap_aws_costs {

  label: "AWS Costs"

  sql_table_name: "ANALYTICS"."HASHMAP_AWS_COSTS"
    ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: created_by {
    type: string
    sql: ${TABLE}."CREATED_BY" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: resource_id {
    type: string
    sql: ${TABLE}."RESOURCE_ID" ;;
  }

  dimension: service {
    type: string
    sql: ${TABLE}."SERVICE" ;;
  }

  dimension_group: start_date_central {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."START_DATE_CENTRAL_TIME" ;;
  }

  dimension: usage_type {
    type: string
    sql: ${TABLE}."USAGE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [account_name]
  }

  measure: cost {
    type: sum
    value_format: "$0.00"
    sql: ${TABLE}."COST" ;;
  }
}
