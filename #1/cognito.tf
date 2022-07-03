
resource "aws_cognito_user_pool" "user_pool_name" {
  name = "user_pool"

  username_attributes = ["email"]

  password_policy {
    minimum_length                   = 10
    require_lowercase                = true
    require_numbers                  = true
    require_symbols                  = true
    require_uppercase                = true
    temporary_password_validity_days = 14
  }

  account_recovery_setting {
    recovery_mechanism {
      name     = "verified_email"
      priority = 1
    }
  }
}

resource "aws_cognito_user_pool_client" "client_name" {
  name         = "client"
  user_pool_id = aws_cognito_user_pool.user_pool_name.id
}

resource "aws_cognito_user_pool_domain" "domain_name" {
  domain       = "domain"
  user_pool_id = aws_cognito_user_pool.user_pool_name.id
}

resource "aws_cognito_resource_server" "resource_server_name" {
  identifier = "https://webaddress.com"
  name       = "resource_server"

  user_pool_id = aws_cognito_user_pool.user_pool_name.id
}