provider "aws" {
  profile    = "default"
  region     = "us-east-1"
  access_key = "ASIAXRXDESL4F2YFHHNJ"
  secret_key = "M/fx31H9X2/QTPJiiyID+3cS/Gd7iASSr4AxXZ9N"
  token      = "IQoJb3JpZ2luX2VjEBEaCXVzLXdlc3QtMiJGMEQCIEHHv6nBGLJFPrPAO9TM7oI/D8CQaBKxRNa+QK6sOTCgAiBovyhneyMxmna5KKOf/ZnnAnFhpn4TDHcvfH+SQTkD9Sq7AgiK//////////8BEAEaDDUxOTA5MzY1NDI2NCIM0ZuCjG6iOPDPhkTrKo8CU6KqVfJrxFpF8FdGgT8ruw7KbEF0XUboUGHFlUb0NWjl7vJJOcbQjl4zSEg4ZYR7uRJxrdQ7Urxw9/TePPkNoe3pq0Y+zgdr7Bs+aWKnj//a09fAlLI8BAgZyZ5XDLkCsjUbmq4fi0J5P64qPhrFIwyFdWFk7W4xbCw4L1diQs/SIzHNJwdyUK5gjp+6TZVBtkflObbDeX0QtdTwDiLv2+1k5GoTYJrz0i7CXJ/WACz8C5Aa7PEBuYI/Kmjy7dpkBNGBfmH+VSyYjredVH8NfKQd9PCRZzDuNo+6iA1x93cHBlRgppfpkyX07AVyLcIvJdMCkSZhrTWKjPF2TUzmUans/SFC/u0oHoJoEDSNFTDj4di/BjqeAfEGyMZnLyRkqReD+OlWvbh//la4Q1ED6ojS3UL/ktzyFnKcPdj0rdwdGVqFLiDG8biwNZHagqYmiCbVpHqeT6B8JKTLW3wmwF++jh+ee7N4qdM2LYwSMTjbN6rKI8NwXY9gWIRyZkDFesesuJwD2qJ0X+b1hcskrBcNKxKsyLe9MdEnN1s/V8oLaaUrhfuSyzu6B9xgAASczyIBDf4e"
}

terraform {
  backend "local" {}
}

resource "aws_key_pair" "ruben" {
  key_name   = "ruben"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINtxj7RABxXuSkz4bU18e93qExZG0keCgAUOuJQ7R5Ym pax@DESKTOP-5U7MA2B"
}
