terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "roboshop-infra-dev-remote-state"
    key    = "roboshop-vpn"
    region = "us-east-1"
    dynamodb_table = "roboshop-infra-dev-locking"
  }
}

provider "aws" {
  # Configuration options
  # you can give access key and secret key here, but security problem
  region = "us-east-1"
}