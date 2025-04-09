variable "vpc_name" {
  type = string
  default = "MyVPC"
  description = "VPC name"
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
  description = "Set the CIDR of the VPC"
}

variable "vpc_dns_support" {
  type = bool
  default = true
  description = "Set DNS capabilities of vpc"
}

variable "vpc_dns_hostnames" {
  type = bool
  default = true
}

variable "subnet_cidr" {
  type = string
  default = "10.0.1.0/24"
  description = "Set CIDR of subnet in VPC"
}

variable "subnet_map_public_ip_on_launch" {
  type = bool
  default = true
  description = "Set if subnet should map public ip adresses"
}

variable "subnet_name" {
  type = string
  description = "Set Subnet name"
  default = "MySubnet"
}

variable "gw_name" {
  type        = string
  default = "MyGateway"
  description = "Internet gateway name"
}

variable "routetable_cidr" {
  type = string
  default = "0.0.0.0/0"
  description = "Routetable cidr block"
}

variable "routetable_name" {
  type = string
  default = "MyRoutetable"
  description = "Set name of routetable"
}