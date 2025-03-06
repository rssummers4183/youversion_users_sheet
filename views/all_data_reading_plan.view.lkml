# The name of this view in Looker is "All Data Reading Plan"
view: all_data_reading_plan {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `fivetran-bible-project-warehou.YouVersion_KPI.AllData_ReadingPlan` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "April 2022" in Explore.

  dimension: april_2022 {
    type: number
    sql: ${TABLE}.April_2022 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_april_2022 {
    type: sum
    sql: ${april_2022} ;;  }

  measure: average_april_2022 {
    type: average
    sql: ${april_2022} ;;  }

  dimension: april_2023 {
    type: number
    sql: ${TABLE}.April_2023 ;;
  }

  dimension: april_2024 {
    type: number
    sql: ${TABLE}.April_2024 ;;
  }

  dimension: august_2022 {
    type: number
    sql: ${TABLE}.August_2022 ;;
  }

  dimension: august_2023 {
    type: number
    sql: ${TABLE}.August_2023 ;;
  }

  dimension: august_2024 {
    type: number
    sql: ${TABLE}.August_2024 ;;
  }

  dimension: december_2022 {
    type: number
    sql: ${TABLE}.December_2022 ;;
  }

  dimension: december_2023 {
    type: number
    sql: ${TABLE}.December_2023 ;;
  }

  dimension: december_2024 {
    type: number
    sql: ${TABLE}.December_2024 ;;
  }

  dimension: february_2022 {
    type: number
    sql: ${TABLE}.February_2022 ;;
  }

  dimension: february_2023 {
    type: number
    sql: ${TABLE}.February_2023 ;;
  }

  dimension: february_2024 {
    type: number
    sql: ${TABLE}.February_2024 ;;
  }

  dimension: february_2025 {
    type: number
    sql: ${TABLE}.February_2025 ;;
  }

  dimension: january_2022 {
    type: number
    sql: ${TABLE}.January_2022 ;;
  }

  dimension: january_2023 {
    type: number
    sql: ${TABLE}.January_2023 ;;
  }

  dimension: january_2024 {
    type: number
    sql: ${TABLE}.January_2024 ;;
  }

  dimension: january_2025 {
    type: number
    sql: ${TABLE}.January_2025 ;;
  }

  dimension: july_2022 {
    type: number
    sql: ${TABLE}.July_2022 ;;
  }

  dimension: july_2023 {
    type: number
    sql: ${TABLE}.July_2023 ;;
  }

  dimension: july_2024 {
    type: number
    sql: ${TABLE}.July_2024 ;;
  }

  dimension: june_202 {
    type: number
    sql: ${TABLE}.June_202 ;;
  }

  dimension: june_2023 {
    type: number
    sql: ${TABLE}.June_2023 ;;
  }

  dimension: june_2024 {
    type: number
    sql: ${TABLE}.June_2024 ;;
  }

  dimension: language_ {
    type: string
    sql: ${TABLE}.Language_ ;;
  }

  dimension: march_2022 {
    type: number
    sql: ${TABLE}.March_2022 ;;
  }

  dimension: march_2023 {
    type: number
    sql: ${TABLE}.March_2023 ;;
  }

  dimension: march_2024 {
    type: number
    sql: ${TABLE}.March_2024 ;;
  }

  dimension: may_2022 {
    type: number
    sql: ${TABLE}.May_2022 ;;
  }

  dimension: may_2023 {
    type: number
    sql: ${TABLE}.May_2023 ;;
  }

  dimension: may_2024 {
    type: number
    sql: ${TABLE}.May_2024 ;;
  }

  dimension: november_2022 {
    type: number
    sql: ${TABLE}.November_2022 ;;
  }

  dimension: november_2023 {
    type: number
    sql: ${TABLE}.November_2023 ;;
  }

  dimension: november_2024 {
    type: number
    sql: ${TABLE}.November_2024 ;;
  }

  dimension: october_2022 {
    type: number
    sql: ${TABLE}.October_2022 ;;
  }

  dimension: october_2023 {
    type: number
    sql: ${TABLE}.October_2023 ;;
  }

  dimension: october_2024 {
    type: number
    sql: ${TABLE}.October_2024 ;;
  }

  dimension: september_2022 {
    type: number
    sql: ${TABLE}.September_2022 ;;
  }

  dimension: september_2023 {
    type: number
    sql: ${TABLE}.September_2023 ;;
  }

  dimension: september_2024 {
    type: number
    sql: ${TABLE}.September_2024 ;;
  }

  dimension: tranlated_title_ {
    type: string
    sql: ${TABLE}.Tranlated_Title_ ;;
  }

  dimension: you_version_id_ {
    type: number
    value_format_name: id
    sql: ${TABLE}.YouVersion_ID_ ;;
  }

  dimension: you_version_title_ {
    type: string
    sql: ${TABLE}.YouVersion_Title_ ;;
  }
  measure: count {
    type: count
  }
}
