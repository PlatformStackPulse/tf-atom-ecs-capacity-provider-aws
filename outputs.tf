output "arn" {
  description = "ARN of the capacity provider"
  value       = try(aws_ecs_capacity_provider.this[0].arn, null)
}

output "name" {
  description = "Name of the capacity provider"
  value       = try(aws_ecs_capacity_provider.this[0].name, null)
}
