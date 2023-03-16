terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.46.0"
    }
  }
}

provider "google" {
  project     = "my-second-project-378603"
  region      = "asia-south1"
  zone        = "asia-south1-a"
  credentials = "/Users/pavan_posannapeta/Downloads/my-second-project-378603-e5f54eb751b8.json"
}
