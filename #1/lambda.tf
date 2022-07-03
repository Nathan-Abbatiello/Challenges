# module for lambda commented out, would develop lambda code and point to it in the directory 
#  for source path
#  module "lambda_function" {
#   source = "terraform-aws-modules/lambda/aws"

#   function_name = "get_dynamodb_data"
#   description   = "retrieve dynamodb data"
#   handler       = "index.GetDynamodb_handler"
#   runtime       = "python3.8"

#   source_path = "../src/lambda-GetDynamodb"

# }