resource "aws_security_group" "ssh_http_https_outbound_allow" {
  name        = "ssh_http_https_outbound_allow"
  description = "Allow SSH HTTP and HTTPS"
  vpc_id      = aws_vpc.KlantA.id

  tags = {
    Name = "ssh_http_https_allow"
  }
}

resource "aws_vpc_security_group_ingress_rule" "Allow_HTTPS" {
  security_group_id = aws_security_group.ssh_http_https_outbound_allow.id
  cidr_ipv4         = var.https_allow_cidr
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}

resource "aws_vpc_security_group_ingress_rule" "Allow_HTTP" {
  security_group_id = aws_security_group.ssh_http_https_outbound_allow.id
  cidr_ipv4         = var.http_allow_cidr
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_ingress_rule" "Allow_SSH" {
  security_group_id = aws_security_group.ssh_http_https_outbound_allow.id
  cidr_ipv4         = var.ssh_allow_cidr
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_egress_rule" "Allow_Outbound" {
  security_group_id = aws_security_group.ssh_http_https_outbound_allow.id
  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = -1
}