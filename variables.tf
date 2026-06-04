variable "region" {
  type        = string
  description = "The region for the provider"
}

variable "crypto_key" {
  type        = string
  description = "The full resource name of the cryptoKey associated with the CryptoKeyVersion"
}

variable "state" {
  type        = string
  description = "The current state of the CryptoKeyVersion (ENABLED or DISABLED)"
}