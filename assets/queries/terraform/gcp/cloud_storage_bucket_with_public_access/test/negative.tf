resource "google_storage_bucket_iam_member" "member" {
  bucket = google_storage_bucket.default.name
  role = "roles/storage.admin"
  member = "user:jane@example.com"
}


resource "google_storage_bucket_iam_member" "member2" {
  bucket = google_storage_bucket.default.name
  role = "roles/storage.admin"
  members = ["user:john@example.com","user:john@example.com"]
}