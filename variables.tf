locals {
  # Replace with project name created in step 1
  google_project = "anshumantripathi-my-project"
  services = [
    "cloudresourcemanager.googleapis.com",
    "iam.googleapis.com",
  ]
  terraform_former_project_roles = [
    "roles/owner"
  ]
}

