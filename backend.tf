terraform {
  backend "remote" {
    organization = "anshumantripathi"

    workspaces {
      name = "anshumantripathi-tf-test"
    }
  }
  required_version = ">= 1.3.9"
}
