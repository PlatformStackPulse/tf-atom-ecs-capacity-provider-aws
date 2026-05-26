# tf-atom-ecs-capacity-provider-aws

[![CI](https://github.com/PlatformStackPulse/tf-atom-ecs-capacity-provider-aws/actions/workflows/ci.yml/badge.svg)](https://github.com/PlatformStackPulse/tf-atom-ecs-capacity-provider-aws/actions/workflows/ci.yml)
![Terraform](https://img.shields.io/badge/terraform-%3E%3D1.6.0-blueviolet)

## Purpose

ECS capacity provider linking an Auto Scaling Group to ECS for EC2 launch type.

## Module Documentation

<!-- BEGIN_TF_DOCS -->
### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.6.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0.0 |

### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0.0 |

### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_this"></a> [this](#module\_this) | git::https://github.com/PlatformStackPulse/tf-label.git | v1.0.0 |

### Resources

| Name | Type |
|------|------|
| [aws_ecs_capacity_provider.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_capacity_provider) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_scaling_group_arn"></a> [auto\_scaling\_group\_arn](#input\_auto\_scaling\_group\_arn) | ARN of the Auto Scaling Group | `string` | n/a | yes |
| <a name="input_instance_warmup_period"></a> [instance\_warmup\_period](#input\_instance\_warmup\_period) | Instance warmup period in seconds | `number` | `300` | no |
| <a name="input_managed_scaling_enabled"></a> [managed\_scaling\_enabled](#input\_managed\_scaling\_enabled) | Enable managed scaling | `bool` | `true` | no |
| <a name="input_managed_termination_protection"></a> [managed\_termination\_protection](#input\_managed\_termination\_protection) | Managed termination protection (ENABLED, DISABLED) | `string` | `"DISABLED"` | no |
| <a name="input_maximum_scaling_step_size"></a> [maximum\_scaling\_step\_size](#input\_maximum\_scaling\_step\_size) | Maximum scaling step size | `number` | `10` | no |
| <a name="input_minimum_scaling_step_size"></a> [minimum\_scaling\_step\_size](#input\_minimum\_scaling\_step\_size) | Minimum scaling step size | `number` | `1` | no |
| <a name="input_target_capacity"></a> [target\_capacity](#input\_target\_capacity) | Target capacity percentage | `number` | `80` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the capacity provider |
| <a name="output_name"></a> [name](#output\_name) | Name of the capacity provider |
<!-- END_TF_DOCS -->
