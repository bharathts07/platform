provider "google" {
  version = "3.5.0"

  credentials = file("keys/pokke-cred.json")

  project = "pokke-256703"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
