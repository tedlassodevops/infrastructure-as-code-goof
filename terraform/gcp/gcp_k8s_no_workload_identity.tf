resource "google_container_cluster" "denied" {
  workload_metadata_config {
    node_metadata = "EXPOSE"
  }
  min_master_version = "1.12"
  enable_intranode_visibility = true
  network_policy {
    enabled = true
  }
  pod_security_policy_config {
  }
  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

resource "google_container_cluster" "denied_2" {
  workload_metadata_config {
    node_metadata = "SECURE"
  }
}


resource "google_container_cluster" "denied_3" {}
