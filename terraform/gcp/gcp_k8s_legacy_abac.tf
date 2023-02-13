resource "google_container_cluster" "denied" {
  enable_legacy_abac = true
  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }
  min_master_version = "1.12"
}
