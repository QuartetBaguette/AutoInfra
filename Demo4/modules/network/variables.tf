variable "name" {
  description = "name of the VPC that will be created"
  type        = string
}

variable "cidr" {
  description = "the CIDR block that should be used for the vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "the availability zones that should be used for these subnets"
  type        = list(string)
}

variable "private_subnets" {
  description = "a list of CIDRs that will be used for the private subnets"
  type        = list(string)
  default     = # vul hier de default lijst van private subnets in
}

variable "public_subnets" {
  description = "a list of CIDRs that will be used for the public subnets"
  type        = list(string)
  default     = # vul hier de default lijst van public subnets in
}

variable "enable_nat_gateway" {
  description = "whether or not to create nat-gateways for the private subnets to allow internet access"
  type        = bool
  default     = true
}