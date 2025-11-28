terraform {
  backend "s3" {
    bucket = "bialy-my-terraform-ci-cd-bucket-example"
    key    = "./terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "bialy-terraform-state-lock-dynamo"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
  
}

provider "aws" {
  region = "eu-central-1"
}