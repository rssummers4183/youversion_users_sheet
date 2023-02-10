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

  dimension_group: date_field_0 {
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
    sql: ${TABLE}.date_field_0 ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "English" in Explore.

  dimension: english {
    type: number
    sql: ${TABLE}.English ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_english {
    type: sum
    sql: ${english} ;;
  }

  measure: average_english {
    type: average
    sql: ${english} ;;
  }

  dimension: non_english {
    type: number
    sql: ${TABLE}.Non_English ;;
  }

  measure: total_non_english {
    type: sum
    sql: ${non_english} ;;
  }

  dimension: non_votd {
    type: number
    sql: ${TABLE}.Non_VOTD ;;
  }

  measure: total_non_votd {
    type: sum
    sql: ${non_votd} ;;
  }

  dimension: reading_plans {
    type: string
    sql: ${TABLE}.Reading_Plans ;;
  }

  dimension: standalone {
    type: string
    sql: ${TABLE}.Standalone ;;
  }

  dimension: votd {
    type: number
    sql: ${TABLE}.VOTD ;;
  }

  measure: total_votd {
    type: sum
    sql: ${votd} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
