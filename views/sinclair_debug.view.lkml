view: sinclair_debug {
  sql_table_name: `jwplayerdataset.sinclair_debug`
    ;;

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

  dimension: app_session_start_ts_ms {
    type: number
    sql: ${TABLE}.app_session_start_ts_ms ;;
  }

  dimension: asn {
    type: string
    sql: ${TABLE}.asn ;;
  }

  dimension: asn_org {
    type: string
    sql: ${TABLE}.asn_org ;;
  }

  dimension: asset_id {
    type: string
    sql: ${TABLE}.asset_id ;;
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

  dimension: content_session_start_ts_ms {
    type: number
    sql: ${TABLE}.content_session_start_ts_ms ;;
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

  dimension: google_analytics_client_id {
    type: string
    sql: ${TABLE}.googleAnalyticsClientId ;;
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

  dimension: page_url {
    type: string
    sql: ${TABLE}.page_url ;;
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

  dimension: site_domain {
    type: string
    sql: ${TABLE}.site_domain ;;
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

  dimension: user_id {
    type: string
    sql: ${TABLE}.userID ;;
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
}
