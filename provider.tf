terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }

  backend "s3" {
    bucket = "terraform-remote-state-avyan"
    key    = "terraform-multiprovisioners"
    region = "us-east-1"
    dynamodb_table = "remote-state-locking-practice"
  }
}


#provide authentication here
provider "aws" {
  region = "us-east-1"
}