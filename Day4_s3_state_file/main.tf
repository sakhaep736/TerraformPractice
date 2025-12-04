resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  

  tags = {
    Name = "my-vpc"
  }
}

resource "aws_s3_bucket" "name" {
     bucket = "pranav-sakhare-terraform-bucket-2025-backend-state-file"
}