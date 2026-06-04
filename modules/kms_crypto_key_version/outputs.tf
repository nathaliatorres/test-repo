output "id" {
  description = "The identifier of the CryptoKeyVersion"
  value       = google_kms_crypto_key_version.this.id
}

output "name" {
  description = "The resource name of the CryptoKeyVersion"
  value       = google_kms_crypto_key_version.this.name
}