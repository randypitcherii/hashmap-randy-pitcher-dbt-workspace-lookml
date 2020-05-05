view: snowflake_warehouse_metering_history {

  label: "Snowflake Compute Costs"

  sql_table_name: "ANALYTICS"."SNOWFLAKE_WAREHOUSE_METERING_HISTORY"
    ;;

  dimension_group: start_time_central {
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
    sql: ${TABLE}."START_TIME_CENTRAL_TIME" ;;
  }

  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."WAREHOUSE_ID" ;;
  }

  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WAREHOUSE_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [warehouse_name]
  }

  measure: cost {
    type: sum
    value_format: "$0.00"
    sql: 3 * ${TABLE}."CREDITS_USED" ;;
  }
}
