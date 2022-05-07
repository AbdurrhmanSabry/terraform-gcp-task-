resource "google_compute_instance" "private-vm" {
  name         = "private-vm"
  machine_type = "e2-micro"
  zone         = "${var.region}-a"

  tags = ["private", "vm"]  
  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-7"
      size = 20
    }
  }

  network_interface {
    network = var.vpc_name
    subnetwork = module.network.management_subnet_name
  }
}