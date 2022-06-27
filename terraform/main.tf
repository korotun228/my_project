provider "google" {
  credentials = file("gcp.json")
  project     = "scenic-impact-349612 "
  region      = "us-west4"
  zone        = "us-west4-b"
}
resource "google_compute_instance" "my_server" {
  name         = "test-server"
  machine_type = "n1-standard-1"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "default"
  }
}
