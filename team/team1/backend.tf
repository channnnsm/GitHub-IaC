terraform {
  required_version = ">= 1.0.0, < 2.0.0"
  required_providers {
    github = {
      source  = "example/github"
      version = "~> 5.00"
    }
    aws = {
      source  = "example/aws"
      version = "5.00.0"
    }
  }
  backend "s3" {
    key = "example-abcd1234"
  }
}
