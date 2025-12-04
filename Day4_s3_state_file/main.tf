provider "aws" {
  
}

resource "aws_s3_bucket" "name" {
  bucket = "pranav-sakhare-terraform-bucket-2025-backend-state-file"
}