marketplace: {
  listing: "ga4"
}
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
