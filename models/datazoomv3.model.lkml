connection: "@{CONNECTION_NAME}"

# include all the views
include: "/views/**/*.view"

# include all the dashboards
include: "/dashboards/**/*.dashboard"

datagroup: datazoomv3_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "5 minute"
}

persist_with: datazoomv3_default_datagroup

explore: datazoom_raw {}

explore: userWatchdDistinctContent {}

explore: uniqueUserOnProviderID {}

explore: contentMaxUserWatchTime {}

explore: last5MinUserSession {}



explore: viewing_users {

  join: datazoom_raw {

    type: left_outer

    sql_on: ${viewing_users.user_id} = ${datazoom_raw.device_id} ;;

    relationship: many_to_one

  }

}

explore: final_flux{}


explore: affinity {
  label: "Affinity Analysis"

  always_filter: {
    filters: {
      field: affinity.content_b
      value: "-NULL"
    }
  }
}
