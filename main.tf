module "kms_crypto_key_version" {
  source     = "./modules/kms_crypto_key_version"
  crypto_key = var.crypto_key
  state      = var.state
}