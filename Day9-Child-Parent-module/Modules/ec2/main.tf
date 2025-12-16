resource "aws_instance" "this" {
  ami           = "ami-00ca570c1b6d79f36"  # Replace with a valid AMI
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-EC2"
  }
}

