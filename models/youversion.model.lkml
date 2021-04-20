connection: "bibleproject"

datagroup: youversion_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: youversion_default_datagroup
