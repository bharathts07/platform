provider "google" {
  version = "3.5.0"

  credentials = file("keys/pokke-cred.json")

  project = "pokke-256703"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-b"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  tags         = ["web", "dev"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}
