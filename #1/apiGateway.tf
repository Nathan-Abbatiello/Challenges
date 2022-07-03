resource "aws_api_gateway_rest_api" "api_name" {
  name        = "api"
  description = "rest api for 'name' "
}

resource "aws_api_gateway_resource" "api_resource" {
  parent_id   = aws_api_gateway_rest_api.api_name.root_resource_id
  rest_api_id = aws_api_gateway_rest_api.api_name.id
}

# resource "aws_api_gateway_method" "example" {
#   authorization = "NONE"
#   http_method   = "GET"
#   resource_id   = aws_api_gateway_resource.example.id
#   rest_api_id   = aws_api_gateway_rest_api.example.id
# }

# resource "aws_api_gateway_integration" "example" {
#   http_method = aws_api_gateway_method.example.http_method
#   resource_id = aws_api_gateway_resource.example.id
#   rest_api_id = aws_api_gateway_rest_api.example.id
#   type        = "MOCK"
# }

# resource "aws_api_gateway_stage" "example" {
#   deployment_id = aws_api_gateway_deployment.example.id
#   rest_api_id   = aws_api_gateway_rest_api.example.id
#   stage_name    = "example"
# }