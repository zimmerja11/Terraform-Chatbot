resource "random_string" "autonomous_database_adw_admin_password" {
  length      = 16
  min_numeric = 1
  min_lower   = 1
  min_upper   = 1
  min_special = 1
}

resource "random_integer" "adw_priority" {
  min = 1
  max = 100
}

resource "random_string" "adw_random" {
  length = 2
  special = false
  number = true
}

resource "oci_database_autonomous_database" "adw_autonomous_database" {
  #Required
  admin_password = random_string.autonomous_database_adw_admin_password.result
  compartment_id = "ocid1.compartment.oc1..aaaaaaaalur6tds5i2ofewsexp65stamlgxb2arun2kbfz3xqzkx4g7vmyoa"

  #subnet_id                = "ocid1.subnet.oc1.phx.aaaaaaaam7ttxjbwq7t7jzolmryazw4bbqyndyiexai4dgfypqhqq2cplcsa"
  cpu_core_count           = "1"
  data_storage_size_in_tbs = "1"
  db_name                  = "dish5Gadw${random_string.adw_random.result}db"
  db_version               = "19c"
  db_workload              = "DW"
  display_name             = "dish5Gadw${random_integer.adw_priority.result}db"
  is_auto_scaling_enabled  = "true"

  freeform_tags = {
    "Department" = "ECA"
  }

  #Optional
  #autonomous_container_database_id = "${oci_database_autonomous_container_database.test_autonomous_container_database.id}"
  #autonomous_database_backup_id = "${oci_database_autonomous_database_backup.test_autonomous_database_backup.id}"
  #autonomous_database_id = "${oci_database_autonomous_database.test_autonomous_database.id}"
  #clone_type = "${var.autonomous_database_clone_type}"
  #data_safe_status = "${var.autonomous_database_data_safe_status}"
  #db_version = "${var.autonomous_database_db_version}"

  #defined_tags = "${var.autonomous_database_defined_tags}"

  #is_dedicated = "${var.autonomous_database_is_dedicated}"
  #is_free_tier = "${var.autonomous_database_is_free_tier}"
  #is_preview_version_with_service_terms_accepted = "${var.autonomous_database_is_preview_version_with_service_terms_accepted}"
  #license_model = "${var.autonomous_database_license_model}"
  #nsg_ids = "${var.autonomous_database_nsg_ids}"
  #private_endpoint_label = "${var.autonomous_database_private_endpoint_label}"
  #source = "${var.autonomous_database_source}"
  #source_id = "${oci_database_source.test_source.id}"

  #timestamp = "${var.autonomous_database_timestamp}"
  #whitelisted_ips = "${var.autonomous_database_whitelisted_ips}"
}
