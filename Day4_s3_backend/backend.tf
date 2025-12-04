terraform {
  backend "s3" {
    bucket = "pranav-sakhare-terraform-bucket-2025-backend-state-file"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}