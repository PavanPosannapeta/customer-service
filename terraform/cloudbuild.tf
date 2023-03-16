resource "google_cloudbuild_trigger" "demo-trigger" {
  location = "global"
  name     = "demo-trigger"
  filename = "cloudbuild.yaml"

  github {
    owner = "PavanPosannapeta"
    name  = "customer-service"
    push {
      branch = "^main$"
    }
  }

  include_build_logs = "INCLUDE_BUILD_LOGS_WITH_STATUS"
}