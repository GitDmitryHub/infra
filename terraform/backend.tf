resource "google_storage_bucket" "image-store" {
  name     = "tf-state-storage"
  location = "EU"
}

terraform {
  backend "gcs" {
    bucket = "tf-state-storage"
  }
}
