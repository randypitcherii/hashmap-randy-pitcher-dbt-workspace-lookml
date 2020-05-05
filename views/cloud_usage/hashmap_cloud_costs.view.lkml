view: hashmap_cloud_costs {

  label: "Combined Cloud Costs"

  sql_table_name: "ANALYTICS"."HASHMAP_CLOUD_COSTS"
    ;;

  dimension: cloud {
    type: string
    sql: ${TABLE}."CLOUD" ;;
  }

  dimension_group: datetime_central {
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
    sql: ${TABLE}."DATETIME_CENTRAL_TIME" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: cost {
    type: sum
    value_format: "$0.00"
    sql: ${TABLE}."COST_IN_USD" ;;
  }
}
