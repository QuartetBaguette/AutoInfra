variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
    description = "Set cidr block for the VPC"
}

variable "vpc_name" {
    type = string
    default = "my_vpc"
    description = "Set name of VPC"
}

variable "subnet_cidr_block" {
    type = string
    default = "10.0.1.0/24"
    description = "Set subnet cidr block"
}

variable "subnet_name" {
    type = string
    default = "my_subnet"
    description = "Set subnet name"
}

variable "availability_zone" {
    type = string
    default = "us-east-1a"
    description = "Availability zone"
}

variable "instance_ami" {
    type = string
    default = "ami-0005e0cfe09cc9050"
    description = "Ami ID"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "Type of instance to use"
}

variable "associate_public_ip_address" {
    type = bool
    default = true
    description = "Associate a public ip address"
}

variable "credit_specification" {
    type = string
    default = "unlimited"
    description = "Set credit limit"
}

variable "instance_name" {
    type = string
    default = "my_instance"
    description = "Name of instance"
}