terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.46.0"
    }
  }
}

provider "google" {
  project     = "electric-orbit-372109"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = "/Users/manikanthabolisetty/terraformPractice/GCP/electric-orbit-372109-ca92fdd6c390.json"
}
