resource "google_container_node_pool" "node_pool" {
  name       = "my-node-pool"
  location   = var.gke-location
  node_locations = ["${var.gke-location}-a","${var.gke-location}-b","${var.gke-location}-c"]
  cluster    = google_container_cluster.primary.name
  node_count = var.gke-node-count

  node_config {
    preemptible  = true
    machine_type = var.gke-node-machine-type
    disk_size_gb = 20
    service_account = var.service-account-email
    # oauth_scopes    = [
    #   "https://www.googleapis.com/auth/cloud-platform"
    # ]
    oauth_scopes = [
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/trace.append",
    ]
  }
  upgrade_settings {
    max_surge       = 1
    max_unavailable = 1
  }
  autoscaling {
    max_node_count = 1
    min_node_count = 1
  }
  management {
    auto_repair  = true
    auto_upgrade = true
  }

}