view: combined_rollup_monthly {
  derived_table: {
    sql:
      SELECT
        DATE_TRUNC(_DATA_DATE, MONTH) AS month_date,
        SUM(YT_Views) AS total_YT_Views,
        COUNT(DISTINCT _DATA_DATE) AS unique_days
      FROM `your_project.your_dataset.combined_rollup`
      GROUP BY month_date
    ;;
  }

  dimension: month_date {
    type: date
    primary_key: yes  # ✅ Now Looker understands uniqueness
    sql: ${TABLE}.month_date ;;
  }

  measure: total_YT_Views {
    type: sum
    sql: ${TABLE}.total_YT_Views ;;
  }

  measure: unique_days {
    type: count_distinct
    sql: ${TABLE}.unique_days ;;
  }
}
