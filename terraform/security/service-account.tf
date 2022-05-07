resource "google_service_account" "gke-service-account" {
  account_id   = "gke-service-account"
  display_name = "gke-service-account"
  project = var.project-id
}

resource "google_project_iam_binding" "log-role" {
  project = var.project-id
  role    = "roles/logging.logWriter"

  members = [
    "serviceAccount:${google_service_account.gke-service-account.email}",
  ]
}
resource "google_project_iam_binding" "metric-role" {
  project = var.project-id
  role    = "roles/monitoring.metricWriter"

  members = [
    "serviceAccount:${google_service_account.gke-service-account.email}",
  ]
}
resource "google_project_iam_binding" "monitoring-role" {
  project = var.project-id
  role    = "roles/monitoring.viewer"

  members = [
    "serviceAccount:${google_service_account.gke-service-account.email}",
  ]
}
resource "google_project_iam_binding" "stack-driver-role" {
  project = var.project-id
  role    = "roles/stackdriver.resourceMetadata.writer"

  members = [
    "serviceAccount:${google_service_account.gke-service-account.email}",
  ]
}
resource "google_project_iam_binding" "objectViewer-role" {
  project = var.project-id
  role    = "roles/storage.objectViewer"

  members = [
    "serviceAccount:${google_service_account.gke-service-account.email}",
  ]
}