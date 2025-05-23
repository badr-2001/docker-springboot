terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
}

provider "aws" {
  region                   = "eu-north-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "badr"
}
