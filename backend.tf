terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "statefiles/sc/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "my-terraform-state-lock"
    encrypt        = true
  }
}
