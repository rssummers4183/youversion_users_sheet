view: youversion_cumulative_users {
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

  # dimension: first_plan_viewers {
  #   type: number
  #   sql: ${TABLE}.first_plan_viewers ;;
  # }

  # dimension: first_video_viewers {
  #   type: number
  #   sql: ${TABLE}.first_video_viewers ;;
  # }

  # dimension: month {
  #   type: string
  #   sql: ${TABLE}.month ;;
  # }

  measure: total_first_viewers {
    type: number
    sql: ${TABLE}.total_first_viewers ;;
  }

  # dimension: year {
  #   type: string
  #   sql: ${TABLE}.year ;;
  # }

  measure: new_plan_users {
    type: number
    sql: ${TABLE}.new_plan_users ;;
  }

  measure: new_video_users {
    type: number
    sql: ${TABLE}.new_video_users ;;
  }

  # dimension: date {
  #   type: string
  #   sql: ${TABLE}.date ;;
  # }

  measure: cumulative_video_users {
    type: number
    sql: ${TABLE}.cumulative_video_users ;;
  }

  measure: cumulative_plan_users {
    type: number
    sql: ${TABLE}.cumulative_plan_users ;;
  }

    dimension_group: date {
      label: ""
      type: time
      timeframes: [
        date,
        month,
        year
      ]
      sql: PARSE_DATE('%y/%m/%d', ${TABLE}.date) ;;
      # sql: cast(${TABLE}.date as timestamp) ;;
      convert_tz: no
      datatype: date
  }

  # dimension: year {
  #   type: date_year
  #   sql: PARSE_DATE('%y/%m/%d', ${TABLE}.date) ;;
  # }

  set: detail {
    fields: [
      _row
    ]
  }
}
