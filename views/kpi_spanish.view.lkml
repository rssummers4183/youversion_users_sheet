# The name of this view in Looker is "Kpi Spanish"
view: kpi_spanish {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `fivetran-bible-project-warehou.YouVersion_KPI.KPI_Spanish`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Average Views per Viewer" in Explore.

  dimension: average_views_per_viewer {
    type: number
    sql: ${TABLE}.Average_Views_per_Viewer ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_average_views_per_viewer {
    type: sum
    sql: ${average_views_per_viewer} ;;
  }

  measure: average_average_views_per_viewer {
    type: average
    sql: ${average_views_per_viewer} ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: month {
    type: time
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Month ;;
  }

  dimension_group: current {
    type: time
    convert_tz: no
    datatype: date
    sql:  CURRENT_DATE ;;

  }

  dimension: new_viewers {
    type: number
    sql: ${TABLE}.New_Viewers ;;
  }

  dimension: returning_viewers_ {
    type: number
    sql: ${TABLE}.Returning_Viewers_ ;;
  }

  dimension: unique_viewers_ {
    type: number
    sql: ${TABLE}.Unique_Viewers_ ;;
  }

  dimension: you_version_reading_plan_subscriptions {
    type: number
    sql: ${TABLE}.YouVersion_Reading_Plan_Subscriptions ;;
  }

  dimension: you_version_views {
    type: number
    sql: ${TABLE}.YouVersion_Views ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
