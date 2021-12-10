

 view: last5MinUserSession {
   derived_table: {
     sql:
      select sessionID, userID, app_session_id , contentID, contentTitle, max(timestamp) latestTime from (
          select  sessionID, userID, event_type,app_session_id , contentID, contentTitle, timestamp from  `flm-gcp-lab.DZ_DataSet.Shaka_Player`
          where event_type in ('custom_playbackRequest','media_loaded','media_request','playback_start','heartbeat', 'playing' )
          and  TIMESTAMP_DIFF (current_timestamp, timestamp, minute) <= 5 order by timestamp desc
      ) group by sessionID, userID,app_session_id, contentID, contentTitle
       ;;
   }

  dimension: sessionID {
    description: "User session ID"
    type: string
    sql: ${TABLE}.sessionID ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.userID ;;
  }

  dimension: app_session_id {
    description: "User app session ID"
    type: string
    sql: ${TABLE}.app_session_id ;;
  }
  dimension: content_id {
    type: string
    sql: ${TABLE}.contentID ;;
  }

  dimension: content_title {
    type: string
    sql: ${TABLE}.contentTitle ;;
  }

  dimension: latest_Time {
    type: number
    sql: ${TABLE}.latestTime ;;
  }


  measure: count_app_sessionID {
    description: "Count session ID.
                  Same user credential my be used to watch content on different devices. It would be appeared multiple same session ID for same user"
    type: count_distinct
    sql_distinct_key: app_session_id ;;
    sql:  ${TABLE}.app_session_id   ;;

  }
 }
