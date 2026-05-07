variable "name" {
  description = "Name of the load balancer"
  type        = string
}

variable "internal" {
  description = "Whether the load balancer is internal"
  type        = bool
}

variable "load_balancer_type" {
  description = "Type of load balancer (application, gateway, or network)"
  type        = string
}

variable "subnets" {
  description = "List of subnet IDs to attach to the load balancer"
  type        = list(string)
}

variable "ip_address_type" {
  description = "Type of IP addresses used by the subnets"
  type        = string
}

variable "enable_cross_zone_load_balancing" {
  description = "Whether cross-zone load balancing is enabled"
  type        = bool
}

variable "enable_deletion_protection" {
  description = "Whether deletion protection is enabled"
  type        = bool
}

variable "dns_record_client_routing_policy" {
  description = "How traffic is distributed among load balancer Availability Zones"
  type        = string
}

variable "access_logs" {
  description = "Access logs configuration block"
  type = object({
    bucket  = string
    enabled = bool
    prefix  = string
  })
}

variable "tags" {
  description = "Tags to assign to the load balancer"
  type        = map(string)
}