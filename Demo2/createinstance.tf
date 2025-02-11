// create VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
  }
}

// create subnet
resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = var.subnet_cidr_block
  availability_zone = var.availability_zone

  tags = {
    Name = var.subnet_name
  }
}

// create instance
resource "aws_instance" "foo" {
  // ami id is hier exact gegeven (region afhankelijk!!)
  ami                         = var.instance_ami # us-east-1
  instance_type               = var.instance_type
  associate_public_ip_address = var.associate_public_ip_address

  credit_specification {
    cpu_credits = var.credit_specification
  }
  tags = {
    Name = var.instance_name
  }
}
