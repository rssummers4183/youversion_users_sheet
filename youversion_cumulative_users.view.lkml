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

  measure: new_plan_users {
    type: sum
    sql: ${TABLE}.new_plan_users ;;
  }

  measure: new_video_users {
    type: sum
    sql: ${TABLE}.new_video_users ;;
  }

  measure: cumulative_video_users {
    type: sum
    sql: ${TABLE}.cumulative_video_users ;;
  }

  measure: cumulative_plan_users {
    type: sum
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
      sql:${TABLE}.Month;;
      convert_tz: no
      datatype: date
  }

  set: detail {
    fields: [
      _row
    ]
  }
}
