terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.48.0"
    }
  }
}

provider "google" {
  

  project = var.project
  region  = var.region
}



resource "google_sql_database_instance" "main" {
  name             = "main-instance"
  database_version = "POSTGRES_14"
  region           = "us-central1"

  settings {
    tier = "db-f1-micro"
  }
}






