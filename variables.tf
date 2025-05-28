variable "ami_id" {
  description = "AMI ID for the EC2 instances"
  type        = string
  default     = "ami-04dd23e62ed049936"
}

variable "instance_type" {
  description = "Instance type for the EC2 instances"
  type        = string
  default     = "t2.micro"
}

variable "min_size" {
  description = "Minimum number of instances in the Auto Scaling Group"
  type        = number
  default     = 3
}

variable "max_size" {
  description = "Maximum number of instances in the Auto Scaling Group"
  type        = number
  default     = 2
}

variable "desired_capacity" {
  description = "Desired number of instances in the Auto Scaling Group"
  type        = number
  default     = 2
}

variable "cpu_utilization_threshold" {
  description = "CPU utilization threshold for scaling actions"
  type        = number
  default     = 70
}

variable "subnet_ids" {
  description = "List of subnet IDs for the Auto Scaling Group"
  type        = list(string)
  # Default is a single subnet; replace with your actual subnet IDs
  default = ["subnet-0afa5b5a8a4882285"]
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate with the EC2 instances"
  type        = list(string)
  # Default value is a placeholder; replace with your actual security group IDs
  default = ["sg-06ddb5489f4a62d8f"]
}

