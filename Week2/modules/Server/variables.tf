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
