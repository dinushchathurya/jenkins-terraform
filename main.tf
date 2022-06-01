terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "3.74.0"
        } 
    }
}

provider "aws" {
    region  = "${var.aws_region}"
    profile = "${var.aws_profile}"
}

resource "aws_vpc" "main" {
    cidr_block       = "10.0.0.0/16"
    
    tags = {
      Name = "main"
    }
}
