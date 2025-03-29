terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "prod/terraform.state"
    bucket         = "dominionclass38b-state-store-terraform-backend"
    region         = "us-west-2"
    dynamodb_table = "terraform-state-locking"
  }

}
