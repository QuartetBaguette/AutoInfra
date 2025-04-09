variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "vpc_name" {
    type = string
    default = "MyVPC"
}

variable "igw_name" {
    type = string
    default = "MyInternetGateway"
    description = "InternetGateway name"
}