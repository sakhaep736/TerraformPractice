resource "aws_instance" "import" {
  ami="ami-0d176f79571d18a8f"
  instance_type="t2.nano"
  key_name="keypair"
  region = "ap-south-1" 
  availability_zone = "ap-south-1a"
  tags = {
    Name = "lifecycle"
  }

#  lifecycle {
#     prevent_destroy = true
#   } 

# lifecycle {
#   create_before_destroy = true
# }

# lifecycle {
#     ignore_changes = [tags]
#   }

} 