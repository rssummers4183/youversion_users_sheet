# The name of this view in Looker is "Kpi Reading Plan"
view: kpi_reading_plan {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `fivetran-bible-project-warehou.YouVersion_KPI.KPI_ReadingPlan`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_ {
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
    sql: ${TABLE}.Date_ ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "English Subscriptions" in Explore.

  dimension: english_subscriptions {
    type: number
    sql: ${TABLE}.English_Subscriptions ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_english_subscriptions {
    type: sum
    sql: ${english_subscriptions} ;;
  }

  measure: average_english_subscriptions {
    type: average
    sql: ${english_subscriptions} ;;
  }

  dimension: global_subscriptions {
    type: number
    sql: ${TABLE}.Global_Subscriptions ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.Long ;;
  }

  dimension: mid {
    type: number
    value_format_name: id
    sql: ${TABLE}.Mid ;;
  }

  dimension: short {
    type: number
    sql: ${TABLE}.Short ;;
  }

  dimension: total_subscriptions_ {
    type: number
    sql: ${TABLE}.Total_Subscriptions_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
