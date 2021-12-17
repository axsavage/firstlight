view: datazoom_raw {

  sql_table_name: `@{BIGQUERY_PROJECT_NAME}.@{BIGQUERY_DATASET_NAME}.@{DATAZOOM_RAW_TABLE_NAME}`

    ;;
  dimension: sessionID {
    type: string
    sql: ${TABLE}.sessionID ;;
  }

  dimension: userID {
    type: string
    sql: ${TABLE}.userID ;;
  }


  measure: distinct_userID {
    type: count_distinct
    sql: ${userID};;
  }

  measure: distinct_users {
    type: count_distinct
    sql: ${userID} ;;
  }


  dimension: providerID {
    type: string
    sql: ${TABLE}.providerID ;;
  }


  measure: distinct_providerID {
    type: count_distinct
    sql: ${providerID} ;;
    drill_fields: [userID,contentID,contentTitle, providerID]
  }

  measure: distinct_providers {
    type: count_distinct
    sql: ${providerID} ;;

  }

  dimension: contentID {
    type: string
    sql: ${TABLE}.contentID ;;
  }

  measure: distinct_contentID{
    type: count_distinct
    sql: ${contentID} ;;
  }
  dimension: contentTitle {
    type: string
    sql: ${TABLE}.contentTitle ;;
  }

  measure: distinct_contentTitle{
      type: count_distinct
      sql: ${contentTitle} ;;
  }

  dimension: contentGenre {
    type: string
    sql: ${TABLE}.contentGenre ;;
  }



  dimension: abs_shift {
    type: string
    sql: ${TABLE}.abs_shift ;;
  }

  dimension: ad_blocker {
    type: yesno
    sql: ${TABLE}.ad_blocker ;;
  }

  dimension: ad_break_id {
    type: string
    sql: ${TABLE}.ad_break_id ;;
  }

  dimension: ad_click_url {
    type: string
    sql: ${TABLE}.ad_click_url ;;
  }

  dimension: ad_creative_id {
    type: string
    sql: ${TABLE}.ad_creative_id ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: ad_partner {
    type: string
    sql: ${TABLE}.ad_partner ;;
  }

  dimension: ad_position {
    type: string
    sql: ${TABLE}.ad_position ;;
  }

  dimension: ad_session_id {
    type: string
    sql: ${TABLE}.ad_session_id ;;
  }

  dimension: ad_system {
    type: string
    sql: ${TABLE}.ad_system ;;
  }

  dimension: ad_time_offset_sec {
    type: number
    sql: ${TABLE}.ad_time_offset_sec ;;
  }

  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }

  dimension: app_session_id {
    type: string
    sql: ${TABLE}.app_session_id ;;
  }

  dimension: asn {
    type: string
    sql: ${TABLE}.asn ;;
  }

  dimension: asn_org {
    type: string
    sql: ${TABLE}.asn_org ;;
  }

  dimension: autostart {
    type: yesno
    sql: ${TABLE}.autostart ;;
  }

  dimension: bandwidth_kbps {
    type: number
    sql: ${TABLE}.bandwidth_kbps ;;
  }

  dimension: browser_height {
    type: number
    sql: ${TABLE}.browser_height ;;
  }

  dimension: browser_name {
    type: string
    sql: ${TABLE}.browser_name ;;
  }

  dimension: browser_version {
    type: string
    sql: ${TABLE}.browser_version ;;
  }

  dimension: browser_width {
    type: number
    sql: ${TABLE}.browser_width ;;
  }

  dimension: buffer_duration_ads_ms {
    type: number
    sql: ${TABLE}.buffer_duration_ads_ms ;;
  }

  dimension: buffer_duration_content_ms {
    type: number
    sql: ${TABLE}.buffer_duration_content_ms ;;
  }

  dimension: buffer_duration_ms {
    type: number
    sql: ${TABLE}.buffer_duration_ms ;;
  }

  dimension: buffer_fill_percent {
    type: number
    sql: ${TABLE}.buffer_fill_percent ;;
  }

  dimension: casting {
    type: yesno
    sql: ${TABLE}.casting ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: client_ip {
    type: string
    sql: ${TABLE}.client_ip ;;
  }

  dimension: client_ts_millis {
    type: number
    sql: ${TABLE}.client_ts_millis ;;
  }

  dimension: configuration_id {
    type: string
    sql: ${TABLE}.configuration_id ;;
  }

  dimension: connector_sampling_rate {
    type: string
    sql: ${TABLE}.connector_sampling_rate ;;
  }

  dimension: content_session_id {
    type: string
    sql: ${TABLE}.content_session_id ;;
  }

  dimension: controls {
    type: yesno
    sql: ${TABLE}.controls ;;
  }

  dimension: cookies_enabled {
    type: yesno
    sql: ${TABLE}.cookies_enabled ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: current_audio_track {
    type: string
    sql: ${TABLE}.current_audio_track ;;
  }

  dimension: current_subtitles {
    type: string
    sql: ${TABLE}.current_subtitles ;;
  }

  dimension: customer_code {
    type: string
    sql: ${TABLE}.customer_code ;;
  }

  dimension: deal_id {
    type: string
    sql: ${TABLE}.deal_id ;;
  }

  dimension: default_muted {
    type: yesno
    sql: ${TABLE}.default_muted ;;
  }

  dimension: default_playback_rate {
    type: string
    sql: ${TABLE}.default_playback_rate ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }

  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }

  dimension: duration_sec {
    type: number
    sql: ${TABLE}.duration_sec ;;
  }

  dimension: dz_sdk_version {
    type: string
    sql: ${TABLE}.dz_sdk_version ;;
  }

  dimension: engagement_duration_ms {
    type: number
    sql: ${TABLE}.engagement_duration_ms ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}.error_code ;;
  }

  dimension: error_msg {
    type: string
    sql: ${TABLE}.error_msg ;;
  }

  dimension: event_count {
    type: number
    sql: ${TABLE}.event_count ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}.event_id ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.event_type ;;
  }

  dimension: fullscreen {
    type: yesno
    sql: ${TABLE}.fullscreen ;;
  }

  dimension: in_sample {
    type: yesno
    sql: ${TABLE}.in_sample ;;
  }

  dimension: inner_error {
    type: string
    sql: ${TABLE}.inner_error ;;
  }

  dimension: isp {
    type: string
    sql: ${TABLE}.isp ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}.keywords ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: latitude_rounded {
    type: number
    sql: ROUND(${latitude},2) ;;
  }

  dimension: longitude_rounded {
    type: number
    sql: ROUND(${longitude},2) ;;
  }

  dimension: loop {
    type: yesno
    sql: ${TABLE}.loop ;;
  }

  dimension: media_type {
    type: string
    sql: ${TABLE}.media_type ;;
  }

  dimension: milestone_percent {
    type: number
    sql: ${TABLE}.milestone_percent ;;
  }

  dimension: muted {
    type: yesno
    sql: ${TABLE}.muted ;;
  }

  dimension: num_ad_plays {
    type: number
    sql: ${TABLE}.num_ad_plays ;;
  }

  dimension: num_content_plays {
    type: number
    sql: ${TABLE}.num_content_plays ;;
  }

  dimension: num_errors {
    type: number
    sql: ${TABLE}.num_errors ;;
  }

  dimension: num_errors_ads {
    type: number
    sql: ${TABLE}.num_errors_ads ;;
  }

  dimension: num_errors_content {
    type: number
    sql: ${TABLE}.num_errors_content ;;
  }

  dimension: num_requests_content {
    type: number
    sql: ${TABLE}.num_requests_content ;;
  }

  dimension: os_name {
    type: string
    sql: ${TABLE}.os_name ;;
  }

  dimension: os_version {
    type: string
    sql: ${TABLE}.os_version ;;
  }

  dimension: page_title {
    type: string
    sql: ${TABLE}.page_title ;;
  }


  dimension: playback_duration_ads_ms {
    type: number
    sql: ${TABLE}.playback_duration_ads_ms ;;
  }

  dimension: playback_duration_content_ms {
    type: number
    sql: ${TABLE}.playback_duration_content_ms ;;
  }

  dimension: playback_duration_ms {
    type: number
    sql: ${TABLE}.playback_duration_ms ;;
  }

  dimension: playback_rate {
    type: number
    sql: ${TABLE}.playback_rate ;;
  }

  dimension: player_height {
    type: number
    sql: ${TABLE}.player_height ;;
  }

  dimension: player_name {
    type: string
    sql: ${TABLE}.player_name ;;
  }

  dimension: player_state {
    type: string
    sql: ${TABLE}.player_state ;;
  }

  dimension: player_version {
    type: string
    sql: ${TABLE}.player_version ;;
  }

  dimension: player_viewable {
    type: yesno
    sql: ${TABLE}.player_viewable ;;
  }

  dimension: player_viewable_percent {
    type: number
    sql: ${TABLE}.player_viewable_percent ;;
  }

  dimension: player_width {
    type: number
    sql: ${TABLE}.player_width ;;
  }

  dimension: playhead_position_sec {
    type: number
    sql: ${TABLE}.playhead_position_sec ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postal_code ;;
  }

  dimension: preload {
    type: yesno
    sql: ${TABLE}.preload ;;
  }

  dimension: referrer_url {
    type: string
    sql: ${TABLE}.referrer_url ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.region_code ;;
  }

  dimension: rendition_height {
    type: number
    sql: ${TABLE}.rendition_height ;;
  }

  dimension: rendition_name {
    type: string
    sql: ${TABLE}.rendition_name ;;
  }

  dimension: rendition_video_bitrate_kbps {
    type: number
    sql: ${TABLE}.rendition_video_bitrate_kbps ;;
  }

  dimension: rendition_width {
    type: number
    sql: ${TABLE}.rendition_width ;;
  }

  dimension: seek_end_point_ms {
    type: number
    sql: ${TABLE}.seek_end_point_ms ;;
  }

  dimension: seek_start_point_ms {
    type: number
    sql: ${TABLE}.seek_start_point_ms ;;
  }

  dimension: server_ts_offset_ms {
    type: number
    sql: ${TABLE}.server_ts_offset_ms ;;
  }

  dimension: skip_time_offset_sec {
    type: number
    sql: ${TABLE}.skip_time_offset_sec ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: stall_count {
    type: number
    sql: ${TABLE}.stall_count ;;
  }

  dimension: stall_count_ads {
    type: number
    sql: ${TABLE}.stall_count_ads ;;
  }

  dimension: stall_count_content {
    type: number
    sql: ${TABLE}.stall_count_content ;;
  }

  dimension: stall_duration_ads_ms {
    type: number
    sql: ${TABLE}.stall_duration_ads_ms ;;
  }

  dimension: stall_duration_content_ms {
    type: number
    sql: ${TABLE}.stall_duration_content_ms ;;
  }

  dimension: stall_duration_ms {
    type: number
    sql: ${TABLE}.stall_duration_ms ;;
  }

  dimension: startup_duration_content_ms {
    type: number
    sql: ${TABLE}.startup_duration_content_ms ;;
  }

  dimension: startup_duration_total_ms {
    type: number
    sql: ${TABLE}.startup_duration_total_ms ;;
  }

  dimension: streaming_protocol {
    type: string
    sql: ${TABLE}.streaming_protocol ;;
  }

  dimension: streaming_type {
    type: string
    sql: ${TABLE}.streaming_type ;;
  }

  dimension: subtitles {
    type: yesno
    sql: ${TABLE}.subtitles ;;
  }

  dimension: time_since_last_ad_break_start_ms {
    type: number
    sql: ${TABLE}.time_since_last_ad_break_start_ms ;;
  }

  dimension: time_since_last_ad_completed_ms {
    type: number
    sql: ${TABLE}.time_since_last_ad_completed_ms ;;
  }

  dimension: time_since_last_buffer_start_ad_ms {
    type: number
    sql: ${TABLE}.time_since_last_buffer_start_ad_ms ;;
  }

  dimension: time_since_last_buffer_start_content_ms {
    type: number
    sql: ${TABLE}.time_since_last_buffer_start_content_ms ;;
  }

  dimension: time_since_last_buffer_start_ms {
    type: number
    sql: ${TABLE}.time_since_last_buffer_start_ms ;;
  }

  dimension: time_since_last_heartbeat_ms {
    type: number
    sql: ${TABLE}.time_since_last_heartbeat_ms ;;
  }

  dimension: time_since_last_milestone_ad_ms {
    type: number
    sql: ${TABLE}.time_since_last_milestone_ad_ms ;;
  }

  dimension: time_since_last_milestone_content_ms {
    type: number
    sql: ${TABLE}.time_since_last_milestone_content_ms ;;
  }

  dimension: time_since_last_pause_ms {
    type: number
    sql: ${TABLE}.time_since_last_pause_ms ;;
  }

  dimension: time_since_last_rendition_change_ms {
    type: number
    sql: ${TABLE}.time_since_last_rendition_change_ms ;;
  }

  dimension: time_since_last_request_ad_ms {
    type: number
    sql: ${TABLE}.time_since_last_request_ad_ms ;;
  }

  dimension: time_since_last_seek_start_ms {
    type: number
    sql: ${TABLE}.time_since_last_seek_start_ms ;;
  }

  dimension: time_since_last_stall_start_content_ms {
    type: number
    sql: ${TABLE}.time_since_last_stall_start_content_ms ;;
  }

  dimension: time_since_last_stall_start_ms {
    type: number
    sql: ${TABLE}.time_since_last_stall_start_ms ;;
  }

  dimension: time_since_last_started_ad_ms {
    type: number
    sql: ${TABLE}.time_since_last_started_ad_ms ;;
  }

  dimension: time_since_request_content_ms {
    type: number
    sql: ${TABLE}.time_since_request_content_ms ;;
  }

  dimension: time_since_started_content_ms {
    type: number
    sql: ${TABLE}.time_since_started_content_ms ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      minute,
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}.user_agent ;;
  }

  dimension: volume_level_percent {
    type: string
    sql: ${TABLE}.volume_level_percent ;;
  }

  dimension: wrapper_creative_ids {
    type: string
    sql: ${TABLE}.wrapper_creative_ids ;;
  }

  dimension: wrapper_id {
    type: string
    sql: ${TABLE}.wrapper_id ;;
  }

  dimension: wrapper_systems {
    type: string
    sql: ${TABLE}.wrapper_systems ;;
  }

  measure: count {
    type: count
    drill_fields: [player_name, browser_name, os_name, advertiser_name, rendition_name]
  }

  measure: Unique_Devices{
    sql: ${device_id} ;;
    type: count_distinct
    description: "Unique device IDs"
  }

  measure: median_TTFF_startup_duration_total {
    description: "The median time it takes to start playback from the play request"
    label: "Median TTFF"
    sql: ${startup_duration_total_ms} ;;
    type: percentile
    percentile: 50
    filters: [
      event_type: "playback_start",
      media_type: "content"]
  }
  measure: heartbeats {
    label: "hearbeatstest"
    type: count_distinct
    sql: ${event_id} ;;
    filters: [
      event_type: "heartbeat"]
  }
  # measure: heartbeats {
  #   type: count
  #   filters: [
  #     event_type: "heartbeat"]
  # }
  measure: minutes_from_heartbeat{
    description: "Mintures viewed calculated from the number of heartbeats"
    label: "Minutes viewed"
    type: number
    sql: (${heartbeats}) ;;
  }

  measure: unique_sessions{
    sql: ${app_session_id} ;;
    type: count_distinct
    description: "Unique session IDs"
  }

  measure: minutes_per_session{
    description: "Average number of minutes viewed per session"
    label: "Average minutes per session"
    type: number
    sql: (${heartbeats}/${unique_sessions}) ;;
    value_format: "#.00;(#.00)"
  }

  measure: minutes_per_device{
    description: "Average number of minutes viewed per device id"
    label: "Average minutes per device"
    type: number
    sql: (${heartbeats}/${Unique_Devices}) ;;
    value_format: "#.00;(#.00)"
  }

  measure: content_milestones {
    type: count
    filters: [
      event_type: "milestone",
      media_type: "content"]
  }

  measure: Ad_Impressions {
    description: "The number of ad impressions served to users"
    type: count
    filters: {
      field: event_type
      value: "ad_impression"
    }
  }

  measure: Content_Views{
    sql: ${content_session_id} ;;
    type: count_distinct
    drill_fields: [content_session_id, title]
  }

  measure: Views_with_error{
    type: count_distinct
    sql: ${content_session_id} ;;
    filters: [
      event_type: "error",
      media_type: "content"]
  }

  measure: Video_Error_Rate{
    type: number
    value_format_name: percent_2
    sql: (${Views_with_error}/NULLIF(${Content_Views}, 0)) ;;
  }

  measure: ad_breaks{
    type: count_distinct
    sql: ${ad_break_id} ;;
  }

  measure: ad_breaks_with_error{
    type: count_distinct
    sql: ${ad_break_id} ;;
    filters: [
      event_type: "error",
      media_type: "ad"]
  }

  measure: Ad_Error_Rate{
    type: number
    value_format_name: percent_2
    sql: (${ad_breaks_with_error}/NULLIF(${ad_breaks}, 0)) ;;
  }

  dimension: geolocation {
    type: location
    sql_latitude:${latitude_rounded} ;;
    sql_longitude:${longitude_rounded} ;;
  }


  measure: Ad_Completes {
    type: count_distinct
    sql: ${ad_session_id} ;;
    filters: {
      field: event_type
      value: "playback_complete"
    }
  }

  measure: Ad_Clicks {
    type: count_distinct
    sql: ${ad_session_id} ;;
    filters: {
      field: event_type
      value: "ad_click"
    }
  }

  measure: Ad_Starts {
    type: count_distinct
    sql: ${ad_session_id} ;;
    filters: [
      event_type: "playback_start",
      media_type: "ad"]
  }

  measure: Ad_Completion_Rate {
    description: "The percentage of ads that are watched in their entirity."
    type: number
    value_format_name: percent_2
    sql: ((${Ad_Completes}/NULLIF(${Ad_Starts}, 0))) ;;
  }

  measure: Ad_Clickthrough_Rate {
    description: "The percentage of ads that are watched in their entirity."
    type: number
    value_format_name: percent_2
    sql: ((${Ad_Clicks}/NULLIF(${Ad_Starts}, 0))) ;;
  }

  measure: Distinct_Ad_Break_Starts {
    description: "The number of views that have an ad break start"
    type: count_distinct
    sql: ${ad_break_id} ;;
    filters: {
      field: event_type
      value: "ad_break_start"
    }
  }

  measure: Distinct_Ad_Break_Ends {
    description: "The number of views that have an ad break end"
    type: count_distinct
    sql: ${ad_break_id} ;;
    filters: {
      field: event_type
      value: "ad_break_end"
    }
  }

  measure: Ad_Tollerance {
    label: "Ad Tolerance"
    description: "The percentage of adbreaks that end"
    type: number
    value_format_name: percent_2
    sql: (${Distinct_Ad_Break_Ends}/NULLIF(${Distinct_Ad_Break_Starts}, 0)) ;;
  }

  measure: distinct_ad_break_impressions {
    description: "Unique ad break ids for ad impression events"
    type: count_distinct
    sql: ${ad_break_id} ;;
    filters: {
      field: event_type
      value: "ad_impression"
    }
  }

  measure: distinct_ad_break_ad_requests {
    description: "Unique ad break ids for ad impression events"
    type: count_distinct
    sql: ${ad_break_id} ;;
    filters: [
      event_type: "media_request",
      media_type: "ad"]
  }

  measure: ad_fill_rate{
    description: "The percentage of ad requests that have a resulting ad impression"
    type: number
    value_format_name: percent_2
    sql: (${distinct_ad_break_impressions}/NULLIF(${distinct_ad_break_ad_requests}, 0)) ;;

  }

  dimension: playhead_position_bucket {
    description: "Position of the playhead bucketed into 5 minute intervals"
    type: tier
    tiers: [
      0,
      300,
      600,
      900,
      1200,
      1500,
      1800,
      2100
    ]
    sql: ${playhead_position_sec} ;;
  }

  dimension: 30_day_window{
    case: {
      when: {
        sql: DATE_DIFF(CURRENT_DATE(),${timestamp_date},DAY) <= 30;;
        label: "Now"
      }
      when: {
        sql: DATE_DIFF(CURRENT_DATE(),${timestamp_date},DAY) <= 60;;
        label: "Previous"
      }
      else:  "Historical"

    }
  }

}
