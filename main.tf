variable project_name {}
variable disk_name {}

provider "google" {
  project     = var.project_name
  region  = "us-central1"
  zone    = "us-central1-a"
}

data "google_compute_disk" "demo" {
    name = var.disk_name
    project = var.project_name
}

output "demo" {
    value = data.google_compute_disk.demo
}