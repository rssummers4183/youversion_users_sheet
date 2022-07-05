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
    primary_key: yes
    sql: ${TABLE}._row ;;
  }

  dimension_group: current {
    type: time
    sql: Current_Timestamp() ;;
  }

  measure: new_plan_users {
    type: sum
    sql: ${TABLE}.updated_new_plan_users ;;
  }

  measure: new_video_users {
    type: sum
    sql: ${TABLE}.updated_new_video_users ;;
  }

  measure: cumulative_video_users {
    type: sum
    sql: ${TABLE}.cumulative_video_users ;;
  }

  measure: cumulative_plan_users {
    type: sum
    sql: ${TABLE}.cumulative_plan_users ;;
  }

  measure: total_users {
    type: sum
    sql: ${TABLE}.updated_new_video_users+${TABLE}.updated_new_plan_users ;;
  }

  # measure: plan_users_running_total {
  #   type: running_total
  #   sql:${TABLE}.cumulative_plan_users  ;;
  # }

  # measure: video_users_running_total {
  #   type: running_total
  #   sql:${TABLE}.cumulative_video_users  ;;
  # }

    dimension_group: date {
      label: ""
      type: time
      timeframes: [
        date,
        month,
        quarter,
        year
      ]
      sql:cast(${TABLE}.Month as Timestamp);;
      # convert_tz: no
      # datatype: date
  }

  set: detail {
    fields: [
      _row
    ]
  }
}
