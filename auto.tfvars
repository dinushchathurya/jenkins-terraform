# your aws access key 
variable access_key {
    description = "The access key for the AWS account"
    type        = "string"
    default = "default"
}

# your aws secret key
variable secret_key {
    description = "The secret key for the AWS account"
    type        = "string"
    default = "default"
}

# your aws region
variable aws_region {
    description = "The AWS region"
    type        = "string"
    default = "ap-southeast-1"
}

