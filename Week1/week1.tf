resource "aws_vpc" "KlantA" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "KlantA"
  }
}

resource "aws_subnet" "PublicSubnet1" {
  vpc_id     = aws_vpc.KlantA.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "KlantA"
  }
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
  cidr_ipv4         = aws_subnet.PublicSubnet1.cidr_block
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_ingress_rule" "Allow_HTTP" {
  security_group_id = aws_security_group.ssh_http_https_allow.id
  cidr_ipv4         = aws_subnet.PublicSubnet1.cidr_block
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "Allow_SSH" {
  security_group_id = aws_security_group.ssh_http_https_allow.id
  cidr_ipv4         = aws_subnet.PublicSubnet1.cidr_block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}
