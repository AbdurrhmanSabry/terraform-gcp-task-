output "vpc_id" {
    value = google_compute_network.vpc_network.id
}
output "management_subnet_id" {
    value = google_compute_subnetwork.management_subnet.id 
}
output "restricted_subnet_id" {
    value = google_compute_subnetwork.restricted_subnet.id
}
output "management_subnet_name" {
    value = google_compute_subnetwork.management_subnet.name
}
output "restricted_subnet_name" {
    value = google_compute_subnetwork.restricted_subnet.name
}
output "nat_id" {
    value = google_compute_router_nat.nat.id
}