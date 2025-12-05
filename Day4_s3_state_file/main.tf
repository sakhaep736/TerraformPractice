resource "aws_instance" "name" {
  ami = "ami-0fa3fe0fa7920f68e"
  instance_type = "t2.micro"
  key_name = "key"
  region = "us-east-1a"
  tags = {
    Name = "Dev"
  }
}

resource "aws_s3_bucket" "name" {
     bucket = "pranav-tf-us-east1-demo-2025-12-04-01"
}  