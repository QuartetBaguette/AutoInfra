resource "aws_vpc" "VPC" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = var.vpc_dns_support
  enable_dns_hostnames = var.vpc_dns_hostnames
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "Subnet" {
  vpc_id                  = aws_vpc.VPC.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = var.subnet_map_public_ip_on_launch

  tags = {
    Name = var.subnet_name
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.VPC.id

  tags = {
    Name = var.gw_name
  }
}

resource "aws_route_table" "RouteTable" {
  vpc_id = aws_vpc.VPC.id

  route {
    cidr_block = var.routetable_cidr
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = var.routetable_name
  }
}

resource "aws_route_table_association" "RouteTableAssociation" {
  subnet_id      = aws_subnet.Subnet.id
  route_table_id = aws_route_table.RouteTable.id
}
