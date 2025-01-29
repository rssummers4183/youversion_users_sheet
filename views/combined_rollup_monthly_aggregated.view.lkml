view: combined_rollup_monthly_aggregated {
  derived_table: {
    sql:
      SELECT
        month_date,
        SUM(total_YT_Views) AS total_YT_Views,
        SUM(CASE WHEN language_label = 'Spanish' THEN total_YT_Views ELSE 0 END) AS total_YT_Views_spanish,  -- ✅ Spanish views only
        SUM(CASE WHEN language_label != 'English' THEN total_YT_Views ELSE 0 END) AS total_YT_Views_non_english  -- ✅ All views except English
      FROM `your_project.combined_rollup_monthly`
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
