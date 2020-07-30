view: hourly_website_traffic {
  sql_table_name: "GOOGLE_ANALYTICS"."GA_HOURLY_TRAFFIC"
    ;;

  dimension: traffic_campaign {
    type: string
    sql: ${TABLE}."TRAFFIC_CAMPAIGN" ;;
  }

  dimension: traffic_hostname {
    type: string
    sql: ${TABLE}."TRAFFIC_HOSTNAME" ;;
  }

  dimension: traffic_medium {
    type: string
    sql: ${TABLE}."TRAFFIC_MEDIUM" ;;
  }

  dimension: traffic_page {
    type: string
    sql: ${TABLE}."TRAFFIC_PAGE" ;;
  }

  dimension: traffic_page_base_path {
    type: string
    sql: ${TABLE}."TRAFFIC_PAGE_BASE_PATH" ;;
  }

  dimension: traffic_page_path_raw {
    type: string
    sql: ${TABLE}."TRAFFIC_PAGE_PATH_RAW" ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}."TRAFFIC_SOURCE" ;;
  }

  dimension: traffic_source_medium {
    type: string
    sql: ${TABLE}."TRAFFIC_SOURCE_MEDIUM" ;;
  }

  dimension_group: traffic_time_ct {
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
    sql: ${TABLE}."TRAFFIC_TIME_CT" ;;
  }

  measure: traffic_total_users_cnt {
    type: sum
    sql: ${TABLE}."TRAFFIC_TOTAL_USERS_CNT" ;;
  }

  measure: traffic_session_duration_avg {
    type: average
    sql: ${TABLE}."TRAFFIC_SESSION_DURATION_AVG"/60 ;;
    value_format: "#.## \m\i\n"
  }

  measure: traffic_new_users_cnt {
    type: sum
    sql: ${TABLE}."TRAFFIC_NEW_USERS_CNT" ;;
  }

  measure: traffic_pageviews_cnt {
    type: sum
    sql: ${TABLE}."TRAFFIC_PAGEVIEWS_CNT" ;;
  }

  measure: count {
    label: "Number of Records"
    type: count
    drill_fields: [traffic_hostname]
  }
}
