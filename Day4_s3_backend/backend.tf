terraform {
  backend "s3" {
    bucket = "pranav-tf-us-east1-demo-2025-12-04-01"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}