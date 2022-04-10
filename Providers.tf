provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# #creating SSH   Key
# resource "aws_key_pair" "newkey" {
#   key_name   = "./avalanche.pem"

# }