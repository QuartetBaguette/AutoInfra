provider "aws" {
  profile = "default"
  region  = "us-east-1"
  access_key = "ASIAXRXDESL4NYFPLJ4J"
  secret_key = "+qhPOMxo/uRnU5qMQ/yPDLn3+C09/5CfmBOAraPk"
  token = "IQoJb3JpZ2luX2VjEGoaCXVzLXdlc3QtMiJGMEQCIAoH+EbxoEryTOo3dhvsupzptgDAgngTKChOwHbhl0hXAiACoSvvk6z+uFy65dlnvHInYLs+gopOC16Lo6PKztBWOSq7AgjT//////////8BEAEaDDUxOTA5MzY1NDI2NCIMXh49o9Gk5flTqjMnKo8Cpgcf/JhqogLVdDeGYWu3pxPj6UTiKpZVz5b6EXEN4ToJdhmFYoDZZ3epeLi8Klw8PclhOM7wrgJ2tCtr35Yp1Ok5ue76H5Dp0zX1TEv5AodOwKeMx5bTJ1nWZYhAV4jZiR3SI5S/6Jw7Ll657SBitgQ085FVhy9tW1IKL25qh9liq9s4d/fuX4YjAKSJG3Cm5cyjltQOhqeJN300PTMKdlJVqjUl++B1+yIFx0WJuiwWNckke68+YC1WGy8cq9dQa0G9eaEPKCF547nJCV/Xso8/H360OFnOud7E9PTwm6J1dFqU5VnGkPZNcPAc5jtSHkwxXQeoWpMpbEhdunOY3MZ0QWqC7PbRb6nWlj6vCDD4iLS/BjqeAcRjgH1Wq25rqLhSx0pJmV33ukUGnTodvLPVniKwE8axr90o5aBtWwagWqr2zrgEiVgP8/4l25+W0mJK3woB0zjQjtNTBnHtHn6RklhCjN/H44DWLPuevnssqGJxMA4uKsklqiEDTJ7LN6+m0MqlHb9l4H39jwLOHDqbrnnZHU3ZWqMfivOi5v2WHWG2//x/R67NX8bMHhY3hsNC434e"
}

terraform {
  backend "local" {}
}

resource "aws_key_pair" "ruben" {
  key_name   = "ruben"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEzRPRAuqIrkVjbVtcfHHYDA8swsmPpwo3SpeC3yCTSA ruben@PC-RUBEN"
}