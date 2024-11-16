- dashboard: daily_sessions_14days_running
  title: "[GA4] Daily Sessions - Last 14 Days"
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 71u0g4OaZold3puocUk8Ue
  elements:
  - title: GA4 Sessions Beta - Acquisitions
    name: GA4 Sessions Beta - Acquisitions
    model: ga4
    explore: sessions
    type: looker_bar
    fields: [sessions.session_date, sessions.session_week, sessions.geo_data_country,
      sessions.geo_data_continent, sessions.session_attribution_source, sessions.session_attribution_source_medium,
      sessions.session_attribution_medium, attribution_sources.attribution_source_channel,
      sessions.audience_trait, audience_cohorts.rank, sessions.total_sessions, sessions.average_page_views_per_session,
      sessions.average_session_duration, sessions.total_bounced_sessions_percentage,
      sessions.total_first_visit_sessions_percentage, sessions.total_users, events.total_page_views]
    filters: {}
    sorts: [sessions.total_sessions desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_colors:
      sessions.total_sessions: "#F9AB00"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FFF"
    single_value_title: Sessions
    comparison_label: First Visit Sessions
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#F9AB00",
        font_color: "#FFF", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Sessions based on filters
    hidden_pivots: {}
    listen:
      Session Date: sessions.session_date
      Country: sessions.geo_data_country
      Continent: sessions.geo_data_continent
      Source: sessions.session_attribution_source
      Source Medium: sessions.session_attribution_source_medium
      Medium: sessions.session_attribution_medium
      Channel: attribution_sources.attribution_source_channel
      Audience Selector: sessions.audience_selector
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Channel
    title: Channel
    type: field_filter
    default_value: Organic Search
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga4
    explore: sessions
    listens_to_filters: []
    field: attribution_sources.attribution_source_channel
  - name: Source
    title: Source
    type: field_filter
    default_value: google
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga4
    explore: sessions
    listens_to_filters: []
    field: sessions.session_attribution_source
  - name: Continent
    title: Continent
    type: field_filter
    default_value: Americas
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga4
    explore: sessions
    listens_to_filters: []
    field: sessions.geo_data_continent
  - name: Medium
    title: Medium
    type: field_filter
    default_value: organic
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga4
    explore: sessions
    listens_to_filters: []
    field: sessions.session_attribution_medium
  - name: Session Date
    title: Session Date
    type: field_filter
    default_value: 14 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
    model: ga4
    explore: sessions
    listens_to_filters: []
    field: sessions.session_date
  - name: Audience Selector
    title: Audience Selector
    type: field_filter
    default_value: Channel
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: ga4
    explore: sessions
    listens_to_filters: []
    field: sessions.audience_selector
  - name: Source Medium
    title: Source Medium
    type: field_filter
    default_value: google organic
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga4
    explore: sessions
    listens_to_filters: []
    field: sessions.session_attribution_source_medium
  - name: Country
    title: Country
    type: field_filter
    default_value: United States
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: ga4
    explore: sessions
    listens_to_filters: []
    field: sessions.geo_data_country
