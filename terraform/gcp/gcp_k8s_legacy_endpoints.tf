resource "google_container_cluster" "denied" {
  metadata = {
  }
}

resource "google_container_cluster" "denied_2" {
  metadata = {
    disable-legacy-endpoints = "false"
  }
  network_policy {
    enabled = true
  }
  min_master_version = "1.12"
}
