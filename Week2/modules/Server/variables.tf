variable "instance_ami_id" {
    type = string
    default = "ami-0c614dee691cbbf37"
    description = "AMI ID for the to be created instance"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "Set instance type"
}

variable "instance_key_name" {
    type = string
    default = "ruben"
    description = "Set ssh key for instance"
}

variable "security_group_ssh_http_https_outbound" {
    type = string
    description = "Id's of the security groups"
} 

variable "instance_subnet_id" {
    type = string
    description = "Set subnet for the instance"
}

variable "instance_name" {
    type = string
    description = "Set name of instance"
}