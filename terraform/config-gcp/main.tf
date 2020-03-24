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
