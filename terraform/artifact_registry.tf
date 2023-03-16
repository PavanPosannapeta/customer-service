resource "google_artifact_registry_repository" "my-repo" {
  location      = "asia-south1"
  repository_id = "customer-service"
  format        = "DOCKER"

}