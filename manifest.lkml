project_name: "datazoompoc"

################ Constants ################

## !! Change these values to match your environment

constant: CONNECTION_NAME {
  value: "flm-looker"
  export: override_required
}

constant: BIGQUERY_PROJECT_NAME {
  value: "flm-gcp-lab"
  export: override_required
}

constant: BIGQUERY_DATASET_NAME {
  value: "DZ_DataSet"
  export: override_required
}

constant: DATAZOOM_RAW_TABLE_NAME {
  value: "Shaka_Player"
  export: override_optional
}

# Don't modify this value unless instructed to do so by your DataZoom or Looker Rep
constant: LOOKER_MODEL_NAME {
  value: "datazoomv3"
  export: override_optional
}
