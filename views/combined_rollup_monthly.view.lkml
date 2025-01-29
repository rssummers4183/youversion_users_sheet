view: combined_rollup_monthly {
  derived_table: {
    sql:
      SELECT
        DATE_TRUNC(_DATA_DATE, MONTH) AS month_date,
        language_label,  -- Insure it's grouped properly
        SUM(views) AS total_YT_Views,
        COUNT(DISTINCT _DATA_DATE) AS unique_days
      FROM `fivetran-bible-project-warehou.YT_Views.combined_rollup`
      GROUP BY month_date, language_label  -- Include language_label
    ;;
  }

  dimension: month_date {
    type: date
    primary_key: yes  # Looker recognizes uniqueness
    sql: ${TABLE}.month_date ;;
  }

  dimension: language_label {
    type: string
    sql: ${TABLE}.language_label ;;
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
