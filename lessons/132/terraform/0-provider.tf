locals {
  project_id = "stone-net-401613" # TODO: replace project id
}

provider "google" {
  project = local.project_id
  region  = "us-central1-c"
}

# Only needed to enable managed prometheus
provider "google-beta" {
  project = local.project_id
  region  = "us-central1-c"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.42"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.42"
    }
  }

  required_version = "> 1.0.0"
}
