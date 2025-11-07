# -------------------------
# Outputs
# -------------------------

# Default VPC
output "vpc_id" {
  description = "ID of the default VPC"
  value       = data.aws_vpc.default.id
}

# One of the default subnets
output "public_subnet_id" {
  description = "ID of the first default subnet"
  value       = element(data.aws_subnets.default.ids, 0)
}

# App security group (created or existing)
output "security_group_id" {
  description = "Security group ID used for the EC2 instance"
  value = try(
    aws_security_group.app_sg[0].id,
    data.aws_security_group.existing_sg.id
  )
}

# ECR repository URL (created or existing)
output "ecr_repository_uri" {
  description = "ECR repository URI (created or reused)"
  value = try(
    aws_ecr_repository.app_repo[0].repository_url,
    data.aws_ecr_repository.existing.repository_url
  )
}

# EC2 public IP address (passed in via variable)
output "ec2_public_ip" {
  description = "Public IP of the existing EC2 instance"
  value       = var.ec2_public_ip
}

# Private key output (disabled, using existing key pair)
output "private_key_pem" {
  description = "No private key output since an existing key pair is used"
  value       = "Using existing key pair"
  sensitive   = true
}
