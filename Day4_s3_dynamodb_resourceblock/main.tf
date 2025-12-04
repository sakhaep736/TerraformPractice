provider "aws" {
  
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "Pranav-sakhare-terraform-bucket-2025"
}

resource "aws_dynamodb_table" "dynamodb_terraform_state_lock" {
  name = "PranavDynamoDBTable"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}