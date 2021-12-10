view: contentMaxUserWatchTime {

  derived_table: {
    sql: SELECT distinct userID, contentID, contentTitle, max( playback_duration_content_ms ) maxTime
          FROM `flm-gcp-lab.DZ_DataSet.Shaka_Player`
          where  contentID is not null group by userID,  contentID, contentTitle order by userID, contentID
             ;;
  }

  dimension: maxTime {
    type: number
    sql: ${TABLE}.maxTime ;;
  }


  dimension: user_id {
    description: "Unique userID "
    type: string
    sql: ${TABLE}.userID ;;
  }

  dimension: content_id {
    description: "Unique contentID"
    type: string
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


  measure: UserMaxWatchTime {
    type: sum
    sql: round( ${TABLE}.maxTime /60)  ;;

  }
}
