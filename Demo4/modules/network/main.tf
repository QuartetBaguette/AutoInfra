module "vpc" {
  # A public Terraform module provided by AWS to create a VPC (a network consisting of two public and two private subnets)
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = var.cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = var.enable_nat_gateway

  tags = {
    Terraform = "true"
    Customer  = var.name
  }
}

