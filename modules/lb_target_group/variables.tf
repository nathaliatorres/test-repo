variable "name" {
  description = "Name of the target group"
  type        = string
}

variable "port" {
  description = "Port on which targets receive traffic"
  type        = number
}

variable "protocol" {
  description = "Protocol to use for routing traffic to the targets"
  type        = string
}

variable "target_type" {
  description = "Type of target to register with the target group"
  type        = string
}

variable "ip_address_type" {
  description = "Type of IP addresses used by the target group"
  type        = string
}

variable "vpc_id" {
  description = "Identifier of the VPC in which to create the target group"
  type        = string
}

variable "deregistration_delay" {
  description = "Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target"
  type        = number
  default     = 300
}

variable "health_check" {
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

variable "tags" {
  description = "Tags to assign to the target group"
  type        = map(string)
}