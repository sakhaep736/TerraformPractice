terraform {
  backend "s3" {
    bucket="pranav-sakhare-terraform-bucket-2025-2"
    key="terraform.tfstate"
    region="us-east-1"
    dynamodb_table="PranavDynamoDBTable"
  }
}