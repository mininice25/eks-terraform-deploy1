terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "dev/terraform.state"
    bucket         = "mystoragebucke-terraform-backend"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
  }
}
