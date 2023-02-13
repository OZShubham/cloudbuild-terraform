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

resource "google_sql_database" "database" {
  name     = "my-database"
  instance = google_sql_database_instance.sql-instance.name
}

resource "google_sql_database_instance" "sql-instance" {
  name = "sql-instance1"
  region = var.region
  database_version = "POSTGRES_11"
   

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_user" "users"{
   name = "root"
   password = "root"
   instance = google_sql_database_instance.sql-instance.name
}
 
  


