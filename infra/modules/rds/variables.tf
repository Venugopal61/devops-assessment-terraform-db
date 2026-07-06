# infra/modules/rds/variables.tf

variable "instance_class" {
  description = "The instance type for the RDS database"
  type        = string
}

variable "allocated_storage" {
  description = "The allocated storage in GB"
  type        = number
  default     = 20
}

variable "deletion_protection" {
  description = "Enable deletion protection"
  type        = bool
  default     = false
}