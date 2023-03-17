# The name of this view in Looker is "Kpi Blog"
view: kpi_blog {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `fivetran-bible-project-warehou.YouVersion_KPI.KPI_Blog`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "New Users" in Explore.

  dimension: new_users {
    type: number
    sql: ${TABLE}.New_Users ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_new_users {
    type: sum
    sql: ${new_users} ;;
  }

  measure: average_new_users {
    type: average
    sql: ${new_users} ;;
  }

  dimension: returning_users_ {
    type: number
    sql: ${TABLE}.Returning_Users_ ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: view {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.View_Date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
