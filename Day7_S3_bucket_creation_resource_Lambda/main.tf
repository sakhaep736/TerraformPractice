resource "aws_s3_bucket" "lambda_bucket" {
  bucket = "naresh-lambda-trigger-bucket"   # <<< Change name if duplicate

  tags = {
    Name = "lambda-event-trigger-bucket"
  }
}

resource "aws_lambda_permission" "allow_s3_invoke" {
  statement_id  = "AllowS3InvokeLambda"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.lambda_zip.function_name
  principal     = "s3.amazonaws.com"
  source_arn    = "arn:aws:s3:::naresh-lambda-trigger-bucket"   # NEW BUCKET ARN
}
