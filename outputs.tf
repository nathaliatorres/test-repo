output "kms_crypto_key_version_id" {
  description = "The identifier of the KMS CryptoKeyVersion"
  value       = module.kms_crypto_key_version.id
}

output "kms_crypto_key_version_name" {
  description = "The resource name of the KMS CryptoKeyVersion"
  value       = module.kms_crypto_key_version.name
}