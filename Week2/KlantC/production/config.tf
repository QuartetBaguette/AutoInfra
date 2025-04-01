provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

terraform {
  backend "local" {}
}

resource "aws_key_pair" "ruben" {
  key_name   = "rubenprodklantc"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEzRPRAuqIrkVjbVtcfHHYDA8swsmPpwo3SpeC3yCTSA ruben@PC-RUBEN"
}