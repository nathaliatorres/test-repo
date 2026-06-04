resource "google_kms_crypto_key_version" "this" {
  crypto_key = var.crypto_key
  state      = var.state
}