provider "aws" {
  profile    = "default"
  region     = "us-east-1"
  access_key = "ASIAXRXDESL4DFSBDRUD"
  secret_key = "PQJRYzE9Y46PmyJM+sialdHsDpc9VN+Ga3Xbuxrt"
  token      = "IQoJb3JpZ2luX2VjEOP//////////wEaCXVzLXdlc3QtMiJGMEQCIBxD94d9p9bxh7+YtXvMrqAZ3LE3d/WkKZq/ICa9SzQhAiAyxjuvkJ7XQ9ERCc8Mmry9OAgGPd1lOD4gG0O4Rv2zSiqyAghcEAEaDDUxOTA5MzY1NDI2NCIMjn+4c3tn0hrwqX2lKo8CoIapz1sMezvn7IBKlSWaZdlEAMTgHQMMQ7E5zo9HpV60HTLZqxG0Zngg0mj+F5hAK4k90jFmNKBt4jhgbgaCRZUdn3cdweBMrBVWI/E8h0zb+kCjdfDztBKwOnK4SETOTLpUygVTtIID5/tHYlQ3wJ3ykWu2Z4f4M6jsGi2XXN0O5hSQkaXikzjDeszhpINi2wimJSQPlM6+02ROLoDWAKPovygc8tUGRn43XQV+HX6NC2+XYrTT/RCxVsKFSSXGZC6BnTFDuBJ6uzE5NhnOOcPiaRcOmXpnXiH+uCCfutRa6cjVm/mHyqYlNzQ3rNh/9U+Xt07pTPZu/qAkc0bR5amV4SnOFMIyqr2O5kDncjCA086/BjqeAehDIL1Obt4QqUH009Qrgah2PuZhV3Rf77GKshQc3XcoorrjkC8IGluHK8MRsGkZOp4Vp3+S+7ttu6lPYXWiMDSb1AT94tp7+Iw82lCpYIhOhDbR5VBN913bnbrQ/2bVVXmgQrsy3txsg7kcO9uIJrAKMMxcf70/EsD4PQV/LpZmyX5xMAoiRgB+IWXnQUAnK2d3s0S5qEBLGxXK8rNw"
}

terraform {
  backend "local" {}
}

resource "aws_key_pair" "ruben" {
  key_name   = "ruben"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINtxj7RABxXuSkz4bU18e93qExZG0keCgAUOuJQ7R5Ym pax@DESKTOP-5U7MA2B"
}
