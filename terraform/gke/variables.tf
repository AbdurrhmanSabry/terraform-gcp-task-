variable "gke-location" {
    type = string
}
variable "gke-cluster-name" {
    type = string
}
variable "service-account-email" {
    type = string
}
variable "gke-node-machine-type" {
    type = string
}
variable "gke-node-count" {
    type = number
}
variable "network-id" {
    type = string
}
variable "authorized-network-cidr" {
    type = string
}
variable "subnet_name" {
    type = string
}
variable "master_ipv4_cidr_block" {
    type = string
}
variable "pods_ipv4_cidr_block" {
    type = string
}
variable "services_ipv4_cidr_block" {
    type = string
}
