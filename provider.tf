terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.15.0"
    }
  }

  backend "s3" {
    bucket = "robo-shop-remote-state"
    key = "foreach-demo"
    region = "us-east-1"
    dynamodb_table = "robo-shop-locking"
  }
}
provider "aws" {

  region = "us-east-1"
}

