provider "aws" {
  profile = "default"
  region  = "us-east-1"
  access_key = "ASIAXRXDESL4O2M4BPCK"
  secret_key = "Z0ae72eZh5l3usipl474RM+lMJsygfJsSvqWNnru"
  token = "IQoJb3JpZ2luX2VjEJn//////////wEaCXVzLXdlc3QtMiJIMEYCIQDcLxbP95R1Lnalp+10lkx8Rq+x2i9r/gmmH69PJAUYOAIhAPcTjetyPl16OiTX2D3n021Vi0wgTd0OrjLjfA6MYLnJKrICCBIQARoMNTE5MDkzNjU0MjY0IgzWDsCD1eJtpqwMEHsqjwLzSDfXLxF2I7ZuRGJV1UaNnYLlO4HiCMBFi25tVkej0m7QN9ZnKINKzJkZDouc6Uqpl0YZ8FQQj6+jX/kOn4scjSegXqKMk0OZBVFwFW4HbxQ26xrWI/RLxXZt5bqY2JXH4ytVsFRIERmhkOQNxm4Yc3nktroMeOYOKn7O7E5H7GlXISmVFNN5KtnVJNZ7oJKL7r4tSz9PSVrsfmm1GTuGJDTTxPRf9OYUu4U1rmX5hdY2IaQpFC5ueABo3ca4YGdVVsfZ6HaXql/kgg3jjuXZV2ZmJMqD7dASaqZDFXvTL5ngXOGdQpYIxVZyY576YhEQp6qie56sfoo1VxOQh1ZRyvfPg3b4bE04CQ6zMQ3OMPG7vr8GOpwBbm0/dT88rkeInikqcSzJrRou+JrFrXf/wXC1JWKjtopt4xdTaFiqtnNU5/Hn9nXvapqimvNyaFV5mZo6RKBmKzB9YexFHDsybAVOD58D4Vr70+Q1lD7VBYwrLgNJk1EXVyZvNK65h+vlK4Px25bzmxMepGx1IMt1v/rJsojgTtpoSz0rOVwHrBptKCzoicqe3okcqRDCbv9CvS0h"
}

terraform {
  backend "local" {}
}

resource "aws_key_pair" "ruben" {
  key_name   = "ruben"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINtxj7RABxXuSkz4bU18e93qExZG0keCgAUOuJQ7R5Ym pax@DESKTOP-5U7MA2B"
}