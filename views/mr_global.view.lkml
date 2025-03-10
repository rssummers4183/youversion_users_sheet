view: mr_global {
  sql_table_name: `fivetran-bible-project-warehou.Monthly_Report.MR_global` ;;

  dimension: global_fb_views {
    type: number
    sql: ${TABLE}.Global_FB_Views ;;
  }
  dimension: global_ig_views {
    type: number
    sql: ${TABLE}.Global_IG_Views ;;
  }
  dimension: global_reading_plan_subscriptions {
    type: number
    sql: ${TABLE}.Global_Reading_Plan_Subscriptions ;;
  }
  dimension: global_resorce_downloads {
    type: number
    sql: ${TABLE}.Global_Resorce_Downloads ;;
  }
  dimension: global_tik_tok_views {
    type: number
    sql: ${TABLE}.Global_TikTok_Views ;;
  }
  dimension: global_web_video_views {
    type: number
    sql: ${TABLE}.Global_Web_Video_Views ;;
  }
  dimension: global_web_visits {
    type: number
    sql: ${TABLE}.Global_Web_Visits ;;
  }

  dimension_group: month {
    type: time
    sql: TIMESTAMP(PARSE_DATETIME('%b %Y', CAST(${TABLE}.Month AS STRING))) ;;
  }

  dimension_group: current {
    type: time
    convert_tz: no
    datatype: date
    sql: CURRENT_DATE ;;
  }

  dimension: podcast_spanish_apple {
    type: number
    sql: ${TABLE}.Podcast_Spanish_Apple ;;
  }
  dimension: podcast_spanish_spotify {
    type: number
    sql: ${TABLE}.Podcast_Spanish_Spotify ;;
  }
  dimension: podcast_spanish_you_tube {
    type: number
    sql: ${TABLE}.Podcast_Spanish_YouTube ;;
  }
  dimension: spanish_article_views {
    type: number
    sql: ${TABLE}.Spanish_Article_Views ;;
  }
  dimension: spanish_enlace__views {
    type: number
    sql: ${TABLE}.Spanish_Enlace__Views ;;
  }
  dimension: spanish_fb_views {
    type: number
    sql: ${TABLE}.Spanish_FB_Views ;;
  }
  dimension: spanish_guide_views {
    type: number
    sql: ${TABLE}.Spanish_Guide_Views ;;
  }
  dimension: spanish_ig_views {
    type: number
    sql: ${TABLE}.Spanish_IG_VIews ;;
  }
  dimension: spanish_pando_views {
    type: number
    sql: ${TABLE}.Spanish_Pando_Views ;;
  }
  dimension: spanish_resource_downloads {
    type: number
    sql: ${TABLE}.Spanish_Resource_Downloads ;;
  }
  dimension: spanish_tik_tok_views {
    type: number
    sql: ${TABLE}.Spanish_TikTok_Views ;;
  }
  dimension: spanish_web_listens {
    type: number
    sql: ${TABLE}.Spanish_Web_Listens ;;
  }
  dimension: spanish_web_video_views_ {
    type: number
    sql: ${TABLE}.Spanish_Web_Video_Views_ ;;
  }
  measure: count {
    type: count
  }
}
