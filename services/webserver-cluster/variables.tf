variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default     = "terraform-asg-example"
}

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

variable "cluster_name" {
  type          = string
  description   = "The name to use for all the cluster resources"
}

variable "db_remote_state_bucket" {
  type          = string
  description   = "The name of the S3 bucket for the database's remote state"
}

variable "db_remote_state_key" {
  type          = string
  description   = "The path for the database's remote state in S3"
}

variable "instance_type" {
  type          = string
  description   = "The type of EC2 instances to run (e.g. t3.micro)"
}

variable "min_size" {
  type          = number
  description   = "The minimum number of instances in the ASG"
}

variable "max_size" {
  type          = number
  description   = "The maximum number of instances in the ASG"
}