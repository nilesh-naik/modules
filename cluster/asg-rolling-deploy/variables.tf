variable "cluster_name" {
  type          = string
  description   = "The name to use for all the cluster resources"
}

variable "ami" {
  description = "AMI to run in the cluster"
  default     = "ami-02e2de7f439974656"
  type        = string
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
  type        = number
  description = "The maximum number of instances in the ASG"
}

variable "custom_tags" {
  type        = map(string)
  description = "Custom tags to set on instances in the ASG"
  default     = {}
}

variable "enable_autoscaling" {
  type        = bool
  description = "If set to true, enable auto scaling"
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}

variable "subnet_ids" {
  description = "The subnet IDs to deploy to"
  type        = list(string)
}

variable "target_group_arns" {
  description = "The ARNs of ELB target groups in which to register Instances"
  type        = list(string)
  default     = []
}

variable "health_check_type" {
  description = "The type of health check to perform. Must be one of: EC2, ELB."
  type        = string
  default     = "EC2"
}

variable "user_data" {
 description = "User data script to run in each instance at boot"
 type        = string
 default     = null
}