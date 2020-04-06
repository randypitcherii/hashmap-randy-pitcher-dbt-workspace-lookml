view: all_traffic {
  sql_table_name: "ANALYTICS"."GA_TRAFFIC"
    ;;

  dimension: _dbt_source_relation {
    type: string
    sql: ${TABLE}."_DBT_SOURCE_RELATION" ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}."CAMPAIGN" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: contact_us_form_submissions {
    type: number
    sql: ${TABLE}."CONTACT_US_FORM_SUBMISSIONS" ;;
  }

  dimension: contact_us_pageviews {
    type: number
    sql: ${TABLE}."CONTACT_US_PAGEVIEWS" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension_group: datetime_america_chicago {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATETIME_AMERICA_CHICAGO" ;;
  }

  dimension: interest_affinity_category {
    type: string
    sql: ${TABLE}."INTEREST_AFFINITY_CATEGORY" ;;
  }

  dimension: landing_page_path {
    type: string
    sql: ${TABLE}."LANDING_PAGE_PATH" ;;
  }

  dimension: landing_page_path_base {
    type: string
    sql: ${TABLE}."LANDING_PAGE_PATH_BASE" ;;
  }

  dimension: new_users_count {
    type: number
    sql: ${TABLE}."NEW_USERS_COUNT" ;;
  }

  dimension: page_path {
    type: string
    sql: ${TABLE}."PAGE_PATH" ;;
  }

  dimension: page_path_base {
    type: string
    sql: ${TABLE}."PAGE_PATH_BASE" ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}."PAGEVIEWS" ;;
  }

  dimension: source_medium {
    type: string
    sql: ${TABLE}."SOURCE_MEDIUM" ;;
  }

  dimension: total_users_count {
    type: number
    sql: ${TABLE}."TOTAL_USERS_COUNT" ;;
  }

  dimension: traffic_medium {
    type: string
    sql: ${TABLE}."TRAFFIC_MEDIUM" ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}."TRAFFIC_SOURCE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
