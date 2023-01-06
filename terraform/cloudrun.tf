resource "google_cloud_run_service" "cloudrun-tf" {
  name     = "cloudrun-tf"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "us-central1-docker.pkg.dev/electric-orbit-372109/springbootimage/cloudrun:latest"
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

resource "google_cloud_run_service_iam_policy" "pub_access" {
  service     = google_cloud_run_service.cloudrun-tf.name
  location    = google_cloud_run_service.cloudrun-tf.location
  policy_data = data.google_iam_policy.admin.policy_data

}

data "google_iam_policy" "admin" {
  binding {
    role    = "roles/run.invoker"
    members = ["allUsers"]
  }

}
