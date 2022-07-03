
#  Contains all DynamoDB resources and policies
resource "aws_dynamodb_table" "dynamodb_name" {
  name         = "db_name"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "hash_attr"
  range_key    = "range_attr"

  attribute {
    name = "hash_attr"
    type = "S"
  }

  attribute {
    name = "range_attr"
    type = "S"
  }

  point_in_time_recovery {
    enabled = true
  }
}

resource "aws_iam_policy" "policy_dynambodb" {
  name        = "test_policy"
  path        = "/"
  description = "My test policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "dynamodb:PutItem",
          "dynamodb:UpdateItem",
          "dynamodb:UpdateTable"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

