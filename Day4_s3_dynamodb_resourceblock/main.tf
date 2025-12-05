provider "aws" {
  
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "pranav-sakhare-terraform-bucket-2025-2"
  region = "us-east-1"
}

resource "aws_dynamodb_table" "dynamodb_terraform_state_lock" {
  name           = "PranavDynamoDBTable"
  hash_key       = "LockID"
  read_capacity = "20"
  write_capacity = "20"
  region = "us-east-1"
  attribute {
    name = "LockID"
    type = "S"
  }
}