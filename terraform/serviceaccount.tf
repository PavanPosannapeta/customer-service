resource "google_service_account" "terraformserviceaccount" {
  account_id   = "terraform-testing"
  display_name = "Service Account"

}

resource "google_service_account_iam_binding" "terraformserviceaccountRoles" {
  service_account_id = google_service_account.terraformserviceaccount.name
  role               = "roles/iam.serviceAccountUser"
  members = [
    "serviceAccount:${google_service_account.terraformserviceaccount.email}",
  ]
}

resource "google_service_account_iam_member" "gce-default-account-iam" {
  service_account_id = google_service_account.terraformserviceaccount.name
  role               = "roles/iam.serviceAccountUser"
  member             = "serviceAccount:${google_service_account.terraformserviceaccount.email}"
}
