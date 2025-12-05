terraform {
   backend "s3" {
     bucket = "selfbucketfor-statefile"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}