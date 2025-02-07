terraform {
  backend "s3" {
    encrypt = true
    bucket = "state-terraform"
    key    = "iam_groups/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "state-terraform"
  }
}
