variable "instance_security_group_name" {
  description = "The name of the security group for the EC2 Instances"
  type        = string
  default     = "terraform-example-instance"
}

variable "alb_security_group_name" {
  description = "The name of the security group for the ALB"
  type        = string
  default     = "terraform-example-alb"
}

variable "db_remote_state_bucket" {
  type          = string
  description   = "The name of the S3 bucket for the database's remote state"
}

variable "db_remote_state_key" {
  type          = string
  description   = "The path for the database's remote state in S3"
}

variable "server_text" {
  description = "Text the web server should return"
  default     = "Hello, world"
  type        = string
}

variable "environment" {
  description = "Name of the environment we're deploying to"
  type        = string
}