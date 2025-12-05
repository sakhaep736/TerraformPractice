resource "aws_instance" "name" {
  ami = "ami-0fa3fe0fa7920f68e"
  instance_type = "t2.micro"
  key_name = "key"
  region = "us-east-1"
  tags = {
    Name = "test_state_file"
  }
}