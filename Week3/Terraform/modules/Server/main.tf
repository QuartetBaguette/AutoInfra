resource "aws_instance" "instance" {
  ami                    = var.instance_ami_id
  instance_type          = var.instance_type
  key_name               = var.instance_key_name
  vpc_security_group_ids = ["${var.security_group_ssh_http_https_outbound}"]
  subnet_id              = var.instance_subnet_id

  tags = {
    Name = var.instance_name
  }
}