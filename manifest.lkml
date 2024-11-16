project_name: "ga_four"


## Connection Constants:
constant: GA4_CONNECTION {
  value: "madegoods_bigquery"
  export: override_required
}



constant: GA4_SCHEMA {
#  value: "ga4_export"
  value:"analytics_321508676"
  export: override_optional
}

constant: GA4_TABLE_VARIABLE {
  value: "events_*"
  export: override_optional
}

constant: EVENT_COUNT {
  value: "5000"
  export: override_optional
}


constant: GA4_BQML_train_months {
  value: "12"
  # export: override_optional
}

constant: GA4_BQML_test_months {
  value: "3"
  # export: override_optional
}

constant: GA4_BQML_future_synth_months {
  value: "12"
  # export: override_optional

}

#################################################
#
# Constants for Attribution Dashboard from https://github.com/rittmananalytics/ra_attribution_for_ga4/

################# Constants ################


## Used in google_analytics_block.model connection param
# constant: CONNECTION_NAME {
#   value: "ra_dw_prod"
#   export: override_required
# }

## Used in ga_sessions.view sql_table_name
# constant: SCHEMA_NAME {
#   value: "bigquery-public-data.ga4_obfuscated_sample_ecommerce"
#   export: override_optional
# }

# constant: GA4_TABLE_NAME {
#   value: "events_*"
#   export: override_optional
# }

constant: GA4_USER_REG_EVENT {
  value: "add_payment_info"
  export: override_optional
}

constant: GA4_PURCHASE_EVENT {
  value: "purchase"
  export: override_optional
}

constant: TIME_DECAY_WINDOW {
  value: "7"
  export: override_optional
}

constant: LOOKBACK_WINDOW {
  value: "30"
  export: override_optional
}
