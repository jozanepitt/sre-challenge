provider "aws" {
  region = var.aws_region
}

# VPC
resource "aws_vpc" "sre_challenge_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "sre-challenge-vpc"
    Environment = "dev"
  }
}

# Public Subnet
resource "aws_subnet" "sre_challenge_subnet" {
  vpc_id            = aws_vpc.sre_challenge_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "sre-challenge-subnet"
    Environment = "dev"
  }
}

# EKS Cluster
resource "aws_eks_cluster" "sre_challenge_eks_cluster" {
  name     = "sre-challenge-eks-cluster"
  role_arn = aws_iam_role.sre_challenge_eks_role.arn

  vpc_config {
    subnet_ids = [aws_subnet.sre_challenge_subnet.id]
  }

  tags = {
    Name = "sre-challenge-eks-cluster"
    Environment = "dev"
  }
}

# IAM Role for EKS
resource "aws_iam_role" "sre_challenge_eks_role" {
  name = "sre-challenge-eks-role"

  assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [{
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }]
  })

  tags = {
    Name = "sre-challenge-eks-role"
    Environment = "dev"
  }
}
