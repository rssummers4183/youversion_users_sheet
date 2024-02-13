# The name of this view in Looker is "Spanish Resources Engaged"
view: spanish_resources_engaged {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `fivetran-bible-project-warehou.KPI_Global.spanishResourcesEngaged` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Apple Listens" in Explore.

  dimension: apple_listens {
    type: number
    sql: ${TABLE}.Apple_Listens ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_apple_listens {
    type: sum
    sql: ${apple_listens} ;;  }
  measure: average_apple_listens {
    type: average
    sql: ${apple_listens} ;;  }

  dimension: article_views {
    type: number
    sql: ${TABLE}.Article_Views ;;
  }

  dimension_group: date_ {
    type: time
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_ ;;
  }

  dimension_group: current {
    type:  time
    convert_tz: no
    datatype: date
    sql: CURRENT_DATE ;;
  }

  dimension: facebook_views {
    type: number
    sql: ${TABLE}.Facebook_Views ;;
  }

  dimension: guide_views {
    type: number
    sql: ${TABLE}.Guide_Views ;;
  }

  dimension: instagram_views {
    type: number
    sql: ${TABLE}.Instagram_Views ;;
  }

  dimension: pando_views {
    type: number
    sql: ${TABLE}.Pando_Views ;;
  }

  dimension: resource_downloads {
    type: number
    sql: ${TABLE}.Resource_Downloads ;;
  }

  dimension: spotify_listens {
    type: number
    sql: ${TABLE}.Spotify_Listens ;;
  }

  dimension: tik_tok_views {
    type: number
    sql: ${TABLE}.TikTok_Views ;;
  }

  dimension: total_ {
    type: number
    sql: ${TABLE}.Total_ ;;
  }

  dimension: web_views_ {
    type: number
    sql: ${TABLE}.Web_Views_ ;;
  }

  dimension: you_tube_views {
    type: number
    sql: ${TABLE}.YouTube_Views ;;
  }

  dimension: you_version_views {
    type: number
    sql: ${TABLE}.YouVersion_Views ;;
  }
  measure: count {
    type: count
  }

  measure: total {
    type: sum
    sql: ${TABLE}.Total_ ;;
  }
}
