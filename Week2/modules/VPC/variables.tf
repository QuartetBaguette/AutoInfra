variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "vpc_dns_support" {
  type = bool
}

variable "vpc_dns_hostnames" {
  type = bool
}

variable "subnet_cidr" {
  type = string
}

variable "subnet_map_public_ip_on_launch" {
  type = bool
}

variable "subnet_name" {
  type = string
}

variable "gw_name" {
  description = "Internet gateway name"
  type        = string
}

variable "routetable_cidr" {
  type = string
}

variable "routetable_name" {
  type = string
}