module "vpc" {
    source = "../modules/VPC"
  
  vpc_name = var.vpc_name
  vpc_cidr = var.
  vpc_dns_support = var.
  vpc_dns_hostnames = var.
  subnet_cidr = var.
  subnet_map_public_ip_on_launch = var.
  subnet_name = var.
  gw_name = var.
  routetable_cidr = var.
  routetable_name = var.
}