resource "aws_instance" "prod" {
  ami = "ami-0fa3fe0fa7920f68e"
  instance_type = "t2.micro"
  key_name = "key"
  subnet_id = aws_subnet.public_prod.id
  security_groups = [aws_security_group.prod.id]
  associate_public_ip_address = true 
  tags = {
    Name = "prod_instance"
  }
}

resource "aws_instance" "prod2" {
  ami = "ami-0fa3fe0fa7920f68e"
  instance_type = "t2.micro"
  key_name = "key"
  subnet_id = aws_subnet.private_prod.id
  security_groups = [aws_security_group.prod.id]
  associate_public_ip_address = false
  tags = {
    Name = "private_sub"
  }
  
}