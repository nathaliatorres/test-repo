variable "key_name" {
  description = "Name of the key pair"
  type        = string
}

variable "public_key" {
  description = "Public key material for the key pair"
  type        = string
  sensitive   = true
}