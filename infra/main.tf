terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

# Create a instance
resource "aws_instance" "example" {
  ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
  instance_type = terraform.workspace == "prod" ? "t3.large" : "t3.micro"

  tags = {
    Name = var.devInstanceName
  }
}

# Create a VPC
# resource "aws_vpc" "example" {
#   cidr_block = "10.0.0.0/16"
#   tags = {
#     name = "dev-vpc-01"
#   }
# }