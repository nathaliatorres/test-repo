variable "region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr_block" {
  description = "The IPv4 CIDR block for the VPC"
  type        = string
}

variable "vpc_instance_tenancy" {
  description = "Tenancy option for instances launched into the VPC"
  type        = string
}

variable "vpc_tags" {
  description = "Tags to assign to the VPC"
  type        = map(string)
}

variable "lb_name" {
  description = "Name of the load balancer"
  type        = string
}

variable "lb_internal" {
  description = "Whether the load balancer is internal"
  type        = bool
}

variable "lb_load_balancer_type" {
  description = "Type of load balancer"
  type        = string
}

variable "lb_subnets" {
  description = "List of subnet IDs to attach to the load balancer"
  type        = list(string)
}

variable "lb_ip_address_type" {
  description = "Type of IP addresses used by the subnets"
  type        = string
}

variable "lb_enable_cross_zone_load_balancing" {
  description = "Whether cross-zone load balancing is enabled"
  type        = bool
}

variable "lb_enable_deletion_protection" {
  description = "Whether deletion protection is enabled"
  type        = bool
}

variable "lb_dns_record_client_routing_policy" {
  description = "How traffic is distributed among load balancer Availability Zones"
  type        = string
}

variable "lb_access_logs" {
  description = "Access logs configuration block"
  type = object({
    bucket  = string
    enabled = bool
    prefix  = string
  })
}

variable "lb_tags" {
  description = "Tags to assign to the load balancer"
  type        = map(string)
}

variable "tg_name" {
  description = "Name of the target group"
  type        = string
}

variable "tg_port" {
  description = "Port on which targets receive traffic"
  type        = number
}

variable "tg_protocol" {
  description = "Protocol to use for routing traffic to the targets"
  type        = string
}

variable "tg_target_type" {
  description = "Type of target to register with the target group"
  type        = string
}

variable "tg_ip_address_type" {
  description = "Type of IP addresses used by the target group"
  type        = string
}

variable "tg_deregistration_delay" {
  description = "Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target"
  type        = number
}

variable "tg_health_check" {
  description = "Health check configuration block"
  type = object({
    enabled             = bool
    interval            = number
    path                = string
    port                = string
    protocol            = string
    timeout             = number
    healthy_threshold   = number
    unhealthy_threshold = number
  })
}

variable "tg_tags" {
  description = "Tags to assign to the target group"
  type        = map(string)
}

variable "instances" {
  description = "Map of EC2 instances to create"
  type = map(object({
    ami                    = string
    instance_type          = string
    subnet_id              = string
    vpc_security_group_ids = list(string)
    key_name               = string
    source_dest_check      = bool
    tenancy                = string
    ebs_optimized          = bool
    iam_instance_profile   = string
    monitoring             = bool
    user_data              = optional(string)
    launch_template = optional(object({
      id      = string
      version = string
    }))
    metadata_options = object({
      http_endpoint               = string
      http_protocol_ipv6          = string
      http_put_response_hop_limit = number
      http_tokens                 = string
      instance_metadata_tags      = string
    })
    tags = map(string)
  }))
}