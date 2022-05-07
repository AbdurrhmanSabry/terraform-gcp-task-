variable "project_id" {
    type = string
}
variable "region" {
    type = string
}
variable "vpc_name" {
    type = string
}
variable "management_subnet_cidr" {
    type = string
}
variable "restricted_subnet_cidr" {
  type = string
}
variable "gke-cluster-name" {
    type = string
}
variable "gke-node-machine-type" {
    type = string
}
variable "gke-node-count" {
    type = number
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