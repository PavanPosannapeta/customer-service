resource "google_cloud_run_service" "cloudrun-demo" {
  name     = "cloudrun-demo"
  location = "asia-south1"

  template {
    spec {
      containers {
        image = "asia-south1-docker.pkg.dev/my-second-project-378603/customer-service/customer-service:v1"
      }
    }

    metadata {
      labels = {
        "env"     = "test"
        "release" = "poc"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service_iam_policy" "pub_access" {
  service     = google_cloud_run_service.cloudrun-demo.name
  location    = google_cloud_run_service.cloudrun-demo.location
  policy_data = data.google_iam_policy.admin.policy_data

}

data "google_iam_policy" "admin" {
  binding {
    role    = "roles/run.invoker"
    members = ["allUsers"]
  }

}