# The name of this view in Looker is "Kpi Monthly"
view: kpi_monthly {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `fivetran-bible-project-warehou.YouVersion_KPI.KPI_Monthly`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Date " in Explore.

  dimension_group: date_ {
    type: time
    timeframes: [
      month,
      month_name,
      year
    ]
    sql: ${TABLE}.Date_ ;;
  }

  dimension: you_version_views_ {
    type: number
    sql: ${TABLE}.YouVersion_Views_ ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_you_version_views_ {
    type: sum
    sql: ${you_version_views_} ;;
  }

  measure: average_you_version_views_ {
    type: average
    sql: ${you_version_views_} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
