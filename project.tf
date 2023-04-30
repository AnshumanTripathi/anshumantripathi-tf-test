resource "google_project" "my_project" {
  name       = local.google_project
  project_id = local.google_project
}
# Create service account
resource "google_service_account" "terraform_former" {
  account_id   = "terraform-former"
  project      = local.google_project
  display_name = "terraform-former"
  description  = "Service account for terraform"
}
resource "google_project_service" "my_project_services" {
  for_each = toset(local.services)
  project  = local.google_project
  service  = each.key
}
resource "google_project_iam_binding" "terraform_former_project_iam_binding" {
    for_each = toset(local.terraform_former_project_roles)
    project = local.google_project
    role = each.key
    members = [
        "serviceAccount:${google_service_account.terraform_former.email}", 
        "user:anshuman09tripathi@gmail.com"
        ]
}
