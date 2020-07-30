view: task_usage_history {
  sql_table_name: "CLOUD_USAGE"."TASK_USAGE_HISTORY"
    ;;

  dimension_group: completed {
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
    sql: ${TABLE}."COMPLETED_TIME" ;;
  }

  dimension: condition_text {
    type: string
    sql: ${TABLE}."CONDITION_TEXT" ;;
  }

  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}."ERROR_CODE" ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}."ERROR_MESSAGE" ;;
  }

  dimension: graph_version {
    type: number
    sql: ${TABLE}."GRAPH_VERSION" ;;
  }

  dimension_group: ingestion {
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
    sql: ${TABLE}."INGESTION_TIME" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension_group: next_scheduled {
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
    sql: ${TABLE}."NEXT_SCHEDULED_TIME" ;;
  }

  dimension: query_id {
    type: string
    sql: ${TABLE}."QUERY_ID" ;;
  }

  dimension_group: query_start {
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
    sql: ${TABLE}."QUERY_START_TIME" ;;
  }

  dimension: query_text {
    type: string
    sql: ${TABLE}."QUERY_TEXT" ;;
  }

  dimension: return_value {
    type: string
    sql: ${TABLE}."RETURN_VALUE" ;;
  }

  dimension: root_task_id {
    type: string
    sql: ${TABLE}."ROOT_TASK_ID" ;;
  }

  dimension: run_id {
    type: number
    sql: ${TABLE}."RUN_ID" ;;
  }

  dimension_group: scheduled {
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
    sql: ${TABLE}."SCHEDULED_TIME" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, database_name, schema_name]
  }

  measure: total_seconds_of_runtime {
    type: sum
    sql: DATEDIFF( SECOND, ${query_start_raw}, ${completed_raw} );;
  }
}
