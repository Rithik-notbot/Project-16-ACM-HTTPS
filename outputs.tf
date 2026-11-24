output "load_balancer_dns_name" {
  description = "DNS name of the HTTPS Application Load Balancer"
  value       = aws_lb.https.dns_name
}

output "https_url" {
  description = "HTTPS endpoint of the application"
  value       = "https://${aws_lb.https.dns_name}"
}

output "target_group_arn" {
  description = "ARN of the application target group"
  value       = aws_lb_target_group.app.arn
}

output "https_listener_arn" {
  description = "ARN of the HTTPS listener"
  value       = aws_lb_listener.https.arn
}