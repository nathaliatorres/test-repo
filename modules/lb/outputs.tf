output "lb_arn" {
  description = "ARN of the load balancer"
  value       = aws_lb.this.arn
}

output "lb_id" {
  description = "ID of the load balancer"
  value       = aws_lb.this.id
}