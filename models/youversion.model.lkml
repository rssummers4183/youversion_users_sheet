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

explore: mr_youversion {
  label: "Monthly Report - YouVersion"
  join: mr_global {
    type: left_outer
    relationship: one_to_one
    sql_on: ${mr_youversion.month_date} = ${mr_global.month_date} ;;
  }
  join: combined_rollup {
    type: left_outer
    relationship: many_to_one
    sql_on: ${mr_youversion.month_date} = ${combined_rollup._data_date}  ;;
  }
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

explore: all_data_reading_plan {
  label: "YouVersion Reading Plans All-data Dashboard"
}

explore: global_resources_engaged {
  label: "KPI - Global Resources"
  join: spanish_resources_engaged {
    type: left_outer
    relationship: one_to_one
    sql_on: ${global_resources_engaged.date__month} = ${spanish_resources_engaged.date__month} ;;
  }
}

persist_with: youversion_default_datagroup
