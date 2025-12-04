terraform {
  backend "aws_s3_bucket" {
    bucket="Pranav-sakhare-terraform-bucket-2025-backend-state-file"
    key="terraform.tfstate"
    region="us-east-1"
  }
}