connection: "bibleproject"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: youversion_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: youversion_cumulative_users {
  label: "YouVersion Users"
  join: youversion_active_users {
    type: left_outer
    relationship: one_to_one
    sql_on: ${youversion_active_users.date_month} = ${youversion_cumulative_users.date_month} ;;
  }
}

persist_with: youversion_default_datagroup
