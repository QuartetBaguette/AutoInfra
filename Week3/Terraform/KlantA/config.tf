provider "aws" {
  profile    = "default"
  region     = "us-east-1"
  access_key = "ASIAXRXDESL4D37WE2OQ"
  secret_key = "6Qm121Y/JNMLPs8qo3xLn72+ogxxY1g6/b9tYc4x"
  token      = "IQoJb3JpZ2luX2VjELH//////////wEaCXVzLXdlc3QtMiJHMEUCIQDgByhYMgmSpdRwDFIi9AtX9yFuW+x95PAulw1aq0ggZgIgNY/MwX8teeBFoH1GDExuILsI5ALkh+7OGWGwzzTDj98qsgIIKhABGgw1MTkwOTM2NTQyNjQiDOronHtxhMM3Ii5YwiqPAlg/vjYLtG3x4kkFF4Dy81DNosa9aqNqxuQZ/4gnbvPOtzSIemsQbr7e3IDZFAYEJUFpQmdTSr01NFsqCfm1OTy4tTT6VE9TSs+5ytK8xd5IprDewWG3QH41W/bvZ5F2AMveidxBLA1XipfYhKtXLR6Ut78QMZe+IG1oWqVc49Uwy6mQplmALhHT+DohnISNxd+NB7x4vXw0cJ5wejX6UCE/xciyka+nGE7I3FgFMcMXZ331qhAyLjF1+MkFymbHXr2qhgsPaXPXlAHcI7on5+rm1AVy3UlpzNnhPDX98q+agEI08GW+w6HQ71wENR2KrsCTzXGHD5NwSZUNBF7Wma64GrIOdmt+DiTDRwHy6eAw9OnDvwY6nQEMDKBPxI6fGca6flqZz+2EvGBzNXHwXLPCC6jLS9PHJSkjxWQiQsnUUXDIZqDn0P3RZcFBCCKExpH7TU8YUZNL3DFZnSkxMztxHPtizqfnR049xnqsqVasR+Qt646NYuQGre7Twn5jLon+sLUxIsNlkKCwuaJXH4NZuq6NisJtxk56xfHhut0BYDM8BQ6x26J54TUn4cbJk7XQswj1"
}

terraform {
  backend "local" {}
}

resource "aws_key_pair" "ruben" {
  key_name   = "ruben"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINtxj7RABxXuSkz4bU18e93qExZG0keCgAUOuJQ7R5Ym pax@DESKTOP-5U7MA2B"
}
