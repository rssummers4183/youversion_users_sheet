view: youversion_active_users {
sql_table_name: `fivetran-bible-project-warehou.google_sheets.youversion_active_users`
    ;;

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}._fivetran_synced ;;
    hidden: yes
  }

  dimension: _row {
    type: number
    primary_key: yes
    sql: ${TABLE}._row ;;
  }

  dimension_group: date {
    label: ""
    type: time
    timeframes: [
      date,
      month,
      year
    ]
    sql:cast(${TABLE}.Month as Timestamp);;
    # convert_tz: no
    # datatype: date
  }

  measure: plan_active_users{
    type: date_fiscal_month_num
    sql: ${TABLE}.plans_mau ;;
  }

  measure: plan_and_video_active_users{
    type: sum
    sql: ${TABLE}.plans_or_video_mau ;;
  }

  measure: podcast_active_users {
    type: sum
    sql: ${TABLE}.podcast_mau ;;
  }

  measure: video_active_users {
    type: sum
    sql: ${TABLE}.video_mau ;;
  }

  measure: count {
    type: count
    drill_fields: [
      _row
    ]
  }
}
