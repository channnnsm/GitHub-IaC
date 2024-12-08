provider "github" {
  owner = var.organization
  token = var.github_token
}

provider "aws" {
  region = "example-area"
}
