view: hashmap_azure_costs {
  sql_table_name: "ANALYTICS"."HASHMAP_AZURE_COSTS";;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: instance_id {
    type: string
    sql: ${TABLE}."INSTANCE_ID" ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}."LOCATION" ;;
  }

  dimension: resource_group {
    type: string
    sql: ${TABLE}."RESOURCE_GROUP" ;;
  }

  dimension: service_family {
    type: string
    sql: ${TABLE}."SERVICE_FAMILY" ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}."TAGS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: cost {
    type: number
    value_format: "$0.00"
    sql: ${TABLE}."COST_IN_USD" ;;
  }
}
