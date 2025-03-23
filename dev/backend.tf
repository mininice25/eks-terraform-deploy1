terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "dev/terraform.state"
    bucket         = "dominionclass39-state-store-terraform-backend"
    region         = "us-east-2"
    dynamodb_table = "terraform-state-locking"
  }
}
