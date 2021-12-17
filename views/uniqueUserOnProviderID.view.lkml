
 view: uniqueUserOnProviderID {
   derived_table: {
     sql: Select distinct userID,  contentID, contentTitle, providerID  FROM `flm-gcp-lab.DZ_DataSet.Shaka_Player`
     where userID is not null and contentID is not null and contentTitle is not null and providerID is not null
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
    sql: ${TABLE}.contentID ;;
  }

  dimension: content_title {
    description: "Unique contentTitle"
    type: string
    sql: ${TABLE}.contentTitle ;;
  }

  dimension: content_providerID {
    description: "Unique providerID"
    primary_key: yes
    type: string
    sql: ${TABLE}.providerID ;;
  }

   dimension_group: timestamp {
    description: "Time"
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.timestamp ;;
  }

  measure: count_of_unique_providerID {
    type: count
    drill_fields: [user_id,content_id,content_title,content_providerID]
    description: "Count distinct provideIDs"
  }
 }
