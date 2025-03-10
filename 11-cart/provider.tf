terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }

  backend "s3" {
    bucket = "roboshop-infra-standard-remote-state"
    key    = "roboshop-cart"
    region = "us-east-1"
    dynamodb_table = "roboshop-infra-standard-locking"
  }
}

provider "aws" {
  # Configuration options
  # you can give access key and secret key here, but security problem
  region = "us-east-1"
}