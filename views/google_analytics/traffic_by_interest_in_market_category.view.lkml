view: traffic_by_interest_in_market_category {
  sql_table_name: "ANALYTICS"."GA_TRAFFIC_BY_INTEREST_IN_MARKET_CATEGORY";;

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

  dimension: interest_in_market_category {
    type: string
    sql: ${TABLE}."INTEREST_IN_MARKET_CATEGORY" ;;
  }

  set: traffic_details {
    fields: [date_date, interest_in_market_category]
  }

  measure: count {
    type: count
    drill_fields: [traffic_details*]
  }

  measure: contact_us_form_submissions {
    type: sum
    sql: ${TABLE}."CONTACT_US_FORM_SUBMISSIONS" ;;
  }

  measure: contact_us_pageviews {
    type: sum
    sql: ${TABLE}."CONTACT_US_PAGEVIEWS" ;;
  }

  measure: new_users_count {
    type: sum
    sql: ${TABLE}."NEW_USERS_COUNT" ;;
  }

  measure: total_users_count {
    type: sum
    sql: ${TABLE}."TOTAL_USERS_COUNT" ;;
  }

  measure: total_pageviews {
    type: sum
    sql: ${TABLE}."PAGEVIEWS" ;;
  }

  measure: contact_us_pageviews_conversion_rate {
    type: number
    sql: 100 * ${contact_us_pageviews} / ${total_pageviews} ;;
  }
}
