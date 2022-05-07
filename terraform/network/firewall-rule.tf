# resource "google_compute_firewall" "deny-ingress-rule" {
#   project     = var.project_id
#   name        = "deny-ingress-access-rule"
#   network     = google_compute_network.vpc_network.name
#   description = "Creates firewall rule denying access from the internet"
#   source_ranges = ["0.0.0.0/0"]
#   priority = 1000
#   direction  = "INGRESS"
#    deny {
#     protocol  = "all"
#   }
# }
# resource "google_compute_firewall" "deny-egress-rule" {
#   project     = var.project_id
#   name        = "deny-internet-access-rule"
#   network     = google_compute_network.vpc_network.name
#   description = "Creates firewall rule denying access to the internet"
#   destination_ranges = ["0.0.0.0/0"]
#   priority = 1000
#   direction  = "EGRESS"
#    deny {
#     protocol  = "all"
#   }
# }
# resource "google_compute_firewall" "allow-rule-to-subnets" {
#   project     = var.project_id
#   name        = "allow-access-rule-to-subnets"
#   network     = google_compute_network.vpc_network.name
#   description = "Creates firewall rule allowing access to other subnet"
#   destination_ranges = [var.management_subnet_cidr, var.restricted_subnet_cidr]
#   priority = 0
#   direction  = "EGRESS"
#    allow {
#     protocol  = "all"
#   }
# }
# resource "google_compute_firewall" "allow-rule-from-subnets" {
#   project     = var.project_id
#   name        = "allow-access-rule-from-subnets"
#   network     = google_compute_network.vpc_network.name
#   description = "Creates firewall rule allowing access from other subnet"
#   source_ranges = [var.management_subnet_cidr, var.restricted_subnet_cidr]
#   priority = 0
#   direction  = "INGRESS"
#    allow {
#     protocol  = "all"
#   }
# }

resource "google_compute_firewall" "allow-iap" {
  project     = var.project_id
  name        = "allow-iap"
  network     = google_compute_network.vpc_network.name
  description = "Creates firewall rule allowing access from iap range"
  source_ranges = ["35.235.240.0/20"]
  priority = 100
  direction  = "INGRESS"
   allow {
    protocol  = "all"
  }
}
