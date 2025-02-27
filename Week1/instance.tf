resource "aws_instance" "web" {
  ami                    = "ami-0c614dee691cbbf37"
  instance_type          = "t2.micro"
  key_name               = "vockey"
  vpc_security_group_ids = ["${aws_security_group.ssh_http_https_allow.id}"]
  subnet_id              = aws_subnet.PublicSubnet1.id

  tags = {
    Name = "Web1"
  }
}
