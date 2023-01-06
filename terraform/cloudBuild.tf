resource "google_cloudbuild_trigger" "include-build-logs-trigger" {
  location = "us-central1"
  name     = "include-build-logs-trigger"
  filename = "cloudbuild.yaml"

  github {
    owner = "manikanthaabolisetty"
    name  = "cloudbuild"
    push {
      branch = "^main$"
    }
  }

  include_build_logs = "INCLUDE_BUILD_LOGS_WITH_STATUS"
}
