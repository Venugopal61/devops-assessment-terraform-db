# infra/envs/prod/variables.tf

variable "region" {
  description = "AWS region for production"
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment"
  default     = "prod"
}