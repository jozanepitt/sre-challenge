variable "aws_region" {
  description = "AWS region to deploy the EKS cluster"
  default     = "us-east-1"
}

variable "desired_node_size" {
  description = "Desired number of worker nodes"
  default     = 2
}

variable "max_node_size" {
  description = "Maximum number of worker nodes"
  default     = 3
}

variable "min_node_size" {
  description = "Minimum number of worker nodes"
  default     = 1
}
