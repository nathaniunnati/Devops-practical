variable "project_name" {
  type = string
}

variable "image_uri" {
  type = string
}

variable "task_cpu" {
  type = number
}

variable "task_memory" {
  type = number
}

variable "desired_count" {
  type = number
}

variable "private_subnets" {
  type = list(string)
}

variable "ecs_exec_role_arn" {
  type = string
}

variable "ecs_task_role_arn" {
  type = string
}
variable "cluster_id" {
  type        = string
  description = "ECS cluster ID"
}

variable "target_group_arn" {
  type        = string
  description = "ALB target group ARN"
}

variable "ecs_sg_id" {
  type        = string
  description = "Security Group ID for ECS"
}

variable "lb_listener_arn" {
  type        = string
  description = "Load balancer listener ARN"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
}


