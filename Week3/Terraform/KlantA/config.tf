provider "aws" {
  profile = "default"
  region  = "us-east-1"
  access_key = "ASIAXRXDESL4EXRXGCLV"
  secret_key = "XxrAnIdGIuK34NItWWlzszFJLiF5TqWiMoKpSDHB"
  token = "IQoJb3JpZ2luX2VjEKH//////////wEaCXVzLXdlc3QtMiJHMEUCIHVu/2Ja4+xuAVnNHggV9zFGFql1fVxtwoFk1D1zLLMwAiEA+/AdtD1ScAtGjXqD1KI1CAt4CLeAJ4DBZsPiOCRI18UqsgIIGhABGgw1MTkwOTM2NTQyNjQiDEYmm7Hq0PQl/GS1JCqPAjESc/ytfDtVSd3tEbppihEYkAhcyYCxijBVKKuguo4leRcLpOw536ut5ljKr0dr15ojrejdKQY/MBZCpftgkbWvMkso6ZNvOU7u2hRjenlvHN7zhND4cFBwbyqW45lgB1gesU9MjaStPXsXvIlu/NZ4Glexo7NA/zGTpoMMDqke4l2vjHey8HhyylL81gDVQQ1Ih8Cq3fh/uDlCtTbBOfCZP3JDJIbW0C3X3qsqlmwtrimwYMGbiT45oeK8ouly0UxNRHOYoRze/lZzqc3BHm7hmGTv7gbVt90NhvkH5fbw9ENnT/U4LlVQPgcX26y1nsJR7GiERwJUN3zGNAuplSJIRYEtQ+149A5pq/7dKcAw9KXAvwY6nQETZCP8e7F9frW2lQHtYTOG9rU98Smt+Yu/fvxm+VGVmyIGdOQw9mI9o6MoqofnwKWBXxs6bdmR2ZujBU77wULzvEnZOOEeDJj2RHgjjWNVPnNDBozljT6h+S6tR/FtQMtZciLaBxu+Sm1veA++QFh6fyLs3VOAuVIvJj9DkuM5WWE+l6JJNQPdxgK8rDXLETbG2cuppGCHRrdRhnPy"
}

terraform {
  backend "local" {}
}

resource "aws_key_pair" "ruben" {
  key_name   = "ruben"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINtxj7RABxXuSkz4bU18e93qExZG0keCgAUOuJQ7R5Ym pax@DESKTOP-5U7MA2B"
}