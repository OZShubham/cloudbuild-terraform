provider "google" {
  version = "3.48.0"
  project = "terraform1-372411"
  region  = "us-central1"
}

resource "google_sql_database_instance" "postgres_instance" {
  name          = "postgres-instance"
  database_version = "POSTGRES_12"
  tier          = "db-f1-micro"
  region        = "us-central1"
}

resource "google_sql_database" "postgres_db" {
  name      = "postgres-db"
  instance  = google_sql_database_instance.postgres_instance.name
}
