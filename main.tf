terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.16.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_vpc" "jenkins" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "jenkins"
  }
}
