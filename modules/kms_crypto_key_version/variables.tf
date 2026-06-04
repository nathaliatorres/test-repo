variable "crypto_key" {
  type        = string
  description = "The full resource name of the cryptoKey associated with this CryptoKeyVersion"
}

variable "state" {
  type        = string
  description = "The current state of the CryptoKeyVersion (ENABLED or DISABLED)"
}