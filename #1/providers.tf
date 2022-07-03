terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.9"
    }
  }
}
provider "aws" {
  region = "eu-west-2"
  # used for testing 
  access_key = ""
  secret_key = ""
}
