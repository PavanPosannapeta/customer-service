terraform {
  backend "gcs" {
    bucket = "terraform-demo-posan"
    prefix = "terraform/state"
  }

}
