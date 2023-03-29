connection: "bibleproject"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: youversion_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hours"
}

explore: youversion_cumulative_users {
  label: "YouVersion Users"
  join: youversion_active_users {
    type: left_outer
    relationship: one_to_one
    sql_on: ${youversion_active_users.date_month} = ${youversion_cumulative_users.date_month} ;;
  }
}

explore: kpi_monthly {
  label: "KPI - YouVersion Views Monthly"
}

explore: kpi_breakout{
  label:  "KPI - YouVersion Views Breakout"
}

explore: kpi_reading_plan {
  label: "KPI - YouVersion Reading Plans"
}

explore: kpi_blog {
  label: "KPI - Web Blog"
}

explore: kpi_spanish {
  label: "KPI - Spanish"
}

persist_with: youversion_default_datagroup
