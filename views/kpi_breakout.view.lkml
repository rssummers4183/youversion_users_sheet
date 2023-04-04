# The name of this view in Looker is "Kpi Breakout"
view: kpi_breakout {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `fivetran-bible-project-warehou.YouVersion_KPI.KPI_Breakout`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_ {
    type: time
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_ ;;
  }

  dimension_group: current {
    type: time
    convert_tz: no
    datatype: date
    sql:  CURRENT_DATE ;;
  }
  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "English Reading Plans" in Explore.

  dimension: english_reading_plans {
    type: number
    sql: ${TABLE}.English_Reading_Plans ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_english_reading_plans {
    type: sum
    sql: ${english_reading_plans} ;;
  }

  measure: average_english_reading_plans {
    type: average
    sql: ${english_reading_plans} ;;
  }

  dimension: english_standalone {
    type: number
    sql: ${TABLE}.English_Standalone ;;
  }

  dimension: non_english_reading_plans_ {
    type: number
    sql: ${TABLE}.Non_English_Reading_Plans_ ;;
  }

  dimension: non_english_standalone_ {
    type: number
    sql: ${TABLE}.Non_English_Standalone_ ;;
  }

  dimension: non_votd {
    type: number
    sql: ${TABLE}.Non_VOTD ;;
  }

  dimension: reading_plans {
    type: number
    sql: ${TABLE}.Reading_Plans ;;
  }

  dimension: standalone {
    type: number
    sql: ${TABLE}.Standalone ;;
  }

  dimension: votd {
    type: number
    sql: ${TABLE}.VOTD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
