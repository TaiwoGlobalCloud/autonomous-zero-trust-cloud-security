data "archive_file" "zero_trust_lambda_zip" {
  type        = "zip"
  source_file = "../lambda_function/lambda_function.py"
  output_path = "${path.module}/lambda_function.zip"
}

data "archive_file" "monitoring_lambda_zip" {
  type        = "zip"
  source_file = "${path.module}/lambda_monitoring/lambda_monitoring.py"
  output_path = "${path.module}/lambda_monitoring.zip"
}