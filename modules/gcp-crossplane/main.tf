
data "google_project" "project" {}

resource "google_project_service" "project_service" {
  for_each = var.gcp_services

  project            = data.google_project.project.project_id
  service            = each.key
  disable_on_destroy = false
}

resource "google_service_account" "service_account" {
  account_id   = var.gcp_service_account_id
  display_name = var.gcp_service_account_name
  project      = data.google_project.project.project_id
}

resource "google_project_iam_binding" "iam_project" {
  for_each = var.gcp_roles

  project = data.google_project.project.project_id
  role    = each.key

  members = [format("serviceAccount:%s", google_service_account.service_account.email)]
}

resource "google_service_account_key" "crossplan_key" {
  service_account_id = google_service_account.service_account.name
}
