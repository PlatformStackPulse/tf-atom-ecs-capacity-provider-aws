resource "aws_ecs_capacity_provider" "this" {
  count = local.enabled ? 1 : 0

  name = module.this.id

  auto_scaling_group_provider {
    auto_scaling_group_arn         = var.auto_scaling_group_arn
    managed_termination_protection = var.managed_termination_protection

    managed_scaling {
      status                    = var.managed_scaling_enabled ? "ENABLED" : "DISABLED"
      target_capacity           = var.target_capacity
      minimum_scaling_step_size = var.minimum_scaling_step_size
      maximum_scaling_step_size = var.maximum_scaling_step_size
      instance_warmup_period    = var.instance_warmup_period
    }
  }

  tags = local.tags
}
