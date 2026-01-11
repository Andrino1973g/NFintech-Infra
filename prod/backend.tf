terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "prod/terraform.state"
    bucket         = "class40n-terraform-backend-bucket"
    region         = "us-east-1"
    dynamodb_table = "N-terraform-state-locking"
  }
}
