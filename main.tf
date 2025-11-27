terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  credentials = var.gcp_credentials
  project     = "gifted-decker-469618-t5" # your existing project
  region      = "us-central1"
}

# Example resource: a storage bucket
resource "google_storage_bucket" "example_bucket" {
  name          = "my-terraform-bucket-2025"
  location      = "US"
  force_destroy = true
}
