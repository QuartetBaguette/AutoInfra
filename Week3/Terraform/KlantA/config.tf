provider "aws" {
  profile = "default"
  region  = "us-east-1"
  access_key = "ASIAXRXDESL4DQMGFSKA"
  secret_key = "LniYizU0/dTTLjKj/z0gM6KAThp0CkXq9fiFZ7Ne"
  token = "IQoJb3JpZ2luX2VjEHIaCXVzLXdlc3QtMiJHMEUCIQD1ubtpkBM/P6FzZqVXcV31bnbb/OMFfZBKh30wNVR4uwIgdrBsGSRoep+n0U1cZfvnqbr5CSOREIDDniWHRJfPnNUquwII2///////////ARABGgw1MTkwOTM2NTQyNjQiDPM59DQV83S+okE8syqPAv3EEe+BINVO2UPExutDPJ27zhOxMEfP5pJ8BDKc4RKovP4HiwLRraL30l3xQynNUnAuaM9L9YXlncDsy09bUT5jM4KkNSt+iNjFZ0ptBm3RLGCYbr479+uszs2yyCrJ7ELhcR07MGlOnXvIyWfZXoLoujXSFBoWaf+kvkg9LvuiiO+u2jdIfnLmvqZTPltMS7QyiBpemXH1w1SB5ncPvYolorplQNDG1GfYt6KdQUUTbgkPQ6Bf5ur2zkVJe7LPb399oepprgg+5fEqcENurX97b9mVxwhW7+33l5z+WHp8GplMI7WgsZxSCnMQPeY9XBZ6twpdg+vn+j3ETDbM6WbQ4IgK553s70CTROYibYEwl/u1vwY6nQFyMU00YQ9HDWrswiE1VxjKZUOx+B/619wxscB9QCeSlxb4SieG1w6JWHDSlcSt0oh8YbNSjCKSsLJ2KKdMFmWvETVkAB6L+ZNEW/zpP964CkutYpONHaKpxfdihmyBCAok3QY2iwRKsiYInkXNnHwF8oWWcdO7zYOT0iUy+PS3HkD8RP/zyNOwlXAjECDW2DryGOq2++WSvTVOXQ/2"
}

terraform {
  backend "local" {}
}

resource "aws_key_pair" "ruben" {
  key_name   = "ruben"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINtxj7RABxXuSkz4bU18e93qExZG0keCgAUOuJQ7R5Ym pax@DESKTOP-5U7MA2B"
}