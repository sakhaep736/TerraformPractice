resource "aws_lambda_function" "lambda_zip" {
  function_name = "lambda_zip_function"
  runtime       = "python3.9"
  handler       = "lambda_function.lambda_handler"                    # filename.function-name
  role          = "arn:aws:iam::225220305311:role/lambda_IAM_admin"   # IAM role must exist
  filename      = "lambda.zip"                               # path to your zipped code
} 