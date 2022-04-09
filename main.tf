#   # NON PROD  Ec2 Instance
# resource "aws_instance" "nweb2" {
#   ami                    = var.image_id
#   instance_type          = var.instance_type
#   availability_zone      = "us-east-1a"
#   vpc_security_group_ids = ["${aws_security_group.NPSG.id}"]
#   key_name               = aws_key_pair.newkey.key_name
#  # subnet_id              = aws_subnet.Non_Prod_subnet.id    

#   tags = {
#     Name = "Tanuj-NON-PROD"
#   }
# }