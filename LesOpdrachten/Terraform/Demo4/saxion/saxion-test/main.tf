locals {
  # Dit betreffen lokale variabelen die slechts binnen deze code bestaan, tenzij verwerkt in een output
  name     = "${local.customer}-${local.stage}"
  customer = "saxion"
  azs      = ["us-east-1a", "us-east-1b"]
  stage    = "test"
}

#
# Netwerk (VPC setup)
#
module "network" {
  source             = "../../modules/network"
  azs                = local.azs
  name               = local.name
  enable_nat_gateway = false
}

data "aws_ami" "amazon_ami" {
  # A data resource to retrieve all relevant information using the name of a AMI (image for an EC2 instance)
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["al2023-ami*"]
  }
}

resource "aws_instance" "docker_instance" {
  # A resource to create an EC2 instance
  count         = 1
  ami           = data.aws_ami.amazon_ami.id
  subnet_id     = # kies hier eerste subnet gemaakt door module network
  instance_type = "t4g.medium"

  monitoring    = true
  ebs_optimized = true

  key_name = "vockey"

  associate_public_ip_address = true

  root_block_device {
    volume_size = "60"
    volume_type = "gp2"
  }

  tags = {
    Name = "${local.name}-${count.index}"
  }
}