variable "name" {
  description = "Name of the firewall rule"
  type        = string
}

variable "network" {
  description = "Self-link of the network to attach this firewall rule to"
  type        = string
}

variable "description" {
  description = "Description of the firewall rule"
  type        = string
  default     = ""
}

variable "direction" {
  description = "Direction of traffic (INGRESS or EGRESS)"
  type        = string
}

variable "disabled" {
  description = "Whether the firewall rule is disabled"
  type        = bool
}

variable "priority" {
  description = "Priority for this firewall rule"
  type        = number
}

variable "source_ranges" {
  description = "Source IP CIDR ranges for the firewall rule"
  type        = list(string)
}

variable "target_tags" {
  description = "Target instance tags for the firewall rule"
  type        = list(string)
}

variable "allow_protocol" {
  description = "IP protocol for the allow rule"
  type        = string
}

variable "allow_ports" {
  description = "Ports for the allow rule"
  type        = list(string)
}