view: test_view {
  derived_table: {
    sql: SELECT
          ROUND(datazoom_raw.latitude,2)  AS datazoom_raw_latitude_rounded,
          ROUND(datazoom_raw.longitude,2)  AS datazoom_raw_longitude_rounded,
          COUNT(DISTINCT datazoom_raw.userID ) AS datazoom_raw_distinct_userid_1
      FROM `flm-gcp-lab.DZ_DataSet.Shaka_Player`

           AS datazoom_raw
      GROUP BY
          1,
          2
      ORDER BY
          3 DESC
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: datazoom_raw_latitude_rounded {
    type: location
    sql: ${TABLE}.datazoom_raw_latitude_rounded ;;
  }

  dimension: datazoom_raw_longitude_rounded {
    type: location
    sql: ${TABLE}.datazoom_raw_longitude_rounded ;;
  }

  dimension: datazoom_raw_distinct_userid_1 {
    type: number
    sql: ${TABLE}.datazoom_raw_distinct_userid_1 ;;
  }

  set: detail {
    fields: [datazoom_raw_latitude_rounded, datazoom_raw_longitude_rounded, datazoom_raw_distinct_userid_1]
  }
}
