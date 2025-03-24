variable "https_allow_cidr" {
  type = string
  default = "0.0.0.0/0"
  description = "Default value is everywhere (0.0.0.0/0)"
}

variable "http_allow_cidr" {
  type = string
  default = "0.0.0.0/0"
  description = "Default value is everywhere (0.0.0.0/0)"
}

variable "ssh_allow_cidr" {
  type = string
  default = "0.0.0.0/0"
  description = "Default value is everywhere (0.0.0.0/0)"
}