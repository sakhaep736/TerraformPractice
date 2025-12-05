resource "aws_instance" "name" {
  ami = "ami-0fa3fe0fa7920f68e"
  instance_type = "t2.micro"
  key_name = "key"
  region = "us-east-1a"
  tags = {
    Name = "test_state_file"
  }
}

resource "aws_s3_bucket" "name" {
  bucket="pranav-tf-us-east1"
  region = "us-east-1a"
}