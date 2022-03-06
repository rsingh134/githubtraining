provider "google" {
  credentials = "${file("SA-key2.json")}"
  project     = "careful-engine-342002"  // give your project-ID
  region      = "us-central1" // region where we’ll be working
  zone        = "us-central1-a" // availability zone
}

resource "google_compute_instance" "default" {
  name         = "TFE-test"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}

