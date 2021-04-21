view: youversion_user_table_sheets {
  derived_table: {
    sql: SELECT * FROM `fivetran-bible-project-warehou.google_sheets.youversion_user_sheet`
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: _row {
    type: number
    sql: ${TABLE}._row ;;
  }

  # dimension_group: _fivetran_synced {
  #   type: time
  #   sql: ${TABLE}._fivetran_synced ;;
  # }

  measure: first_plan_viewers {
    type: number
    sql: ${TABLE}.first_plan_viewers ;;
  }

  measure: first_video_viewers {
    type: number
    sql: ${TABLE}.first_video_viewers ;;
  }

  # dimension: month {
  #   type: date_month
  #   sql: ${TABLE}.month ;;
  # }

dimension: year {
  type: date_year
  sql: PARSE_DATE('%d/%m/%Y', ${TABLE}.Month) ;;
  }

  measure: total_first_viewers {
    type: number
    sql: ${TABLE}.total_first_viewers ;;
  }

  # dimension: year {
  #   type: date_year
  #   sql: ${TABLE}.year ;;
  # }

  dimension_group: date {
    label: ""
    type: time
    timeframes: [
      date,
      month,
      year
    ]
    convert_tz: no
    datatype: date
    sql: PARSE_DATE('%d/%m/%Y', ${TABLE}.Month) ;;
  }


  set: detail {
    fields: [
      _row
    ]
  }
}
