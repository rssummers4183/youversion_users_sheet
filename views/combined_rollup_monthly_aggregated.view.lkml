view: combined_rollup_monthly_aggregated {
  derived_table: {
    sql:
      SELECT
        DATE_TRUNC(_DATA_DATE, MONTH) AS month_date,
        SUM(views) AS total_YT_Views,
        SUM(CASE WHEN language_label = 'Spanish' THEN views ELSE 0 END) AS total_YT_Views_spanish,  -- ✅ Spanish views only
        SUM(CASE WHEN language_label != 'English' THEN views ELSE 0 END) AS total_YT_Views_non_english  -- ✅ All views except English
      FROM `fivetran-bible-project-warehou.YT_Views.combined_rollup`
      GROUP BY month_date
    ;;
  }

  dimension: month_date {
    type: date
    primary_key: yes
    sql: ${TABLE}.month_date ;;
  }

  measure: total_YT_Views {
    type: sum
    sql: ${TABLE}.total_YT_Views ;;
  }

  measure: total_YT_Views_spanish {
    type: sum
    sql: ${TABLE}.total_YT_Views_spanish ;;  # ✅ Spanish views only
  }

  measure: total_YT_Views_non_english {
    type: sum
    sql: ${TABLE}.total_YT_Views_non_english ;;  # ✅ All views except English
  }
}
