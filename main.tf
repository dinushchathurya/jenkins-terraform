terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "3.74.0"
        } 
    }
}

resource "aws_instance" "terraform" {
    ami           = "ami-04d9e855d716f9c99"
    instance_type = "t2.micro"
}

