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
  default = {}
}