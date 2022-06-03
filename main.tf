terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "3.74.0"
        } 
    }
}

provider "aws" {
	access_key = var.access_key 
	secret_key = var.secret_key 
	region     = var.aws_region
}

resource "aws_instance" "example" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}

