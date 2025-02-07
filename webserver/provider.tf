terraform {
  backend "s3" {
    bucket         = "state-terraform-onukwuru"
    key            = "webserver/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "state-terraform-onukwuru"  # Optional but recommended for state locking
    encrypt        = true
  }
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "4.67.0"
    }
  }
}

provider "aws" {
  region = var.region
  profile = "default"
}

