variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Prefix used for naming AWS resources"
  type        = string
  default     = "secure-saas-platform"
}

variable "db_password" {
  description = "Password for the backend database"
  type        = string
  sensitive   = true
}

variable "alert_email" {
  description = "Email address to receive security alerts"
  type        = string
}