
view: userWatchdDistinctContent {
   derived_table: {
     sql: SELECT distinct  userID,  contentID, contentTitle, event_type
          FROM `flm-gcp-lab.DZ_DataSet.Shaka_Player`
          where  contentID is not null and event_type='playback_start' order by userID, contentID
       ;;
   }

    dimension: user_id {
      description: "Unique userID "
      type: string
      sql: ${TABLE}.userID ;;
    }

    dimension: content_id {
      description: "Unique contentID"
      type: string
      primary_key: yes
      sql: ${TABLE}.contentID ;;
    }

    dimension: content_title {
      description: "Unique contentTitle"
      type: string
      sql: ${TABLE}.contentTitle ;;
    }


    dimension_group: timestamp {
      description: "Time"
      type: time
      timeframes: [date, week, month, year]
      sql: ${TABLE}.timestamp ;;
    }

    measure: count_MostWatchContent {
      type: count

    }
 }
