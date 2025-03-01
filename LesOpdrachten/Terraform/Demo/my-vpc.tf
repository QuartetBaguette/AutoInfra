provider "aws" {
    profile = "default"
    region  = "us-east-1"
}
terraform {
    backend "local" {}
}
resource "aws_vpc" "my_VPC" {
    cidr_block = "10.1.0.0/16"
    tags = {
        Name = "my_VPC"
    }
}