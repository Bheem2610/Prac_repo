terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "new_user" {
  name = "test_user1"

  tags = {
    ManagedBy = "Terraform"
  }
}