provider "google" {
  credentials = file("service-account.json")
  project     = "gcp-terraform" # temporary
  region      = "us-central1"
}

resource "google_project" "new_project" {
  name            = "gcp-terraform"
  project_id      = "my-first-project-12345"
  org_id          = ""
  billing_account = "YOUR_BILLING_ACCOUNT_ID"
}
