variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable private_key_path {
  default = "~/.ssh/appuser"
}

variable machine {
  default = "g1-small"
}

variable db_ip {
  description = "MongoDB database address to connect app"
  default     = "127.0.0.1"
}
