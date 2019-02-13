variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app"
}

variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-app"
}

variable project {
  description = "Project ID"
}

variable region {
  description = "Region"
  default     = "europe-west1"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

#variable public_key_path_1 {
#  description = "Path to the public key"
#}

variable private_key_path {
  description = "Path to the private key"
}

#variable disk_image {
#  description = "Disk image"
#}

