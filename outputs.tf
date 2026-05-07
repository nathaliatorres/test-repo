output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "lb_arn" {
  description = "ARN of the load balancer"
  value       = module.lb.lb_arn
}

output "target_group_arn" {
  description = "ARN of the target group"
  value       = module.lb_target_group.target_group_arn
}

output "instance_ids" {
  description = "Map of instance keys to instance IDs"
  value       = module.instance.instance_ids
}