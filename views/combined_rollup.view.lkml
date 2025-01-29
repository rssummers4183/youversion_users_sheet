view: combined_rollup {
  sql_table_name: `fivetran-bible-project-warehou.YT_Views.combined_rollup` ;;

  dimension_group: _data {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._DATA_DATE ;;
  }
  dimension_group: _latest {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._LATEST_DATE ;;
  }
  dimension: average_view_duration_percentage {
    type: number
    sql: ${TABLE}.average_view_duration_percentage ;;
  }
  dimension: average_view_duration_seconds {
    type: number
    sql: ${TABLE}.average_view_duration_seconds ;;
  }
  dimension: channel_id {
    type: string
    sql: ${TABLE}.channel_id ;;
  }
  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }
  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }
  dimension: date {
    type: string
    sql: ${TABLE}.date ;;
  }
  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }
  dimension: language_label {
    type: string
    sql: ${TABLE}.language_label ;;
  }
  dimension: operating_system {
    type: string
    sql: ${TABLE}.operating_system ;;
  }
  dimension: playback_location {
    type: string
    sql: ${TABLE}.playback_location ;;
  }
  dimension: prim_key {
    type: string
    sql: ${TABLE}.prim_key ;;
  }
  dimension: traffic_source_type {
    type: string
    sql: ${TABLE}.traffic_source_type ;;
  }
  dimension: video_code {
    type: string
    sql: ${TABLE}.video_code ;;
  }
  dimension: video_id {
    type: string
    sql: ${TABLE}.video_id ;;
  }
  dimension: video_label {
    type: string
    sql: ${TABLE}.video_label ;;
  }
  dimension: video_series_label {
    type: string
    sql: ${TABLE}.video_series_label ;;
  }
  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }
  dimension: watch_time_minutes {
    type: number
    sql: ${TABLE}.watch_time_minutes ;;
  }
  measure: count {
    type: count
    drill_fields: [country_name]
  }
}
