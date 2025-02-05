resource "aws_vpc" "KlantA" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  tags = {
    Name = "KlantA"
  }
}

resource "aws_subnet" "PublicSubnet1" {
  vpc_id                  = aws_vpc.KlantA.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "KlantA"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.KlantA.id

  tags = {
    Name = "Main"
  }
}

resource "aws_route_table" "RouteTableKlantA" {
  vpc_id = aws_vpc.KlantA.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "RouteTableKlantA"
  }
}

resource "aws_route_table_association" "prod-crta-public-subnet-1" {
  subnet_id      = aws_subnet.PublicSubnet1.id
  route_table_id = aws_route_table.RouteTableKlantA.id
}

resource "aws_security_group" "ssh_http_https_allow" {
  name        = "ssh_http_https_allow"
  description = "Allow SSH HTTP and HTTPS"
  vpc_id      = aws_vpc.KlantA.id

  tags = {
    Name = "ssh_http_https_allow"
  }
}

resource "aws_vpc_security_group_ingress_rule" "Allow_HTTPS" {
  security_group_id = aws_security_group.ssh_http_https_allow.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_ingress_rule" "Allow_HTTP" {
  security_group_id = aws_security_group.ssh_http_https_allow.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "Allow_SSH" {
  security_group_id = aws_security_group.ssh_http_https_allow.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t2.micro"
  key_name               = "ruben"
  vpc_security_group_ids = ["${aws_security_group.ssh_http_https_allow.id}"]
  subnet_id              = aws_subnet.PublicSubnet1.id

  tags = {
    Name = "Web1"
  }
}
