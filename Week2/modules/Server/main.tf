resource "aws_instance" "web" {
  ami                    = var.instance_ami_id
  instance_type          = var.instance_type
  key_name               = var.instance_key_name
  vpc_security_group_ids = ["${aws_security_group.ssh_http_https_outbound_allow.id}"]
  subnet_id              = aws_subnet.PublicSubnet1.id

  tags = {
    Name = "Web"
  }
}