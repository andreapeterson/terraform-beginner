terraform {
  backend "s3" {
    bucket = "terra-test-444"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}