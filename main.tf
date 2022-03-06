provider "google" {
  credentials = "${file("SA-key1.json")}"
  project     = "development-342105"  // give your project-ID
  region      = "us-central1" // region where we’ll be working
  zone        = "us-central1-a" // availability zone
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "false"
}
