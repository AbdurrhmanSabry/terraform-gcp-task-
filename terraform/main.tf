module "network" {
  source = "./network"

  project_id = var.project_id
  region = var.region
  vpc_name = var.vpc_name
  management_subnet_cidr = var.management_subnet_cidr
  restricted_subnet_cidr = var.restricted_subnet_cidr
}
module "security" {
    source = "./security"

    project-id = var.project_id
}
module "gke" {
    source = "./gke"
    gke-cluster-name = var.gke-cluster-name
    gke-node-count = var.gke-node-count
    gke-node-machine-type = var.gke-node-machine-type
    gke-location = var.region
    service-account-email = module.security.service_account_email
    network-id = module.network.vpc_id
    authorized-network-cidr = var.management_subnet_cidr
    subnet_name                = module.network.restricted_subnet_name
    master_ipv4_cidr_block     = var.master_ipv4_cidr_block
    pods_ipv4_cidr_block       = var.pods_ipv4_cidr_block
    services_ipv4_cidr_block = var.services_ipv4_cidr_block
}