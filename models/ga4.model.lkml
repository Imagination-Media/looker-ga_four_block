#connection: "@{GA4_CONNECTION}"
connection: "madegoods_bigquery"

include: "/dashboards/*.dashboard"
include: "/explores/*.explore.lkml"
include: "/views/**/*.view.lkml"


label: "Google Analytics 4"




datagroup: ga4_main_datagroup {
  sql_trigger:  SELECT CURRENT_DATE();;
  max_cache_age: "3 hour"
}

datagroup: ga4_default_datagroup {
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*1)/(60*60*24));;
  max_cache_age: "3 hour"
}

datagroup: ga4_attribution_channel {
  sql_trigger: SELECT 1 ;;
}

datagroup: ga4_session_list_with_event_history {
  sql_trigger: SELECT last_modified_time FROM `looker_scratch.__TABLES__`
    where table_id='LR_HGKQO1708997601724_session_list_with_event_history' ;;
}

persist_with: ga4_main_datagroup
