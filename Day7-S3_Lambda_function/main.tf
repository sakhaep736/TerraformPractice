#forget to attache the police and creation of IAM role to lambda function
#so create the IAM role using terraform and attache the police to it and then use that role ARN in lambda function

resource "aws_lambda_permission" "allow_s3_invoke" {
  statement_id  = "AllowS3InvokeLambda"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.lambda_zip.function_name
  principal     = "s3.amazonaws.com"
  source_arn    = "arn:aws:s3:::naresh-lambda-trigger-bucket"   # NEW BUCKET ARN
}

resource "aws_lambda_function" "lambda_zip" {
  function_name = "lambda_zip_function"
  runtime       = "python3.9"
  handler       = "lambda_function.lambda_handler"
  role          = "arn:aws:iam::225220305311:role/lambda_IAM_admin"

  # Code taken from S3 — NOT from local ZIP
  s3_bucket = "naresh-lambda-trigger-bucket"
  s3_key    = "lambda_code/lambda_function.zip"
}