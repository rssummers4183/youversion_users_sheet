# The name of this view in Looker is "Yv Kpi Summary"
view: yv_kpi_summary {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `fivetran-bible-project-warehou.YouVersion_KPI.YV_KPI_Summary`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Int64 Field 1" in Explore.

  dimension: int64_field_1 {
    type: number
    description: "2022 Views"
    sql: ${TABLE}.int64_field_1 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_int64_field_1 {
    type: sum
    sql: ${int64_field_1} ;;
  }

  measure: average_int64_field_1 {
    type: average
    sql: ${int64_field_1} ;;
  }

  dimension: int64_field_2 {
    type: number
    description: "2023 Views"
    sql: ${TABLE}.int64_field_2 ;;
  }

  dimension: string_field_0 {
    type: string
    description: "Month"
    sql: ${TABLE}.string_field_0 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
