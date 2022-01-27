view: youversion_active_users {
# sql_table_name: `fivetran-bible-project-warehou.google_sheets.youversion_active_users`
#     ;;

  derived_table: {
    sql: SELECT * FROM `fivetran-bible-project-warehou.google_sheets.youversion_active_users`
      ;;
  }

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
    sql:cast(${TABLE}.month as Timestamp);;
    convert_tz: no
    datatype: date
  }

  measure: plan_active_users {
    type: sum
    sql: ${TABLE}.plans_mau ;;
  }

  measure: plan_and_video_active_users{
    type: sum
    sql: ${TABLE}.plans_or_video_mau ;;
  }

  measure: podcast_active_users {
    type: sum
    sql: coalesce(${TABLE}.podcast_mau,0) ;;
  }

  measure: video_active_users {
    type: sum
    sql: ${TABLE}.video_mau ;;
  }

  measure: total_active_users {
    type: sum
    sql: coalesce(${TABLE}.plans_or_video_mau,0)+coalesce(${TABLE}.podcast_mau,0) ;;
  }

  measure: count {
    type: count
    drill_fields: [
      _row
    ]
  }
}
