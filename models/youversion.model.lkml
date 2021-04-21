connection: "bibleproject"

include: "/*.view.lkml"                # include all views in the views/ folder in this project

datagroup: youversion_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: youversion_cumulative_users {
  label: "YouVersion Users"
}

persist_with: youversion_default_datagroup
