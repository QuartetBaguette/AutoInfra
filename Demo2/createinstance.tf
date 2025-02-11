// create VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

// create subnet
resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-example"
  }
}

// create instance
resource "aws_instance" "foo" {
  // ami id is hier exact gegeven (region afhankelijk!!)
  ami           = "ami-0005e0cfe09cc9050" # us-east-1
  instance_type = "t2.micro"
  associate_public_ip_address = "true"

  credit_specification {
    cpu_credits = "unlimited"
  }
  tags = {
    Name = "tf-instance"
  }
}