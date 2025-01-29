view: combined_rollup_monthly {
  derived_table: {
    sql:
      SELECT
        DATE_TRUNC(_DATA_DATE, MONTH) AS month_date,
        SUM(measure_1) AS total_measure_1,
        SUM(measure_2) AS total_measure_2
      FROM `fivetran-bible-project-warehou.YT_Views.combined_rollup`
      GROUP BY 1
    ;;
  }
  dimension: month_date {
    type: date
    sql: ${TABLE}.month_date ;;
  }
  dimension: language_label {
    type: string
    sql: ${TABLE}.language_label ;;
  }
  dimension: views {
    type: number
    sql: ${TABLE}.views ;;
  }
}
