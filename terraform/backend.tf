terraform {
  backend "gcs" {
    bucket  = "gcp-terra-state-file"
    prefix  = "terraform/state"
  }
}