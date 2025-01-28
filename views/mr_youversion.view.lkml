view: mr_youversion {
  sql_table_name: `fivetran-bible-project-warehou.Monthly_Report.MR_youversion` ;;

  dimension: english_reading_plans {
    type: number
    sql: ${TABLE}.English_Reading_Plans ;;
  }
  dimension: english_standalone {
    type: number
    sql: ${TABLE}.English_Standalone ;;
  }
  dimension: english_subscriptions {
    type: number
    sql: ${TABLE}.English_Subscriptions ;;
  }
  dimension: english_votd_ {
    type: number
    sql: ${TABLE}.English_VOTD_ ;;
  }
  dimension: global_standalone {
    type: number
    sql: ${TABLE}.Global_Standalone ;;
  }
  dimension: global_subscriptions {
    type: number
    sql: ${TABLE}.Global_Subscriptions ;;
  }
  dimension: long {
    type: number
    sql: ${TABLE}.Long ;;
  }
  dimension: long_english {
    type: number
    sql: ${TABLE}.Long_English ;;
  }
  dimension: long_global {
    type: number
    sql: ${TABLE}.Long_Global ;;
  }
  dimension: mid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Mid ;;
  }
  dimension: mid_english {
    type: number
    sql: ${TABLE}.Mid_English ;;
  }
  dimension: mid_global {
    type: number
    sql: ${TABLE}.Mid_Global ;;
  }
  dimension_group: month {
    type: time
    sql: ${TABLE}.Month ;;
  }
  dimension_group: current {
    type: time
    convert_tz: no
    datatype: date
    sql: CURRENT_DATE ;;
  }

  dimension: non_english_reading_plans_ {
    type: number
    sql: ${TABLE}.Non_English_Reading_Plans_ ;;
  }
  dimension: non_english_votd_ {
    type: number
    sql: ${TABLE}.Non_English_VOTD_ ;;
  }
  dimension: reading_plans {
    type: number
    sql: ${TABLE}.Reading_Plans ;;
  }
  dimension: short {
    type: number
    sql: ${TABLE}.Short ;;
  }
  dimension: short_english {
    type: number
    sql: ${TABLE}.Short_English ;;
  }
  dimension: short_global {
    type: number
    sql: ${TABLE}.Short_Global ;;
  }
  dimension: spanish_reading_plans {
    type: number
    sql: ${TABLE}.Spanish_Reading_Plans ;;
  }
  dimension: spanish_standalone {
    type: number
    sql: ${TABLE}.Spanish_Standalone ;;
  }
  dimension: spanish_subscriptions {
    type: number
    sql: ${TABLE}.Spanish_Subscriptions ;;
  }
  dimension: spanish_votd_ {
    type: number
    sql: ${TABLE}.Spanish_VOTD_ ;;
  }
  dimension: standalone {
    type: number
    sql: ${TABLE}.Standalone ;;
  }
  measure: count {
    type: count
  }
}
