variable "auto_scaling_group_arn" {
  description = "ARN of the Auto Scaling Group"
  type        = string
  validation {
    condition     = length(var.auto_scaling_group_arn) > 0
    error_message = "auto_scaling_group_arn must not be empty."
  }
}

variable "managed_termination_protection" {
  description = "Managed termination protection (ENABLED, DISABLED)"
  type        = string
  default     = "DISABLED"
}

variable "managed_scaling_enabled" {
  description = "Enable managed scaling"
  type        = bool
  default     = true
}

variable "target_capacity" {
  description = "Target capacity percentage"
  type        = number
  default     = 80
}

variable "minimum_scaling_step_size" {
  description = "Minimum scaling step size"
  type        = number
  default     = 1
}

variable "maximum_scaling_step_size" {
  description = "Maximum scaling step size"
  type        = number
  default     = 10
}

variable "instance_warmup_period" {
  description = "Instance warmup period in seconds"
  type        = number
  default     = 300
}
