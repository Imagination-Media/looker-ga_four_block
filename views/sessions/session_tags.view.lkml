include: "/views/sessions/session_list_with_event_history.view.lkml"
view: session_tags{
  derived_table:{
    datagroup_trigger: ga4_default_datagroup
    sql: select distinct sl.sl_key
      ,  first_value((select value.string_value from unnest(sl.event_params) where key = 'medium')) over (partition by sl.sl_key order by sl.event_timestamp desc) medium
      ,  first_value((select value.string_value from unnest(sl.event_params) where key = 'source')) over (partition by sl.sl_key order by sl.event_timestamp desc) source
      ,  first_value((select value.string_value from unnest(sl.event_params) where key = 'campaign')) over (partition by sl.sl_key order by sl.event_timestamp desc) campaign
      ,  first_value((select value.string_value from unnest(sl.event_params) where key = 'page_referrer')) over (partition by sl.sl_key order by sl.event_timestamp desc) page_referrer
    from ${session_list_with_event_history.SQL_TABLE_NAME} AS sl
  where sl.event_name in ('page_view')
    and (select value.string_value from unnest(sl.event_params) where key = 'medium') is not null -- NULL medium is direct, filtering out nulls to ensure last non-direct.
    ;;
  }
}
