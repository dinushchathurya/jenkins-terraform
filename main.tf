# terraform {
#     required_providers {
#         aws = {
#             source  = "hashicorp/aws"
#             version = "3.74.0"
#         } 
#     }
# }

provider "aws" {
	access_key = var.access_key 
	secret_key = var.secret_key 
	region     = var.aws_region
}

resource "aws_vpc" "vpc" {
    cidr_block           = "10.0.0.0/16"
    enable_dns_support   = "true"
    enable_dns_hostnames = "true"
    enable_classiclink   = "false"
    instance_tenancy     = "default"

    tags = {
        Name = "vpc"
    }
}

