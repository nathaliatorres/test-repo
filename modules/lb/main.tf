resource "aws_lb" "this" {
  name                             = var.name
  internal                         = var.internal
  load_balancer_type               = var.load_balancer_type
  subnets                          = var.subnets
  ip_address_type                  = var.ip_address_type
  enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing
  enable_deletion_protection       = var.enable_deletion_protection
  dns_record_client_routing_policy = var.dns_record_client_routing_policy
  tags                             = var.tags

  access_logs {
    bucket  = var.access_logs.bucket
    enabled = var.access_logs.enabled
    prefix  = var.access_logs.prefix
  }
}