module "vpc" {
  source = "./modules/vpc"

  cidr_block                       = var.vpc_cidr_block
  instance_tenancy                 = var.vpc_instance_tenancy
  assign_generated_ipv6_cidr_block = true
  tags                             = var.vpc_tags
}

module "lb" {
  source = "./modules/lb"

  name                             = var.lb_name
  internal                         = var.lb_internal
  load_balancer_type               = var.lb_load_balancer_type
  subnets                          = var.lb_subnets
  ip_address_type                  = var.lb_ip_address_type
  enable_cross_zone_load_balancing = var.lb_enable_cross_zone_load_balancing
  enable_deletion_protection       = var.lb_enable_deletion_protection
  dns_record_client_routing_policy = var.lb_dns_record_client_routing_policy
  access_logs                      = var.lb_access_logs
  tags                             = var.lb_tags
}

module "lb_target_group" {
  source = "./modules/lb_target_group"

  name                 = var.tg_name
  port                 = var.tg_port
  protocol             = var.tg_protocol
  target_type          = var.tg_target_type
  ip_address_type      = var.tg_ip_address_type
  vpc_id               = module.vpc.vpc_id
  health_check         = var.tg_health_check
  deregistration_delay = var.tg_deregistration_delay
  tags                 = var.tg_tags
}

module "instance" {
  source = "./modules/instance"

  instances = var.instances
}