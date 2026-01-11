terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "prod/terraform.state"
    bucket         = "dominion-class40-terraform-backend"
    region         = "us-east-2"
    dynamodb_table = "terraform-tooling-state-locking"
  }
}
