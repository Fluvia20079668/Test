variable "project_name" {
  description = "Prefix for all resource names"
  type        = string
  default     = "my-simple-app"
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-north-1"
}

variable "ecr_repo_name" {
  description = "Name of the ECR repository"
  type        = string
  default     = "my-simple-app"
}

variable "key_pair_name" {
  description = "Name of the EC2 key pair"
  type        = string
  default     = "newinstance"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "ec2_public_ip" {
  description = "Public IP of the existing EC2 instance"
  type        = string
  default     = "16.16.167.13"
}
