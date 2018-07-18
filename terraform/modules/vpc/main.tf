resource "google_compute_firewall" "firewall_ssh" {
  name    = "default-allow-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = "${var.port}"
  }

  source_ranges = "${var.source_ranges}"
}
