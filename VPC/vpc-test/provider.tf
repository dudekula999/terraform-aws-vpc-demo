terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket         = "reeda-remote-state"
    key            = "vpctest"
    region         = "us-east-1"
    dynamodb_table = "reeda-remote-locking"
  }
}

provider "aws" {
  region = "us-east-1"
}
