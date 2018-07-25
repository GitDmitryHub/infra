provider "google" {
  project = "${var.project}"
  region  = "${var.region}"
}

module "app" {
  source          = "../modules/app"
  public_key_path = "${var.public_key_path}"
  app_disk_image  = "${var.app_disk_image}"
  db_ip           = "${module.db.db_internal_ip}"
}

module "db" {
  source          = "../modules/db"
  public_key_path = "${var.public_key_path}"
  db_disk_image   = "${var.db_disk_image}"
}

module "vpc" {
  source        = "../modules/vpc"
  source_ranges = ["178.74.238.63/32"]
}
